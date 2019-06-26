#!/bin/bash
set -euo pipefail
bwa=bwa-0.7.17/bwa
id=DRR006760
fq1=${id}_1.fastq.gz
fq2=${id}_2.fastq.gz
ref=RefHg38/hg38.fasta
rg="@RG\tID:${id}\tSM:${id}\tPL:illumina\tLB:${id}"

${bwa} mem \
       -R ${rg} \
       ${ref} \
       ${fq1} ${fq2} \
    | samtools view -@4 -b -1 - > ${id}.bam

