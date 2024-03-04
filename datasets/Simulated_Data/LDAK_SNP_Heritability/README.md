# LDAK SNP Heritability Estimation

## GRM calculation 

Here, we use LDAK 5.2 to calculate the GRM.

```shell
./ldak5.2.linux --calc-kins-direct simulated_1000_10000snp --ignore-weights YES --power -0.25 --bfile simulated_data_1000_sample_10000snp/simulate_1000_sample_10000snp
```

Output

```
LDAK_SNP_Heritability/simulated_GRM_1000snp
LDAK_SNP_Heritability/simulated_GRM_10000snp
```

## **Estimate SNP Heritability**

We still use LDAK 5.2 to simulate the phenotype data.

```bash
./ldak5.2.linux --make-phenos GCTA_1000_sample_10000snp --bfile ./simulated_data_1000_sample_10000snp/simulate_1000_sample_10000snp --ignore-weights YES --power -1 --her 0.5 --num-phenos 100 --num-causals 10000
```

Output

For Phenotype 1

```
LDAK_SNP_Heritability/pheno_1_1000snp
LDAK_SNP_Heritability/pheno_1_10000snp
```

For Phenotype 50

```
LDAK_SNP_Heritability/pheno_50_1000snp
LDAK_SNP_Heritability/pheno_50_10000snp
```
