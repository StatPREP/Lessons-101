# Compile Word versions of lessons

# run from the top of the project

library(knitr)
library(rmarkdown)

source_files <- dir("content/topics", pattern  = ".Rmd$", full.names = FALSE)

for (this_file  in source_files[]) {
  text <- readLines(paste0("content/topics/",this_file))
  text <- gsub("/images/", "../../static/images/", text, fixed = TRUE)
  text <- paste0(text, collapse = "\n")
  writeLines(text, con  = "content/topics/foo.Rmd")
  render("content/topics/foo.Rmd",  
         output_file = gsub(".Rmd$", ".docx", this_file), 
         output_format = "word_document", 
         output_dir = "static/word-versions")
  render("content/topics/foo.Rmd",
         output_file = gsub("Rmd$", "pdf", this_file),
         output_format = tint::tintPdf(),
         output_dir = "static/pdf-versions")
}
file.remove("content/topics/foo.Rmd")
