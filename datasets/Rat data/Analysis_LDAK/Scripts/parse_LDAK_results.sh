#!/bin/bash

# Output CSV file
output_file="LDAK_results.csv"

# Check if the output file exists, if not, create it and add the header
if [ ! -f "$output_file" ]; then
    echo "trait_name,heritability,SE" > "$output_file"
fi

# Loop through each .reml file in the current directory
for file in *.reml; do
    # Extract the file name without the path and extension for display
    trait_name=$(basename "$file" .reml)
    
    # Use grep to find the Her_All line, then use awk to print the trait name,
    # heritability, and heritability standard deviation
    grep "Her_All" $file | awk -v trait="$trait_name" -v OFS=',' '{print trait, $2, $3}' >> "$output_file"
done
