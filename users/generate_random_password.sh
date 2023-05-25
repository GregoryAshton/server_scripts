#!/bin/bash

n=`cat /usr/share/dict/words | wc -l`

generate_random() {
    RANDOM_NUMBER=`/usr/bin/perl -e "print int(rand($1));"`
}

generate_random $n
randomWord1=`head -$RANDOM_NUMBER /usr/share/dict/words | tail -1`

generate_random $n
randomWord2=`head -$RANDOM_NUMBER /usr/share/dict/words | tail -1`

generate_random 9
pass=`echo "$randomWord1$randomWord2"$RANDOM_NUMBER | tr -d '[:punct:]'`

echo $pass
