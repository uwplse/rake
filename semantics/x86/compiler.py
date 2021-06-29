import sys
import copy
from sema_ast import *
from pprint import pprint
from intrinsic_types import *

## Environment for tracking program state
class Environment:
  def __init__(self):
    self.vars = []
    self.vars.append({})
    
  def push_env(self):
    self.vars.append(copy.deepcopy(self.vars[-1]))

  def pop_env(self):
    self.vars.pop()

  def define(self, name, type, value=None):
    assert name not in self.vars[-1]
    self.vars[-1][name] = type, value
    
  def undef(self, name):
    del self.vars[-1][name]

  def has(self, name):
    return name in self.vars[-1]

  def get_type(self, name):
    ty, _ = self.vars[-1][name]
    return ty

  def set_type(self, name, ty):
    _, val = self.vars[-1][name]
    self.vars[-1][name] = ty, val

  def get_value(self, name):
    _, val = self.vars[-1][name]
    if val is None:
      return name
    else:
      return val

  def set_value(self, name, value):
    type = self.get_type(name)
    self.vars[-1][name] = type, value

  def print(self):
    pprint (self.vars)

## Hanlders for various expression types
def compile_number(n, env, expected_ty):
  if (expected_ty == Types.int):
    return n.val, Types.int
  elif (expected_ty == Types.int8_t):
    return '(bv {val} 8)'.format(val=n.val), Types.int8_t
  elif (expected_ty == Types.int16_t):
    return '(bv {val} 16)'.format(val=n.val), Types.int16_t
  elif (expected_ty == Types.int32_t):
    return '(bv {val} 32)'.format(val=n.val), Types.int32_t
  elif (expected_ty == Types.uint8_t):
    return '(bv {val} 8)'.format(val=n.val), Types.uint8_t
  elif (expected_ty == Types.int16_t):
    return '(bv {val} 16)'.format(val=n.val), Types.uint16_t
  elif (expected_ty == Types.int32_t):
    return '(bv {val} 32)'.format(val=n.val), Types.uint32_t
  else:
    #print ('Warning: compiling number with type unknown ({val}, {ty})'.format(val=n.val, ty=expected_ty))
    return n.val, Types.dependent

def compile_var(var, env, expected_ty):
  if var.name == 'undefined':
    return None, None
  if not env.has(var.name) and not expected_ty is None:
    env.define(var.name, type=expected_ty)
    assert env.has(var.name)
  elif not env.has(var.name):
    env.define(var.name, type=Types.dependent)
    assert env.has(var.name)
  val = env.get_value(var.name)
  ty = env.get_type(var.name)
  return val, ty

def compile_lookup(lookup_expr, env, expected_ty):
  return compile_expr(lookup_expr.obj, env, expected_ty)
  
def compile_bit_slice(bit_slice, env, expected_ty):
  lo, _ = compile_expr(bit_slice.lo, env, Types.int)

  # special case for the magic variable 'MAX' 
  if (type(bit_slice.hi) == Var and bit_slice.hi.name == 'MAX'):
    print ("NYI, handling for special magic var: MAX")
    sys.exit(0)
  else:
    hi, _ = compile_expr(bit_slice.hi, env, Types.int)

  bv, bv_ty = compile_expr(bit_slice.bv, env, expected_ty)

  if isinstance(bv_ty, Vector):
    if bv_ty.etype == Types.bool:
      assert lo == hi
      return "(get-elem {name} {idx})".format(name = bv, idx = lo), bv_ty.etype
    elif bv_ty.etype == Types.int8_t:
      assert lo == hi
      return "(get-elem {name} {idx})".format(name = bv, idx = lo), bv_ty.etype
    elif bv_ty.etype == Types.int16_t:
      assert lo == hi
      return "(get-elem {name} {idx})".format(name = bv, idx = lo), bv_ty.etype
    elif bv_ty.etype == Types.int32_t:
      assert lo == hi
      return "(get-elem {name} {idx})".format(name = bv, idx = lo), bv_ty.etype
    elif bv_ty.etype == Types.uint8_t:
      assert lo == hi
      return "(get-elem {name} {idx})".format(name = bv, idx = lo), bv_ty.etype
    elif bv_ty.etype == Types.uint16_t:
      assert lo == hi
      return "(get-elem {name} {idx})".format(name = bv, idx = lo), bv_ty.etype
    elif bv_ty.etype == Types.uint32_t:
      assert lo == hi
      return "(get-elem {name} {idx})".format(name = bv, idx = lo), bv_ty.etype
    else:
      print ("NYI: slicing a vec of type", bv_ty.etype)
      sys.exit(0)
  else:
    print ("NYI: slicing a non-vec type", bit_slice)
    sys.exit(0)

