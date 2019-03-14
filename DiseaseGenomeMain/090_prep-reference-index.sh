#!/bin/bash
set -euo pipefail
pcd=picard
st=samtools
fasta=hg38.fasta
dict=hg38.dict
${pcd} CreateSequenceDictionary \
       REFERENCE=${fasta} \
       OUTPUT=${dict}
${st} faidx ${fasta}
