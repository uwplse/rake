import sys
from collections import namedtuple
from enum import Enum

# New types for racket
Vector = namedtuple('Vector', ['length', 'etype'])

class Types(Enum):
    dependent = 0
    bool = 1
    int = 2
    int8_t = 3
    int16_t = 4
    int32_t = 5
    int64_t = 6
    uint8_t = 7
    uint16_t = 8
    uint32_t = 9
    uint64_t = 10

def to_rkt_type(type, etype):
  # Masks are modelled as boolean vectors
  if type == '__mmask8': 
    return Vector(8, Types.bool)
  elif type == '__mmask16':
    return Vector(16, Types.bool)
  elif type == '__mmask32':
    return Vector(32, Types.bool)
  elif type == '__mmask64':
    return Vector(64, Types.bool)
  
  # __m128i, __m256i and __m512i are modelled as
  # integer vectors, with elements of type 'etype'
  elif type == '__m512i':
    if etype == 'SI8':
      return Vector(128, Types.int8_t)
    elif etype == 'SI16':
      return Vector(64, Types.int16_t)
    elif etype == 'SI32':
      return Vector(16, Types.int32_t)
    elif etype == 'UI8':
      return Vector(128, Types.uint8_t)
    elif etype == 'UI16':
      return Vector(64, Types.uint16_t)
    elif etype == 'UI32':
      return Vector(16, Types.uint32_t)
    else:
      print(etype)
      sys.exit(0)
  else:
    print(type)
    sys.exit(0)

def to_rkt_op(op, in_ty):
  if op == '+': 
    return op if in_ty == Types.int else 'bvadd'
  if op == '-': 
    return op if in_ty == Types.int else 'bvsub'
  if op == '*': 
    return op if in_ty == Types.int else 'bvmul'
  else:
    print("NYI: binary op", op)
    sys.exit(0)

## List of built-ins
builtins = {
  'Saturate32': ('avx:builtins:sat32', Types.int32_t),
  'Saturate16': ('avx:builtins:sat16', Types.int16_t),
  'Saturate8':  ('avx:builtins:sat8', Types.int8_t),

  'SaturateU32': ('avx:builtins:satu32', Types.uint32_t),
  'SaturateU16': ('avx:builtins:satu16', Types.uint16_t),
  'SaturateU8':  ('avx:builtins:satu8', Types.uint8_t),

  'ZeroExtend16': ('avx:builtins:sat32', Types.uint16_t),
  'ZeroExtend32': ('avx:builtins:sat32', Types.uint32_t),
  'ZeroExtend64': ('avx:builtins:sat32', Types.uint64_t),

  'SignExtend16': ('avx:builtins:sat32', Types.int16_t),
  'SignExtend32': ('avx:builtins:sat32', Types.int32_t),
  'SignExtend64': ('avx:builtins:sat32', Types.int64_t),

  'Signed' : ('avx:builtins:signed', Types.dependent)
}

#'APPROXIMATE': lambda args, _: args[0],
#'ABS': builtin_abs,
#'concat': builtin_concat,
#'PopCount': builtin_popcount,
#'POPCNT': builtin_popcount,
#'select': builtin_select,

def get_fn_type(name, args):
  if name == 'avx:builtins:signed':
    in_ty = args[0][1]
    if in_ty == Types.uint8_t:
      return Types.int8_t
    elif in_ty == Types.uint16_t:
      return Types.int16_t
    elif in_ty == Types.uint32_t:
      return Types.int32_t
    else:
      print("Unexpected input type", in_ty, "for fn", name)
      sys.exit(0)
  else:
    print("Unexpected input to get_fn_type", name)
    sys.exit(0)

def get_setter_fn(vec_type, idx):
  if vec_type.etype == Types.int8_t:
    return '(set-__m512i_si8-v{}! x -1)'.format(idx)
  elif vec_type.etype == Types.int16_t:
    return '(set-__m512i_si16-v{}! x -1)'.format(idx)
  elif vec_type.etype == Types.int32_t:
    return '(set-__m512i_si32-v{}! x -1)'.format(idx)
  elif vec_type.etype == Types.uint8_t:
    return '(set-__m512i_ui8-v{}! x -1)'.format(idx)
  elif vec_type.etype == Types.uint16_t:
    return '(set-__m512i_ui16-v{}! x -1)'.format(idx)
  elif vec_type.etype == Types.uint32_t:
    return '(set-__m512i_ui32-v{}! x -1)'.format(idx)
