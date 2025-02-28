#!/bin/bash
module load bioinfo-cirad
module load seqkit/2.8.1

#seqkit replace
#This subcommand replaces text in the sequence headers (lines starting with > in FASTA files).

#-p "^transcript:"
#The -p option specifies the pattern to search for using a regular expression.

#    ^ means the pattern must match the beginning of the header line.
#    "transcript:" is the literal text to search for.

# -r ""
# The replacement string is empty (""), meaning the matched text will be deleted.

seqkit replace -p "^transcript:" -r "" urartu_full_CDS.fasta -o urartu_fixed_CDS.fasta
