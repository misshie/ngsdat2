#!/bin/bash
set -euo pipefail
id=DRR002191
bam=${id}.sort.bam
alb="chr4:73404349-73421412"
sry="chrY:2786855-2787699"
outalb=alb.depth.txt
outsry=sry.depth.txt

samtools depth  -r ${alb} ${bam} > ${outalb}
samtools depth  -r ${sry} ${bam} > ${outsry}

echo "mean depth of the ALB gene on chromosome 4:"
cat ${outalb} | awk '{sum+=$3} END {print sum/NR}'
echo "mean depth of the SRY gene on chromosome Y:"
cat ${outsry} | awk '{sum+=$3} END {print sum/NR}'

