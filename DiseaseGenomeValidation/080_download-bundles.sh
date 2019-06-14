#!/bin/bash
set -euo pipefail
site=ftp://gsapubftp-anonymous@ftp.broadinstitute.org/bundle/hg38

curl -l -O ${site}/dbsnp_146.hg38.vcf.gz
curl -l -O ${site}/dbsnp_146.hg38.vcf.gz.tbi
curl -l -O ${site}/Mills_and_1000G_gold_standard.indels.hg38.vcf.gz
curl -l -O ${site}/Mills_and_1000G_gold_standard.indels.hg38.vcf.gz.tbi
