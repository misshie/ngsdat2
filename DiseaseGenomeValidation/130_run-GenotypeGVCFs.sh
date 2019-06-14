#!/bin/bash
set -euo pipefail
gatk=gatk-4.1.0.0/gatk
ref=RefHg38/hg38.fasta
id=DRR002191
bait=ccds.sort.bed
pad=100
gvcf=${id}.g.vcf.gz
vcf=${id}.both.vcf.gz
javaopt="-Xmx4g"

${gatk} --java-options ${javaopt} \
	GenotypeGVCFs \
	-R ${ref} \
	-V ${gvcf} \
	-O ${vcf} \
	-L ${bait} \
	-ip ${pad}





