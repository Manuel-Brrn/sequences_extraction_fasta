#!/bin/bash
module load bioinfo-cirad
module load seqkit/2.8.1

##############
## select fasta sequence from id contigs
################

# Define input and output file paths as variables
INPUT_BED="high_tajima_urartu.bed"           # Input BED file
INPUT_FASTA="urartu_transcriptome.fasta"     # Input FASTA file
OUTPUT_IDS="high_tajima_urartu_ids.txt"      # Output file for contig IDs
OUTPUT_FASTA="high_tajima_sequences_urartu.fasta"  # Output FASTA file

# Extract contig IDs from the BED file
cut -f1 "$INPUT_BED" > "$OUTPUT_IDS"

# Extract sequences from the FASTA file based on contig IDs
seqkit grep -f "$OUTPUT_IDS" "$INPUT_FASTA" > "$OUTPUT_FASTA"

# Print completion message
echo "Sequence extraction complete. Results saved to $OUTPUT_FASTA."
