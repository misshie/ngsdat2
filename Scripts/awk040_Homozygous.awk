#!/usr/bin/awk -f

BEGIN {
    FS="\t"
    OFS="\t"
}
NR == 1 {
    print;next
}
$17 ~ /hom/ {
    print; next
}
{
    next
}