def compile_binary_expr(binary_expr, env, expected_ty):
  # special case for expression like "a == b == c == d"
  #if expr.op == '==':
    #chained_operands = []
    #collect_chained_cmpeq(expr, chained_operands)
    #vals = [compile_expr(operand, env, deref=True) for operand in chained_operands]
    #v, _ = vals[0]
    #equalities = []
    #for v2, _ in vals[1:]:
      #v1, v2 = match_bitwidth(v, v2)
      #equalities.append(v1 == v2)
    #all_equal = z3.And(equalities)
    #return bool2bv(all_equal), IntegerType(1)

  a, a_ty = compile_expr(binary_expr.a, env, expected_ty)
  b, b_ty = compile_expr(binary_expr.b, env, expected_ty)

  # We want to know if this condition is violated in any of the specs
  #print(a, b, a_ty, b_ty)
  #assert a_ty == b_ty

  op = to_rkt_op(binary_expr.op, a_ty)

  return "({op} {a} {b})".format(op = op, a=a, b=b), a_ty

def compile_call(call, env, expected_ty):
  assert type(call.func) == str

  # calling a builtin
  if call.func in builtins:
    name, ret_ty = builtins[call.func]

    # compute all the arguments
    args = [compile_expr(arg, env) for arg in call.args]

    # If output type depends on input type, use special
    # handler to determine it
    if ret_ty == Types.dependent:
      ret_ty = get_fn_type(name, args);

    args = [arg[0] for arg in args]

    return '({fn_name} {fn_args})'.format(fn_name = name, fn_args=" ".join(args)), ret_ty

  print ("NYI: Builtin function ", call.func)
  sys.exit(0)

def compile_expr(expr, env, expected_ty=None):
  expr_ty = type(expr)
  slice_or_val = compilers[expr_ty](expr, env, expected_ty)
  return slice_or_val

## Hanlders for various statement types
def compile_update(update_stmt, env):
  if isinstance(update_stmt.lhs, Lookup):
    # We are writing to a variable
    lhs, lhs_ty = compile_expr(update_stmt.lhs.obj, env)
    rhs, rhs_ty = compile_expr(update_stmt.rhs, env, lhs_ty)

    implicit_var_def = False
    if lhs_ty == Types.dependent:
      implicit_var_def = True
      env.set_type(lhs, rhs_ty)
      assert rhs_ty != Types.dependent
      lhs_ty = rhs_ty

    ## If types need to be propogated, we want to know.
    ## For now we make the assumption:
    
    assert lhs_ty == rhs_ty, "Type mismatch in update statement {} {} {}".format(lhs_ty, rhs_ty, update_stmt)

    if implicit_var_def:
      return '(define {lhs} {rhs})'.format(lhs=lhs, rhs=rhs)
    else:
      return '(set! {lhs} {rhs})'.format(lhs=lhs, rhs=rhs)

  elif isinstance(update_stmt.lhs, BitSlice):
    # We are writing to a vector
    lhs, lhs_ty = compile_expr(update_stmt.lhs.bv, env)
    rhs, rhs_ty = compile_expr(update_stmt.rhs, env, lhs_ty)
    
    assert update_stmt.lhs.hi == update_stmt.lhs.lo
    write_idx, idx_ty = compile_expr(update_stmt.lhs.hi, env, Types.int)
    
    assert lhs_ty != Types.dependent

    return '(set-elem! {lhs} {write_idx} {rhs})'.format(lhs=lhs, write_idx=write_idx, rhs=rhs)

def compile_if(if_stmt, env):
  cond, _ = compile_expr(if_stmt.cond, env, Types.bool)
  
  env.push_env();
  cons_stmts = '\n\t\t'.join([compile_stmt(stmt, env) for stmt in if_stmt.then])
  env.pop_env();
  env.push_env();
  altr_stmts = '\n\t\t'.join([compile_stmt(stmt, env) for stmt in if_stmt.otherwise])
  env.pop_env();
  
  return '(cond\n\t[{cond}\n\t\t{cons_stmts}]\n\t[else\n\t\t{altr_stmts}])'.format(cond=cond, cons_stmts=cons_stmts, altr_stmts=altr_stmts)

