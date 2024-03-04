# Path to your CSV file, assuming it's in the current working directory
csv_file_path <- "Obesity_normalized_phenotypes_n3173.csv"

# Read the CSV file into R
phenotypes <- read.csv(csv_file_path)

# For each trait, create a separate phenotype file
traits <- c("glucose_reading_mg_dl", "bmi_w_tail", "body_weight_g")

# Loop through each trait to create a separate phenotype file
for(trait in traits) {
  # Select the ID and the current trait, replace NA with -9
  selected_phenotypes <- phenotypes[, c("rat_rfid", trait)]
  names(selected_phenotypes) <- c("IID", "PHENO")
  
  # Use rat_rfid as both FID and IID
  selected_phenotypes$FID <- selected_phenotypes$IID
  
  # Reorder columns to have FID first
  selected_phenotypes <- selected_phenotypes[, c("FID", "IID", "PHENO")]
  
  # Define the output file path for this trait's phenotype file, saved in the current working directory
  pheno_file_path <- paste0("selected_trait_", trait, ".pheno")
  
  # Write the selected phenotypes to a new file without row names and with a space as the separator
  write.table(selected_phenotypes, file = pheno_file_path, row.names = FALSE, col.names = FALSE, quote = FALSE, sep = " ")
}
