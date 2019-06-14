#!/bin/bash
set -euo pipefail
pcd=picard
id=DRR002191
vcfs=${id}.snv.pass.vcf.gz
vcfi=${id}.indel.pass.vcf.gz
vcfo=${id}.all.pass.vcf.gz
${pcd} MergeVcfs \
       INPUT=${vcfs} \
       INPUT=${vcfi} \
       OUTPUT=${vcfo}
