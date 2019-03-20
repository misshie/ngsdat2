#!/bin/bash
set -euo pipefail
id=DRR002191
bam1=${id}.bam
bam2=${id}.sort.bam

samtools sort ${bam1} > ${bam2}
samtools index ${bam2}
