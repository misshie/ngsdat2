#!/bin/bash
set -euo pipefail
id=DRR006760
bam1=${id}.bam
bam2=${id}.sort.bam

samtools sort ${bam1} > ${bam2}
samtools index ${bam2}
