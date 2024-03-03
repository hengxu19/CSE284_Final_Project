# Comparative Analysis of SNP Heritability Estimation Methods

## Group Members
- Apurva S. Chitre 
- Gaoyuan Li 
- Heng Xu 

## Project Option
Option 2

## Overview
The estimation of SNP (Single Nucleotide Polymorphism) heritability from genome-wide association studies (GWAS) results provides insights into the links between genetic variation and phenotypic variance. Given the numerous estimation methods, benchmarking these methods is crucial to understanding their performance under diverse conditions.

Our project aims to conduct a comparative evaluation of various SNP heritability estimation methods, specifically focusing on GCTA, LDSC, and LDAK - three widely used approaches.

### Methods Overview
- **GCTA (Genome-wide Complex Trait Analysis)**: GCTA-GREML estimates SNP heritability by constructing a genetic relationship matrix from SNP data, then using restricted maximum likelihood to quantify how much of the phenotypic variance is explained by genetic variations. (Yang et al. 2010)
- **LDSC (LD Score Regression)**: LDSC estimates heritability by correlating GWAS effect sizes with linkage disequilibrium (LD) scores. It's effective for correcting biases like population stratification and is adept at analyzing complex traits across different ancestries. (Bulik-Sullivan et al. 2015)
- **LDAK**: LDAK adjusts for the effects of linkage disequilibrium between SNPs by weighting them according to their LD with neighboring SNPs. This method aims to provide more accurate heritability estimates, especially when analyzing specific SNP sets or the genetic variance across chromosomes. (Speed et al. 2020)


### Datasets
- **Simulated data**: We have leveraged LDAK for simulating genotypic and phenotypic data to examine genetic architecture implications.
- **Real data**: We’ve used a published dataset from an outbred rat population with obesity-related traits (Chitre et al. 2018), and analyze public GWAS data for traits with high (height) (Yengo et al. 2022) and low (major depression) heritability (Meng et al. 2024).

## Repository Structure

This repository is organized by the dataset and software name to streamline the navigation and usage of our scripts. Below is an overview of the repository structure:

### Scripts
The scripts used for analysis are organized into folders named after the datasets and the software tools used, such as GCTA, LDSC, and LDAK. 

### Results
The results from our comparative analysis are stored in the `Results` directory. 

## Running the Analysis

To run the analysis scripts, follow the instructions specific to each dataset and software tool contained within their respective directories and PDFs. Ensure that you have the necessary dependencies and environment setup as described in the documentation accompanying each analysis.

## Results Overview

The `Results` directory contains insights into the performance of each heritability estimation method under various conditions. 

## Remaining Work and Challenges

*List of tasks to complete in the last week of the project and any challenges the team would like to discuss with peers.*

### To-Do in the Last Week
- Finalize all analyses and ensure completeness of documentation.
- Perform a final review of comparative results to ensure accuracy and clarity in presentation.
- Prepare the project presentation, highlighting key findings and insights.

### Challenges for Discussion
- Addressing discrepancies in results across different heritability estimation methods.
- Optimizing computational resources for large-scale analyses.

## References
- Bulik-Sullivan, B., Loh, PR., Finucane, H. et al. LD Score regression distinguishes confounding from polygenicity in genome-wide association studies. Nat Genet 47, 291–295 (2015). https://doi.org/10.1038/ng.3211
- Chitre, Apurva S. et al. (2022). Genome-Wide Association Study in 3,173 Outbred Rats Identifies Loci for Body Weight, Adiposity, and Fasting Glucose. C-GORD, UC San Diego Library Digital Collections. https://doi.org/10.6075/J0Q240F0
- Meng, X., Navoly, G., Giannakopoulou, O. et al. Multi-ancestry genome-wide association study of major depression aids locus discovery, fine mapping, gene prioritization and causal inference. Nat Genet 56, 222–233 (2024). https://doi.org/10.1038/s41588-023-01596-4
- Speed, D., Holmes, J. & Balding, D.J. Evaluating and improving heritability models using summary statistics. Nat Genet 52, 458–462 (2020). https://doi.org/10.1038/s41588-020-0600-y
- Yang, J., Benyamin, B., McEvoy, B. et al. Common SNPs explain a large proportion of the heritability for human height. Nat Genet 42, 565–569 (2010). https://doi.org/10.1038/ng.608
- Yengo, L., Vedantam, S., Marouli, E. et al. A saturated map of common genetic variants associated with human height. Nature 610, 704–712 (2022). https://doi.org/10.1038/s41586-022-05275-y

