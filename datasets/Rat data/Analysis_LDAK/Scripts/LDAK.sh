#!/bin/bash

# README: Heritability Analysis Script with GRM Calculation
#
# This script first calculates the Genetic Relationship Matrix (GRM) using LDAK,
# then runs heritability analyses for specified phenotypic traits.
#
# Requirements:
# - LDAK installed and accessible in your PATH or specify its path directly in the script.
# - Phenotype files (*.pheno) and genotype data (*.bed, *.bim, *.fam) should be in the same directory as the script or adjust paths accordingly.
#
# Directory Structure Suggestion:
# - Current Directory: Contains this script, phenotype files, and genotype data.
#
# Usage:
# 1. Edit the script to specify the correct paths for the LDAK executable.
# 2. Place phenotype files and genotype data in the working directory or adjust the script paths accordingly.
# 3. Run the script in the terminal: bash this_script.sh
#
# Note: Ensure GRM is calculated where it's accessible for the heritability analysis.

# LDAK executable path
ldak="./ldak" # Adjust if LDAK is not in your PATH

# Calculate GRM
$ldak --calc-kins-direct ldak_pruned --ignore-weights YES --power -0.25 --bfile P50_round2_LD_pruned_3473
echo "GRM calculation complete. Took approximately 2 mins for 128K LD pruned SNPs."

# List of phenotype files (located in the current directory)
pheno_files=("selected_trait_bmi_w_tail.pheno" "selected_trait_body_weight_g.pheno" "selected_trait_glucose_reading_mg_dl.pheno")

# Loop through each phenotype file and execute the heritability analysis command
for pheno_file in "${pheno_files[@]}"; do
    # Extract the trait name from the phenotype file name for use in output file naming
    trait_name=$(echo $pheno_file | sed 's/selected_trait_\(.*\).pheno/\1/')
    
    # Execute the LDAK command for the current phenotype file
    $ldak --reml reml_${trait_name} --grm ldak_pruned --pheno ${pheno_file}
done
