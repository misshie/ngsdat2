#!/bin/bash
set -euo pipefail
pcd=picard
st=samtools
fasta=RefHg38/hg38.fasta
dict=RefHg38/hg38.dict

${pcd} CreateSequenceDictionary \
       REFERENCE=${fasta} \
       OUTPUT=${dict}
${st} faidx ${fasta}
