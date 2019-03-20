#!/bin/bash
set -euo pipefail
site="ftp://ftp.ddbj.nig.ac.jp"
path1=ddbj_database/dra/sralite/ByExp/litesra
path2=DRX/DRX001/DRX001619/DRR002191
path3=DRR002191.sra
suffix=__TEMP__

curl ${site}/${path1}/${path2}/${path3} -o ${path3}${suffix} \
     && mv ${path3}${suffix} ${path3}
ls -lh ${path3}
