##### Solution - Q9 ####
# Read template lengths
tlens = [abs(int(item.strip())) for item in open(os.path.join(HOMEDIR, "child_template_lengths.txt")).readlines()]

# Filter outliers (recommend to filter things bigger than 2*median value)
med = np.median(tlens)
tlens = [item for item in tlens if item < 2*med]

print(med)
print(np.mean(tlens))
print(np.sqrt(np.var(tlens)))
