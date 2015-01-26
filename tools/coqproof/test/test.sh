#!/bin/bash

for i in `ls *.smt2.proof`
do

BASE=${i/%.smt2.proof/}
../checker/main.native $i > ${BASE}.v

done

