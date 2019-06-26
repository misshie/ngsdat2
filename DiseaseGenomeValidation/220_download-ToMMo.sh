#!/bin/sh
set -euo pipefail
u1=https://jmorp.megabank.tohoku.ac.jp/dj1/datasets
u2=tommo-3.5kjpnv2-20181105open-af_snvindelall/files
datad=annovar-hg38/Downloads
pre=tommo-3.5kjpnv2-20181105open

mkdir -p ${datad}
pushd ${datad}
fs=(
    ${pre}-af_snvall-autosome.vcf.gz
    ${pre}-af_snvall-autosome.vcf.gz.tbi
    ${pre}-af_indelall-autosome.vcf.gz
    ${pre}-af_snvall-chrX_PAR2.vcf.gz.tbi
    ${pre}-af_indelall-chrX_PAR2.vcf.gz
    ${pre}-af_indelall-chrX_PAR2.vcf.gz.tbi
    ${pre}-af_snvall-chrX_PAR3.vcf.gz
    ${pre}-af_snvall-chrX_PAR3.vcf.gz.tbi
    ${pre}-af_indelall-chrX_PAR3.vcf.gz
    ${pre}-af_indelall-chrX_PAR3.vcf.gz.tbi
    ${pre}-af_snvall-chrMT.vcf.gz
    ${pre}-af_snvall-chrMT.vcf.gz.tbi
)
for f in ${fs[@]}; do
    curl -O ${u1}/${u2}/${f}
done
