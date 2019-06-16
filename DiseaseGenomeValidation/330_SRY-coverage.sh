#!/bin/bash
set -euo pipefail
id=DRR002191
bam=${id}.sort.bam
sry="chrY:2786855-2787699"
out=sry.depth.txt

samtools depth  -r ${sry} ${bam} > ${out}
cat ${out} | awk '{sum+=$3} END {print sum/NR}'

