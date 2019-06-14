#!/bin/bash
refd=RefHg38
decoy=decoyJRGv2.fasta
d=hg38.analysisSet.chroms
out=hg38.fasta

pushd ${refd}
cat \
    $d/chr1.fa $d/chr2.fa $d/chr3.fa $d/chr4.fa $d/chr5.fa \
    $d/chr6.fa $d/chr7.fa $d/chr8.fa $d/chr9.fa $d/chr10.fa \
    $d/chr11.fa $d/chr12.fa $d/chr13.fa $d/chr14.fa $d/chr15.fa \
    $d/chr16.fa $d/chr17.fa $d/chr18.fa $d/chr19.fa $d/chr20.fa \
    $d/chr21.fa $d/chr22.fa $d/chrX.fa $d/chrY.fa $d/chrM.fa \
    $d/chrEBV.fa ../$decoy > $out
popd
