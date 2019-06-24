#! /bin/bash

echo a few tries for the cmdchallenge: reverse the file

echo -1-
time for i in `seq $(cat dump_firefox_logins.sh | wc -l) -1 1`; do head -n $i dump_firefox_logins.sh | tail -n 1; done

echo -2-
time IFS=$'\n' cat dump_firefox_logins.sh -n | sort -gr | cut -c 8-

echo -3-
time IFS=$'\n' cat dump_firefox_logins.sh -n | sort -grcu | cut -c 8-

echo -4-
time tac dump_firefox_logins.sh
echo success! 
