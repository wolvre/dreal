#!/bin/bash

FAILED=0

for i in `find . -name *.smt2.proof`
do

    BASE=${i/%.smt2.proof/}
    ../checker/main.native $i > ${BASE}.v
    RESULT="$?"
    if [ "${RESULT}" -ne "0" ];
    then
	rm "${BASE}.v"
	FF["${FAILED}"]="$i"
	FAILED=$[${FAILED}+1]
    fi
done
echo "${FAILED} files failed: ${FF[*]}"

