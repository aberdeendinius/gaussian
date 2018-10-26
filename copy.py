import os
from shutil import copyfile
files = [f.split('.')[0] for f in os.listdir('.') if f.endswith('.com')]
for f in files:
	copyfile('sample_slurm.sh',os.path.join(f,'sample_slurm.sh'))
	print os.listdir(f)


