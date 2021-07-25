import csv
import sys

def emoji(res):
	if res == "passed":
		return ":heavy_check_mark:"
	else:
		return ":x:".ljust(18)

with open(sys.argv[1], encoding="utf16") as csvfile:
	result_tbl = csv.reader(csvfile, delimiter=',')

	header  = "| ID  | Benchmark Name  | Spec File   | Can lift?          | Can sketch?        | Can swizzles?      | Can verify?        |"
	divider = "| :-: | :-------------- | :---------- | :----------------: | :----------------: | :----------------: | :----------------: |"
	
	print (header)
	print (divider)

	row_id = 1
	for row in result_tbl:
		row = [val.strip() for val in row]
		tbl_row = "| " + str(row_id).ljust(3) + " | " +	\
			 row[0].ljust(15) + " | " + \
			 row[1].ljust(11) + " | " + \
			 emoji(row[2]) + \
			 " | :x:                | :x:                | :x:                |"
		print (tbl_row)
		row_id = row_id + 1

print ("\n\n")

with open(sys.argv[1], encoding="utf16") as csvfile:
	result_tbl = csv.reader(csvfile, delimiter=',')

	header  = "| ID  | Benchmark Name  | Spec File   | Lift time |"
	divider = "| :-: | :-------------- | :---------- | :-------: |"
	
	print (header)
	print (divider)

	row_id = 1
	for row in result_tbl:n
		row = [val.strip() for val in row]
		runtime = row[3].rjust(9) if row[2] == "passed" else "-".rjust(9)
		tbl_row = "| " + str(row_id).ljust(3) + " | " +	\
			 row[0].ljust(15) + " | " + \
			 row[1].ljust(11) + " | " + \
			 runtime + " |"
		print (tbl_row)
		row_id = row_id + 1