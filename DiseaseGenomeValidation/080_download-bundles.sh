#!/bin/bash
set -euo pipefail
site=ftp://gsapubftp-anonymous@ftp.broadinstitute.org/bundle/hg38

curl -v -L -O ${site}/dbsnp_146.hg38.vcf.gz
curl -v -L -O ${site}/dbsnp_146.hg38.vcf.gz.tbi
curl -v -L -O ${site}/Mills_and_1000G_gold_standard.indels.hg38.vcf.gz
curl -v -L -O ${site}/Mills_and_1000G_gold_standard.indels.hg38.vcf.gz.tbi
