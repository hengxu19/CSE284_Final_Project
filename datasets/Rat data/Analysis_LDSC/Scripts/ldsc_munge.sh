# Path to your actual snplist file location
snplist="geno.snplist"

# Munge bmi_w_tail with the Z column for signed summary statistics
munge_sumstats.py \
    --sumstats physiological_bmi_bodylength_w_tail.txt \
    --merge-alleles $snplist \
    --a1 allele1 \
    --a2 allele0 \
    --p p_score \
    --snp rs \
    --N 3166 \
    --signed-sumstats Z,0 \
    --out bmi_w_tail

# Munge bodyweight
munge_sumstats.py \
    --sumstats physiological_bodyweight.txt \
    --merge-alleles $snplist \
    --a1 allele1 \
    --a2 allele0 \
    --p p_score \
    --snp rs \
    --signed-sumstats Z,0 \
    --N 3170 \
    --out bodyweight

# Munge glucose_reading_mg_dl
munge_sumstats.py \
    --sumstats physiological_fasting_glucose.txt \
    --merge-alleles $snplist \
    --a1 allele1 \
    --a2 allele0 \
    --p p_score \
    --snp rs \
    --signed-sumstats Z,0 \
    --N 2264 \
    --out glucose_reading_mg_dl
