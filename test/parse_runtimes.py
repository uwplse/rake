import sys
from pprint import pprint

stats = {'lift_queries' : 0, 'template_queries' : 0, 'swizzle_queries' : 0, 'verif_queries' : 0, 'lift_time' : 0, 'template_time' : 0, 'swizzle_time' : 0, 'verif_time': 0, 'total_synth_time': 0}

f = open(sys.argv[1], "r")
for line in f.readlines():
	r = line.strip().split(":")
	q_type = r[0]
	q_time = r[1]
	assert q_time.endswith(" ms")
	q_time = q_time[:-3]
	q_time = int(q_time.strip())
	if q_type == 'Lifting query':
		stats['lift_queries'] += 1
		stats['lift_time'] += q_time
	elif q_type == 'Lowering query':
		stats['template_queries'] += 1
		stats['template_time'] += q_time
	elif q_type == 'Swizzling query':
		stats['swizzle_queries'] += 1
		stats['swizzle_time'] += q_time
	elif q_type == 'Verification query':
		stats['verif_queries'] += 1
		stats['verif_time'] += q_time
	stats['total_synth_time'] += q_time

pprint (stats)