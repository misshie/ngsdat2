#!/bin/bash
set -euo pipefail
gatk=gatk-4.1.2.0/gatk
ref=RefHg38/hg38.fasta
id=DRR006760
bami=${id}.sort.dedup.recal.bam
bait=ccds.sort.bed
dbsnp=dbsnp_146.hg38.vcf.gz
pad=100
gvcf=${id}.g.vcf.gz
javaopt="-Xmx4g"

${gatk} --java-options ${javaopt} \
	HaplotypeCaller \
	-I ${bami} \
	-O ${gvcf} \
	-R ${ref} \
	-L ${bait} \
	-ip ${pad} \
	--ERC GVCF \
	--dbsnp ${dbsnp} \
	--sample-name ${id}
