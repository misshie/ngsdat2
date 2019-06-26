#!/bin/bash
set -euo pipefail
gatk=gatk-4.1.2.0/gatk
id=DRR006760
bami=${id}.sort.dedup.bam
bamo=${id}.sort.dedup.recal.bam
ref=RefHg38/hg38.fasta
recaltab=${id}.sort.dedup.recaltab.txt
known1=dbsnp_146.hg38.vcf.gz
known2=Mills_and_1000G_gold_standard.indels.hg38.vcf.gz

${gatk} BaseRecalibrator \
       --input ${bami} \
       --reference ${ref} \
       --output ${recaltab} \
       --known-sites ${known1} \
       --known-sites ${known2}
