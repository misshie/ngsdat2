#!/bin/sh
out="output.fasta"
urls=(
    "http://togows.org/api/ucsc/hg19/chr1:602,345-602,500.fasta"
    "http://togows.org/api/ucsc/hg38/chr1:602,345-602,500.fasta"
)
for url in ${urls[*]}; do
    curl ${url} >> ${out}
done
