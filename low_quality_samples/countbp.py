# !/usr/bin/env python3
# Created: 2024 Feb 01
# Updated: 2024 Feb 01
# Modified by: Ariane Thomas

import glob

filelist = glob.glob("JR*_angsd_2_bpcount.fasta")

for x in filelist:
	name = x.split('_')
	
	with open(x, 'r') as file:
		data = file.read().replace('\n', '')
		count = len(data)
		print(name[0], count) 
