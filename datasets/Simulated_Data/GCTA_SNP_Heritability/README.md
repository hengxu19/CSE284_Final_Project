# GCTA SNP Heritability Estimation

## GRM calculation 

Here, we use GCTA 1.94.1 to calculate the GRM.

```shell
/gcta-1.94.1 --bfile ./simulated_data_1000_sample_1000snp/simulate_1000_sample_1000snp --autosome --make-grm --out GCTA_SNP_Heritability/simulated_GRM_1000snp/simulated_1000snp --thread-num 12
```

Output

```
GCTA_SNP_Heritability/simulated_GRM_1000snp
GCTA_SNP_Heritability/simulated_GRM_10000snp
GCTA_SNP_Heritability/simulated_GRM_1000snp_5000_sample
```

## **Estimate SNP Heritability**

We still use LDAK 5.2 to simulate the phenotype data.

```bash
./gcta-1.94.1 --grm GCTA_SNP_Heritability/simulated_GRM_1000snp/simulated_1000snp --pheno ./simulated_data_1000_sample_1000snp/GCTA_1000_sample_1000snp.pheno --reml --out ./GCTA_SNP_Heritability/Estimation_1000snp/Estimation_1000snp --thread-num 12
```

Output

```
GCTA_SNP_Heritability/Estimation_1000snp
GCTA_SNP_Heritability/Estimation_10000snp
GCTA_SNP_Heritability/Estimation_1000snp_5000_sample
```
