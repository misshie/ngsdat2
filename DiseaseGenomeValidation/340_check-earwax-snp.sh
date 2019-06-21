#!/bin/bash
set -euo pipefail
gatk=gatk-4.1.2.0/gatk
ref=RefHg38/hg38.fasta
id=DRR002191
bami=${id}.sort.dedup.recal.bam
dbsnp=dbsnp_146.hg38.vcf.gz
pad=100
vcf=earwax.vcf
javaopt="-Xmx4g"
earwax="chr16:48224287-48224287"

${gatk} --java-options ${javaopt} \
	HaplotypeCaller \
	-I ${bami} \
	-O ${vcf} \
	-R ${ref} \
	-L ${earwax} \
	-ip ${pad} \
	--ERC BP_RESOLUTION \
	--dbsnp ${dbsnp} \
	--sample-name ${id}

echo
cat ${vcf} | egrep $'^\#CHROM|chr16\t48224287'
