#!/bin/bash
#
# Author : Andrew Etheredge
# Date : 16/06/01
# Summary : Bash script template generator

fileName=$1

cat >$fileName <<EOL
#/bin/bash
# Author : $USER
# Date : `date +"%y-%m-%d"`
# Summary :
#
# Description :

EOL

chmod 755 $fileName
