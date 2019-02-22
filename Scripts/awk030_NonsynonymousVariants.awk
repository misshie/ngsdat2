#!/usr/bin/awk -f

BEGIN {
    FS="\t"
    OFS="\t"
}
NR == 1 {
    print;next
}
$10 ~ /nonsynonymous/ {
    print; next
}
$10 ~ /nonflameshift/ {
    print; next
}
$10 ~ /unknown/ {
    print; next
}
{
    next
}
