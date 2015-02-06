#!/bin/bash

if [ "$#" -eq "0" ];
then
    FAILED=0

    for i in `find . -name *.smt2.proof`
    do
	BASE=${i/%.smt2.proof/}
	echo "Processing ${i}$"
	time ../checker/main.native $i 
	RESULT="$?"
	if [ "${RESULT}" -ne "0" ];
	then
	    rm -f "${BASE}.v"
	    FF["${FAILED}"]="$i"
	    FAILED=$[${FAILED}+1]
	fi
    done
    
    if [ "${FAILED}" -gt "0" ];
    then
	if [ "${FAILED}" -eq "1" ];
	then
	    echo "1 file failed: ${FF[*]}"
	else	
    	    echo "${FAILED} files failed: ${FF[*]}"
	fi
    fi
else
    for i in $@ 
    do
	if [ "$i" = "-p" ];
	then
	    find . -name "*.smt2.proof" | parallel "check.sh {}"
	fi
    done
fi
