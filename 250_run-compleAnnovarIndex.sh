#!/bin/bash
set -euo pipefail
d=20181105open
pushd annovar-hg38
caim=../Scripts/compileAnnovarIndex.pl
perl ${caim} \
     tommo-3.5kjpnv2-${d}-af_snvall.INFO.genericdb 1000 \
     > tommo-3.5kjpnv2-${d}-af_snvall.INFO.genericdb.idx
perl ${caim} \
     tommo-3.5kjpnv2-${d}-af_snvall.MAF.genericdb 1000 \
     > tommo-3.5kjpnv2-${d}-af_snvall.MAF.genericdb.idx
perl ${caim} \
     tommo-3.5kjpnv2-${d}-af_indelall.INFO.genericdb 1000 \
     > tommo-3.5kjpnv2-${d}-af_indelall.INFO.genericdb.idx
perl ${caim} \
     tommo-3.5kjpnv2-${d}-af_indelall.MAF.genericdb 1000 \
     > tommo-3.5kjpnv2-${d}-af_indelall.MAF.genericdb.idx
popd
