#!/bin/bash
set -euo pipefail
gatk=../gatk-4.1.0.0/gatk
ref=hg38.fasta
id=DRR006760
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





