#!/bin/bash

if [ "$#" -eq "0" ];
then
    echo "no proof to check!"
    exit -1
else
    BASE=${1/%.smt2.proof/}
    echo "Processing $1"
    ../checker/main.native $1 
    RESULT="$?"
    if [ "${RESULT}" -ne "0" ];
    then
	rm -f "${BASE}.v"
	echo "Processing $1 failed."
    else
        echo "Processing $1 done."
    fi
fi
