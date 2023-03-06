#!/bin/bash

n=`cat /usr/share/dict/words | wc -l`

generate_random() {
    RANDOM_NUMBER=`/usr/bin/perl -e "print int(rand($n));"`
}

generate_random
randomWord1=`head -$RANDOM_NUMBER /usr/share/dict/words | tail -1`

generate_random
randomWord2=`head -$RANDOM_NUMBER /usr/share/dict/words | tail -1`

pass=`echo "$randomWord1$randomWord2"1 | sed "s/\'//g"`
echo $pass
