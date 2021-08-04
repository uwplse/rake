import sys
import matplotlib.pyplot as plt
import numpy

from pprint import pprint

runtime_data = [[t.strip() for t in line.split("\t")] for line in open(sys.argv[1], "r").readlines()]

# Filter out records with missing data
runtime_data = list(filter(lambda r: not "-" in r, runtime_data))

#pprint (runtime_data)

# Generate bar chart
labels = ['G1', 'G2', 'G3', 'G4', 'G5']
men_means = [20, 34, 30, 35, 27]
women_means = [25, 32, 34, 20, 25]

x = numpy.arange(len(labels))  # the label locations
width = 0.35  # the width of the bars

fig, ax = plt.subplots()
rects1 = ax.bar(x - width/2, men_means, width, label='Men')
rects2 = ax.bar(x + width/2, women_means, width, label='Women')

# Add some text for labels, title and custom x-axis tick labels, etc.
ax.set_ylabel('Scores')
ax.set_title('Scores by group and gender')
ax.set_xticks(x)
ax.set_xticklabels(labels)
ax.legend()

ax.bar_label(rects1, padding=3)
ax.bar_label(rects2, padding=3)

fig.tight_layout()

fig.set_size_inches(w=2.7747, h=2)

fig.savefig('test.pgf', transparent=True, dpi=300, bbox_inches="tight")