#!/usr/bin/awk -f

BEGIN {
    FS="\t"
    OFS="\t"
}
NR == 1 {
    print;next
}
$7 ~ /splicing/ {
    print; next
}
$10 ~ /stop/ {
    print; next
}
$10 ~ /flameshift/ {
    print; next
}
{
    next
}
