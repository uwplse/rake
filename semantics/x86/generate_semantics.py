## The goal of this script is to parse instructions from the Intel ISA guide and compile
## them to Rosette/Racket code.

## Most of the following code is borrowed from VeGen: https://github.com/ychen306/vegen

import sys
from textwrap import wrap
from pathlib import Path
from sema_ast import Parameter, Spec
from pseudocode_parser import parse
from pprint import pprint
from compiler import compile, compile_all
import xml.etree.ElementTree as ET

std_funcs = '''
DEFINE MIN(a, b) {
  return a < b ? a : b
}
DEFINE MAX(a, b) {
  return a > b ? a : b
}
'''

# Cpu IDs we care about, everything else is ignored
# Available options:-
# {'adx', 'aes', 'amxbf16', 'amxint8', 'amxtile', 'avx', 'avx2', 'avx5124fmaps', 'avx5124vnniw', 'avx512bf16', 
# 'avx512bitalg', 'avx512bw', 'avx512cd', 'avx512dq', 'avx512er', 'avx512f', 'avx512ifma52', 'avx512pf', 'avx512vbmi',
# 'avx512vbmi2', 'avx512vl', 'avx512vnni', 'avx512vp2intersect', 'avx512vpopcntdq', 'bmi1', 'bmi2', 'cetss', 'cldemote',
# 'clflushopt', 'clwb', 'fma', 'fp16c', 'fsgsbase', 'fxsr', 'gfni', 'invpcid', 'kncni', 'lzcnt', 'mmx', 'monitor',
# 'movbe', 'movdir64b', 'movdiri', 'mpx', 'pclmulqdq', 'pconfig', 'popcnt', 'prefetchwt1', 'rdpid', 'rdrand', 'rdseed',
# 'rdtscp', 'rtm', 'serialize', 'sha', 'sse', 'sse2', 'sse3', 'sse4.1', 'sse4.2', 'ssse3', 'tsc', 'tsxldtrk', 'vaes',
# 'vpclmulqdq', 'waitpkg', 'wbnoinvd', 'xsave', 'xsavec', 'xsaveopt', 'xss'}
targets = ['avx512vnni']

def intersection(lst1, lst2):
  lst3 = [value for value in lst1 if value in lst2]
  return lst3

def parse_specs(spec_f):
  specs = {}
  
  for intrin in ET.parse(spec_f).iter('intrinsic'):
    try:
      spec = get_spec_from_xml(intrin)
      specs[spec.intrin] = spec
    except Exception as e:
      continue
  return specs

def get_spec_from_xml(node):
  global all_targets
  params = []
  imm_width = None
  
  cpuids = [parse_cpuid(cpuid) for cpuid in node.findall('CPUID')]
  
  # Ignore anything that does not match any of our targets
  assert intersection(cpuids, targets)

  print ("Instruction found:", node.attrib['name'])
  #print ("Return type:", node.find('return').attrib['type'])

  # Ignore all instructions/variants that operate on 128 bit
  # and 256 bit registers. For VNNI at least, all instructions
  # are available in 512 bits.
  assert node.find('return').attrib['type'] == '__m512i'

  for param_node in node.findall('parameter'):
    name = param_node.attrib.get('varname', '')
    type = param_node.attrib['type']
    if name == '':
      continue
    is_signed = param_node.attrib.get('etype', '').startswith('SI')
    etype = param_node.attrib.get('etype')
    is_imm = param_node.attrib.get('etype') == 'IMM'
    if is_imm:
      imm_width = int(param_node.attrib.get('immwidth', '8'))
    params.append(Parameter(name, type, etype, is_signed, is_imm))
  intrin = node.attrib['name']
  inst = node.find('instruction')
  inst_form = inst.attrib.get('form', '')
  assert(inst is not None)
  operation = node.find('operation')
  assert(operation is not None)
  spec, binary_exprs = parse(operation.text)
  retvars = node.findall('return')
  assert(len(retvars) == 1)
  retvar = Parameter(retvars[0].attrib['varname'], retvars[0].attrib['type'], retvars[0].attrib['etype'], False, False)
  xed = inst.attrib.get('xed')
  desc = '\n'.join([";; " + sentence for sentence in wrap(node.find('description').text, width=100)])
  return Spec(
      intrin=intrin,
      inst=inst.attrib.get('name'),
      spec=spec,
      params=params,
      retvar=retvar,
      cpuids=cpuids,
      configs={}, # by default nothing is configured
      inst_form=inst_form,
      imm_width=imm_width,
      xed=xed,
      binary_exprs=binary_exprs,
      desc = desc)

def parse_cpuid(cpuid):
  cpuid = cpuid.text.lower().replace('_', '')
  if '/' in cpuid:
    return cpuid.split('/')[0]
  return cpuid

specs = parse_specs(Path(__file__).parent / 'data-3.5.4.xml')

print ("\nTotal # of instructions found: ", len(specs), "\n")

#pprint (specs['_mm512_dpbusd_epi32'].spec)

#print ("\n")

#print (compile(specs['_mm512_dpbusd_epi32']))

compile_all(specs)