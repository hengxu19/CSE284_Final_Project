#!/bin/bash

# Define the base path for the ldsc.py script
LDSC_EXEC="path/to/ldsc.py"

# Define the base directory for the genotype files
BFILE_DIR="path/to/geno"

# Define the output directory for the LD scores
OUT_DIR="path/to/ld_scores"

# Loop through chromosomes 1 to 20
for CHR in {1..20}; do
    # Run the LDSC command for the current chromosome
    # Output file named as just the chromosome number
    python ${LDSC_EXEC} \
    --bfile ${BFILE_DIR}/genotype_chr${CHR} \
    --l2 \
    --ld-wind-kb 5000 \
    --out ${OUT_DIR}/${CHR}
done
