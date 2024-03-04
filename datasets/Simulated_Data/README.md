# Simulated Data Analysis Overview

## Simulate genotypes

Here, we use LDAK 5.2 to simulate the genotype data. 1000 sample-1000snps shows here as an example.

```shell
./ldak5.2.linux --make-snps simulate_1000_sample_10000snp --num-samples 1000 --num-snps 10000
```

Output

```
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
LDAK - Software for obtaining Linkage Disequilibrium Adjusted Kinships and Loads More
Version 5.2 - Help pages at http://www.ldak.org
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

There are 3 pairs of arguments:
--make-snps simulate_1000_sample_10000snp
--num-samples 1000
--num-snps 10000

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

Making genotypes for 1000 individuals and 10000 SNPs, each with 0.0100 <= MAF <= 0.5000 and spanning 22 chromosomes (change these values using "--maf-low", "--maf-high" and "num-chr")

If you would like some individuals to be identical, use "--duplicates" (e.g., "--duplicates 2" will generate twins, while "--duplicates 3" will generate triplets)

If you would like to simulate multiple populations, use "--populations"

It appears this system has multiple processors available; to run the parallel version of LDAK, use "--max-threads" (this will only reduce runtime for some commands)

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

Making SNPs for Chunk 1 of 5
Making SNPs for Chunk 2 of 5
Making SNPs for Chunk 3 of 5
Making SNPs for Chunk 4 of 5
Making SNPs for Chunk 5 of 5

Simulated data saved in simulate_1000_sample_10000snp.bed, simulate_1000_sample_10000snp.bim and simulate_1000_sample_10000snp.fam

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
Mission completed. All your basepair are belong to us :)
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
```

## Simulate phenotype

We still use LDAK 5.2 to simulate the phenotype data.

```bash
./ldak5.2.linux --make-phenos GCTA_1000_sample_10000snp --bfile ./simulated_data_1000_sample_10000snp/simulate_1000_sample_10000snp --ignore-weights YES --power -1 --her 0.5 --num-phenos 100 --num-causals 10000
```

Output

```
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
LDAK - Software for obtaining Linkage Disequilibrium Adjusted Kinships and Loads More
Version 5.2 - Help pages at http://www.ldak.org
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

There are 7 pairs of arguments:
--make-phenos GCTA_1000_sample_10000snp
--bfile ./simulated_data_1000_sample_10000snp/simulate_1000_sample_10000snp
--ignore-weights YES
--power -1
--her 0.5
--num-phenos 100
--num-causals 10000

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

Making 100 phenotypes, each with heritability 0.5000 and 10000 causal predictors

Predictors will be centred then scaled by V^(-1.0000/2) (option "--power"), where V=2*MAF*(1-MAF), the expected variance assuming Hardy-Weinberg Equilibrium; to instead scale based on observed variance use "--hwe-stand NO"

Causal predictors will be picked at random; if you would prefer to specify them, use "--causals"

Effect sizes (for scaled predictors) will be drawn from a Gaussian distribution; if you would prefer to specify them, use "--effects"

To generate a binary phenotype, use "--prev" to provide the prevalence of cases

To generate correlated pairs of phenotypes, use "--bivar"

It appears this system has multiple processors available; to run the parallel version of LDAK, use "--max-threads" (this will only reduce runtime for some commands)

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

Reading IDs for 1000 samples from ./simulated_data_1000_sample_10000snp/simulate_1000_sample_10000snp.fam

Reading details for 10000 predictors from ./simulated_data_1000_sample_10000snp/simulate_1000_sample_10000snp.bim

Data contain 1000 samples and 10000 predictors

Making phenotypes for Chunk 1 of 5
Making phenotypes for Chunk 2 of 5
Making phenotypes for Chunk 3 of 5
Making phenotypes for Chunk 4 of 5
Making phenotypes for Chunk 5 of 5

Phenotypes saved in GCTA_1000_sample_10000snp.pheno, with breeding values in GCTA_1000_sample_10000snp.breed and effect sizes in GCTA_1000_sample_10000snp.effects

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
Mission completed. All your basepair are belong to us :)
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
```

