#!/bin/zsh
d=20181105open
dl=Downloads
separator=../Scripts/tommo_separate_alternatives.rb

pushd annovar-hg38
# AF
echo "create tommo-3.5kjpnv2-${d}-af_indelall.MAF.genericdb using autosome.vcf, chrX_PAR3.vcf and chrMT.vcf"
foreach vcf in ${dl}/tommo-3.5kjpnv2-${d}-af_indelall-{autosome,chrX_PAR3}.vcf.gz
  gunzip -c  ${vcf} | perl -F"\t" -lane '$F[7] =~ s/.*?(AF=0.\d+|AF=0.\d+,0.\d+|AF=0.\d+,0.\d+,0.\d+|AF=1);.*/$1/; print join("\t", @F[0,1,1,3,4], $F[7])'
end | grep -v "^#" > tommo-3.5kjpnv2-${d}-af_indelall.MAF.genericdb.org
${separator} tommo-3.5kjpnv2-${d}-af_indelall.MAF.genericdb.org | perl -pe 's/AF=//' > tommo-3.5kjpnv2-${d}-af_indelall.MAF.genericdb
echo "complete"
# other INFO
# chr1-22 AC=1;AN=6744;
# chrX,chrM AC_MALE=1;AN_MALE=2946;AC_FEMALE=0;AN_FEMALE=3798
echo "create tommo-3.5kjpnv2-${d}-af_indelall.INFO.genericdb using autosome.vcf, chrX_PAR3.vcf and chrMT.vcf"
gunzip -c ${dl}/tommo-3.5kjpnv2-${d}-af_indelall-autosome.vcf.gz | perl -F"\t" -lane '$F[7] =~ s/(AC=.*?;AN=\d+);.*/$1/; print join("\t", @F[0,1,1,3,4], $F[7])' | grep -v "^#" > tommo-3.5kjpnv2-${d}-af_indelall.INFO.genericdb.org
foreach vcf in ${dl}/{tommo-3.5kjpnv2-${d}-af_indelall-chrX_PAR3.vcf.gz}
  gunzip -c ${vcf} | perl -F"\t" -lane '$F[7] =~ s/AC=.*?;AN=\d+;AF=.*?;(.*)/$1/; $F[7] =~ s/(AF_MALE|AF_FEMALE)=.*?;//g; $F[7] =~ s/;ANN=.*//; $F[7] =~ s/AC_FEMALE/ AC_FEMALE/; print join("\t", @F[0,1,1,3,4], $F[7])'
end | grep -v "^#" >> tommo-3.5kjpnv2-${d}-af_indelall.INFO.genericdb.org
#
${separator} \
    tommo-3.5kjpnv2-${d}-af_indelall.INFO.genericdb.org \
    > tommo-3.5kjpnv2-${d}-af_indelall.INFO.genericdb
echo "complete"
popd
