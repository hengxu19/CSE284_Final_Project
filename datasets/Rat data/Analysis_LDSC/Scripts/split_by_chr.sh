#!/bin/bash

# Define the directory containing the original PLINK files
BFILE_DIR="path/to/genotypes"
# Define the base name of your PLINK files
BFILE_NAME="P50_round2_LD_pruned_3473"
# New output directory for the chromosome-specific PLINK files
OUT_DIR="path/to/output_directory"

# Ensure the output directory exists
mkdir -p ${OUT_DIR}

# Specify the path to the PLINK executable
PLINK="path/to/plink_executable"

# Loop through each chromosome
for CHR in {1..20}; do
    # Execute PLINK command to split the dataset by chromosome
    $PLINK --bfile ${BFILE_DIR}/${BFILE_NAME} \
           --chr ${CHR} \
           --make-bed \
           --out ${OUT_DIR}/${BFILE_NAME}_chr${CHR}
done