def compile_for(for_stmt, env):
  # Unroll the loop
  inc = lambda x: x + 1
  dec = lambda x: x - 1
  next = inc if for_stmt.inc else dec
  
  ## Assume that these will always be constant integers
  begin, _ = compile_expr(for_stmt.begin, env, Types.int)
  end, _ = compile_expr(for_stmt.end, env, Types.int)

  env.define(for_stmt.iterator, Types.int)

  statements = []
  for idx in range (begin, end+1):
    env.set_value(for_stmt.iterator, idx)
    for stmt in for_stmt.body:
      statements.append(compile_stmt(stmt, env))

  return "\n".join(statements)

def compile_stmt(stmt, env):
  stmt_ty = type(stmt)
  return compilers[stmt_ty](stmt, env)

def declare_var(var):
  init_vals = ' 0'
  if var.type == '__m512i':
    if var.etype == 'SI32' or var.etype == 'UI32':
      init_vals = init_vals * 16
    elif var.etype == 'SI16' or var.etype == 'UI16':
      init_vals = init_vals * 32
    elif var.etype == 'SI8' or var.etype == 'UI8':
      init_vals = init_vals * 64
    else:
      print("NYI: declaring vars of type:", var.type, var.etype)
      sys.exit(0)
  else:
    print("NYI: declaring vars of type:", var.type, var.etype)
    sys.exit(0)

  return '(define {vname} ({var_type}_{elem_type} {init_vals}))'.format(
    vname = var.name,
    var_type = var.type,
    elem_type = var.etype.lower(),
    init_vals = init_vals
    )

## Entry points for compilation
def compile (intrinsic):
  # Generate environment
  env = Environment()
  for param in intrinsic.params:
    name = param.name
    rkt_type = to_rkt_type(param.type, param.etype)
    env.define(name, rkt_type)
  rkt_type = to_rkt_type(intrinsic.retvar.type, intrinsic.retvar.etype)
  env.define(intrinsic.retvar.name, rkt_type)
  
  # Compile all statements
  statements = []
  for stmt in intrinsic.spec[0:-1]:
    statements.append(compile_stmt(stmt, env))

  return '\n'.join(statements)

def compile_all(intrinsics):
  decls = []

  # First generate all necessary type declarations
  for name, spec in intrinsics.items():
    params = " ".join([p.name for p in spec.params])
    decl = '(struct {inst_name} ({inst_params}) #:transparent)'.format(
        inst_name = name,
        inst_params = params
      )
    
    decls.append(decl)

  print('\n'.join(decls), "\n")

  # Then generate match cases for the interpreter
  compiled_intrinsics = []
  for name, spec in intrinsics.items():
    print ("Compiling intrinsic:", name)

    params = " ".join([p.name for p in spec.params])
    match_sig = '({inst_name} {inst_params})'
    var_decls = declare_var(spec.retvar)
    body = compile(spec)
    
    impl = '{desc}\n[({name} {args})\n\t{decls}\n\t{stmts}\n\t{retval}]'

    compiled_intrinsics.append(
      impl.format(
        desc = spec.desc,
        name = name,
        args = params,
        decls = var_decls,
        stmts = body,
        retval = spec.retvar.name
      ))

  print('\n\n'.join(compiled_intrinsics))


compilers = {
  Var: compile_var,
  Number: compile_number,
  Lookup: compile_lookup,
  BitSlice: compile_bit_slice,
  BinaryExpr: compile_binary_expr,
  Call: compile_call,
  Update: compile_update,
  If: compile_if,
  For: compile_for,
  #FuncDef: compile_func_def,
  #UnaryExpr: compile_unary_expr,
  #Select: compile_select,
  #Match: compile_match,
  #While: compile_while,
  #PseudoStmt: lambda *_:None
}

  #[(vcombine Vu Vv)
#   (destruct* ((interpret Vu) (interpret Vv))
     #[((i8x128 v0) (i8x128 v1)) (i8x128x2 (lambda (i) (v1 i)) (lambda (i) (v0 i)))]
     #[((u8x128 v0) (u8x128 v1)) (u8x128x2 (lambda (i) (v1 i)) (lambda (i) (v0 i)))]
     #[((i16x64 v0) (i16x64 v1)) (i16x64x2 (lambda (i) (v1 i)) (lambda (i) (v0 i)))]
     #[((u16x64 v0) (u16x64 v1)) (u16x64x2 (lambda (i) (v1 i)) (lambda (i) (v0 i)))]
     #[((i32x32 v0) (i32x32 v1)) (i32x32x2 (lambda (i) (v1 i)) (lambda (i) (v0 i)))]
     #[((u32x32 v0) (u32x32 v1)) (u32x32x2 (lambda (i) (v1 i)) (lambda (i) (v0 i)))])]