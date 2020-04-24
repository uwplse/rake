def genSummaryTable(data):
	benchmarks = set([record[0] for record in data])
	
	table = {}
	for benchmark in benchmarks:
		table[benchmark] = [None] * 16

	categories = {"Halide":0, "Halide Simple": 1, "Manual C": 2, "Manual LLVM": 3}
	
	for record in data:
		benchmark = record[0]
		mode_offset = 8 if record[2] == "HVX64B" else 0;
		category_offset = categories[record[3]]
		table[benchmark][mode_offset + category_offset] = record[4]
		table[benchmark][mode_offset + category_offset + 4] = record[5]

	for benchmark in table:
		print (benchmark + "," + ",".join(table[benchmark]))

fh = open("results.csv", "r")

data = fh.readlines()
data = [line.strip().split(",") for line in data]

summaryTable = genSummaryTable(data)