#!/bin/bash
set -euo pipefail
id=DRR002191
bam=${id}.sort.dedup.bam
bed=sry.hg38.bed
sry=$'chrY\t2786854\t2787699'

echo ${sry} > ${bed}
bedtools coverage -a ${bam} -b $bed
