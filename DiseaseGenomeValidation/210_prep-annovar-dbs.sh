#!/bin/bash
set -euo pipefail
annvar=annovar/annotate_variation.pl
avdir=annovar-hg38
bver=hg38

mkdir -p ${avdir}
${annvar} --buildver ${bver} -downdb cytoBand ${avdir}
${annvar} --buildver ${bver} -downdb refGene  --webfrom annovar ${avdir}
${annvar} --buildver ${bver} -downdb avsnp150 --webfrom annovar ${avdir}
${annvar} --buildver ${bver} -downdb gnomad_exome --webfrom annovar ${avdir}
