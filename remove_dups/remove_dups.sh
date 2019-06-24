 #! /bin/bash

echo challenge: remove duplicates

echo -1-
time cat faces.txt -n | sort -s -k2 | uniq -f 1 | sort -g | awk '{print $2}'
echo timeout

echo -2-
time awk '!a[$0]++' faces.txt
echo success! (found on SO)
