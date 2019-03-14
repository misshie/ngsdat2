BEGIN {
    TOGOWS = "http://togows.org/api/ucsc/"
    DB = "hg19/wgEncodeGencodeBasicV19/"
    NAME2 = 13
}

{
    cmd = "curl --fail --silent " TOGOWS DB $0
    count = 0
    while ( (cmd | getline row) > 0) {
	++count
	if (count == 1) continue;
	split(row, cols, "\t")
	genes[cols[NAME2]] = 1
    }
    genelist = ""
    for ( gene in genes ) { genelist = genelist "," gene }
    close(cmd)
    sub(/^\,|\,$/, "", genelist)
    print $0 "\t" genelist
    split("", genes) # clear the genes array
}
