library(data.table)

# Define paths to your summary statistics files and their respective sample sizes
sumstats_list <- list(
  bmi_w_tail = list(file = "physiological_bmi_bodylength_w_tail.csv", N = 3166),
  bodyweight = list(file = "physiological_bodyweight.csv", N = 3170),
  glucose_reading_mg_dl = list(file = "physiological_fasting_glucose.csv", N = 2264)
)

# Loop through each summary statistic set
for (trait in names(sumstats_list)) {
  sumstats_info <- sumstats_list[[trait]]
  
  # Read the summary statistics file
  sumstats <- fread(sumstats_info$file)
  
  # Calculate Z-scores if necessary (beta / se) and add to sumstats
  sumstats[, Z := beta / se]
  
  # Add the sample size as a constant column
  sumstats[, N := sumstats_info$N]
  
  # Save the updated summary statistics back to the same file
  fwrite(sumstats, sumstats_info$file, sep=" ", quote = FALSE)
}
