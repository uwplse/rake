import sys
from pprint import pprint

runtime_files_dir = sys.argv[1]
st_idx = int(sys.argv[2])
end_idx = int(sys.argv[3])

runtime_files = [(runtime_files_dir + 'expr_{id}.runtimes').format(id = i) for i in range(st_idx, end_idx+1)]

for runtime_file in runtime_files:
	stats = {'lift_queries' : 0, 'template_queries' : 0, 'swizzle_queries' : 0, 'verif_queries' : 0, 'lift_time' : 0, 'template_time' : 0, 'swizzle_time' : 0, 'verif_time': 0, 'total_synth_time': 0}
	
	f = open(runtime_file, "r")
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

	print ('{lq}, {lt}, {tq}, {tt}, {sq}, {st}, {ft}'.format(
		lq = stats['lift_queries'],
		lt = round(stats['lift_time'] / 1000),
		tq = stats['template_queries'],
		tt = round(stats['template_time'] / 1000),
		sq = stats['swizzle_queries'],
		st = round(stats['swizzle_time'] / 1000),
		ft = round(stats['total_synth_time'] / 1000),
		))