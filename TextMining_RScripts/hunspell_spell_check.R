library(tidyverse)
library(here)
library(stringi)
library(hunspell)

# Use hunspell to check individual words
words <- c("beer", "wiskey", "wyne")
correct <- hunspell_check(words)
print(correct)
hunspell_suggest(words)
hunspell_suggest(words[!correct])

#Use it to find (potentially) misspelled words in a document
text <- pdftools::pdf_text(here('Working_Data/import_data_types/Morris_Lancet_2021.pdf'))
bad_words <- hunspell(text)
head(bad_words)
sort(unique(unlist(bad_words)))

#Can install a medical dictionary:
#See details in this blog post;
#https://science.data.blog/2018/11/23/correcting-misspelled-medical-words-in-raw-text-data-with-r/
#and here --> https://cran.r-project.org/web/packages/hunspell/vignettes/intro.html#Custom_Dictionaries


#Automating a spell check process - a simple example:
text_data<-'Too Atlantic bottle-nosed dolfins have been traned by the Navy to serch waters for explosives nere the citty of London'

# Get bad words (NOTE that "Too" is not 'misspelled so not detected as such).
(incorrectly_spelled_words <- hunspell(text_data) %>% unlist())

# Extract the first suggestion for each bad word. - **NOTE This is slow for large numbers of documents**
(suggestions <- sapply(incorrectly_spelled_words, function(x) hunspell_suggest(x)[[1]][1]) %>% unname())

#replace in the original text - TAKES ~ A FEW  MINUTES TO RUN
(corrected_text <- stringi::stri_replace_all_regex(str = text_data, 
                                                  pattern = paste0('\\b', incorrectly_spelled_words, '\\b'),
                                                  replacement = suggestions, vectorize_all = FALSE))
