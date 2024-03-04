library(data.table)

# Define the path to the .bim file and the output file path
bim_file_path <- "path/to/your/P50_round2_LD_pruned_3473.bim"
output_file_path <- "path/to/your/geno.snplist"

# Read the .bim file
bim <- fread(bim_file_path, header = FALSE, stringsAsFactors = FALSE)

# Subset to autosomes
bim <- bim[bim$V1 %in% seq(from = 1, to = 20),]

# Keep SNP, A1, A2 columns
bim <- bim[, .(V2, V5, V6)]
colnames(bim) <- c('SNP', 'A1', 'A2')

# Write the output file
write.table(bim, output_file_path, row.names = FALSE, quote = FALSE, sep = "\t")
