#!/bin/bash
set -euo pipefail
site="ftp://ftp.ddbj.nig.ac.jp"
path1=ddbj_database/dra/sralite/ByExp/litesra
path2=DRX/DRX001/DRX001619/
path3=DRR002191/DRR002191.sra
curl -O ${site}/${path1}/${path2}/${path3}
ls -lh ${path3}
