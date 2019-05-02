# Compile Word versions of lessons

# run from the top of the project

library(knitr)
library(rmarkdown)

source_files <- dir("content/lessons", pattern  = ".Rmd$", full.names = FALSE)

#this_file <- source_files <- "what-is-a-confidence-interval.Rmd"
for (this_file  in source_files[]) {
  text <- readLines(paste0("content/lessons/",this_file))
  text <- gsub("/images/", "../../static/images/", text)
  text <- paste0(text, collapse = "\n")
  writeLines(text, con  = "content/lessons/foo.Rmd")
  render("content/lessons/foo.Rmd",  
         output_file = gsub(".Rmd$", ".docx", this_file), 
         output_format = "word_document", 
         output_dir = "static/word-versions")
}
remove("content/lessons/foo.Rmd")
