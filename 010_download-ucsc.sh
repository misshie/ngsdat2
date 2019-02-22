#!/bin/bash
refd=RefHg38
u1="ftp://hgdownload.soe.ucsc.edu"
u2="goldenPath/hg38/bigZips/analysisSet"
u3="hg38.analysisSet.chroms.tar.gz"
mkdir -p ${refd}
pushd ${refd}
curl -O ${u1}/${u2}/${u3}
tar zxvf ${u3}
popd
