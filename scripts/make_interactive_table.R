#!/usr/bin/env Rscript

# ===============================
# Generate interactive HTML table from CSV
# Usage: Rscript make_interactive_table.R input.csv output.html
# ===============================

# --- Load required packages ---
suppressPackageStartupMessages({
  library(DT)
  library(htmlwidgets)
})

# --- Read command-line arguments ---
args <- commandArgs(trailingOnly = TRUE)

if (length(args) < 2) {
  stop("Usage: Rscript make_interactive_table.R input.csv output.html")
}

input_file <- args[1]
output_file <- args[2]

cat("📥 Reading dataset:", input_file, "\n")

# --- Read CSV dataset ---
merged_old_updated <- read.csv(input_file, stringsAsFactors = FALSE, fileEncoding = "UTF-8-BOM")

# --- Select only relevant columns (customize if needed) ---
merged_old_updated <- merged_old_updated[, c(
  "Family", "Genus", "Species",
  "Country", "Year_Virus_sequencing"
)]

# --- Clean all text to proper UTF-8 ---
df_utf8 <- data.frame(lapply(merged_old_updated, function(x) {
  if (is.character(x)) enc2utf8(iconv(x, to = "UTF-8")) else x
}), stringsAsFactors = FALSE)

# --- Create the interactive DataTable ---
datatable_html <- datatable(
  df_utf8,
  extensions = c('Buttons', 'Scroller'),
  options = list(
    dom = 'Bfrtip',
    buttons = c('copy', 'csv', 'excel', 'pdf', 'print'),
    scrollX = TRUE,
    scrollY = 600,
    deferRender = TRUE,
    scroller = TRUE,
    pageLength = 25
  ),
  filter = "top",
  rownames = FALSE,
  class = 'cell-border stripe hover compact'
)

# --- Save to HTML ---
cat(" Saving interactive HTML to:", output_file, "\n")

saveWidget(
  widget = datatable_html,
  file = output_file,
  selfcontained = TRUE
)

cat("Done! Interactive table saved to", output_file, "\n")
