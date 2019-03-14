#!/usr/bin/awk -f

BEGIN {
    FS="\t"
    OFS="\t"
    val=(0.05 / 100)
}
NR == 1 {
    print;next
}
$14 >= val {
    next
}
$16 >= val {
    next
}
{
    print;next
}
