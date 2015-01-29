#!/bin/bash

if [ "$#" -eq "0" ]; then
    for i in `find . -name "*.smt2.proof"`
    do
	SAT=`grep "SAT with" ${i}`
	if [ -n "${SAT}" ]; 
	then
	    rm -r ${i}
	fi
    done
else
    if [ "$1" -eq "0" ]; then
	for i in `find . -name "*.smt2"`
	do
	    timeout3 -t 30 dReal --proof ${i}
	    PROOF="${i}.proof"
	    if [ -s "${PROOF}" ]; 
	    then
		SAT=`grep "SAT with" ${i}.proof`
		if [ -n "${SAT}" ]; 
		then
		    rm -r ${i} ${PROOF}
		fi
	    else
		if [ -e "${PROOF}" ];
		then
		    rm ${PROOF}
		fi
	    fi
	done
    fi
fi
