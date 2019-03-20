#!/bin/bash
set -euo pipefail
fdump=sratoolkit.2.9.4-mac64/bin/fastq-dump
sra=DRR002191.sra
fq1=DRR002191_1.fastq
fq2=DRR002191_2.fastq
{fdump} --split-files ${sra}
gzip ${fq1}
gzip ${fq2}
