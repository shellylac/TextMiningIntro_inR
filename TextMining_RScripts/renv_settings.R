#install.packages("renv")

#Run this once
renv::init()

#Then use
#renv::snapshot() # to save the state of your project to renv.lock and
#renv::restore()  # to restore the state of your project from renv.lock

#To remove renv from a project use
#renv::deactivate()
#Then remove the renv lock file and folder from the project directory

Sys.info()
#sysname        release        version       nodename        machine          login 
#"Windows"       "10 x64"  "build 18363"       "WOLFIE"       "x86-64"       "Shelly" 
#user effective_user 
#"Shelly"       "Shelly"

sessionInfo()
# R version 4.0.3 (2020-10-10)
# Platform: x86_64-w64-mingw32/x64 (64-bit)
# Running under: Windows 10 x64 (build 18363)
# 
# Matrix products: default
# 
# locale:
# [1] LC_COLLATE=English_United Kingdom.1252  LC_CTYPE=English_United Kingdom.1252   
# [3] LC_MONETARY=English_United Kingdom.1252 LC_NUMERIC=C                           
# [5] LC_TIME=English_United Kingdom.1252    
# 
# attached base packages:
# [1] stats     graphics  grDevices datasets  utils     methods   base     
# 
# other attached packages:
# [1] caret_6.0-86              lattice_0.20-41           quanteda.sentiment_0.22   quanteda.textplots_0.94  
# [5] quanteda.textstats_0.94   quanteda.textmodels_0.9.3 quanteda_2.1.2            readtext_0.80            
# [9] lubridate_1.7.10          forcats_0.5.1             stringr_1.4.0             dplyr_1.0.5              
# [13] purrr_0.3.4               readr_1.4.0               tidyr_1.1.3               tibble_3.1.0             
# [17] ggplot2_3.3.3             tidyverse_1.3.0           here_1.0.1               
# 
# loaded via a namespace (and not attached):
# [1] nlme_3.1-149         fs_1.5.0             httr_1.4.2           rprojroot_2.0.2      tools_4.0.3         
# [6] backports_1.2.1      utf8_1.1.4           R6_2.5.0             rpart_4.1-15         DBI_1.1.1           
# [11] colorspace_2.0-0     nnet_7.3-14          withr_2.4.1          tidyselect_1.1.0     compiler_4.0.3      
# [16] glmnet_4.1-1         cli_2.3.1            rvest_1.0.0          SparseM_1.81         xml2_1.3.2          
# [21] scales_1.1.1         digest_0.6.27        pkgconfig_2.0.3      htmltools_0.5.1.1    dbplyr_2.1.0        
# [26] rlang_0.4.10         readxl_1.3.1         rstudioapi_0.13      shape_1.4.5          generics_0.1.0      
# [31] jsonlite_1.7.2       ModelMetrics_1.2.2.2 magrittr_2.0.1       Matrix_1.2-18        Rcpp_1.0.6          
# [36] munsell_0.5.0        fansi_0.4.2          lifecycle_1.0.0      pROC_1.17.0.1        stringi_1.5.3       
# [41] yaml_2.2.1           MASS_7.3-53          plyr_1.8.6           recipes_0.1.15       grid_4.0.3          
# [46] LiblineaR_2.10-12    crayon_1.4.1         haven_2.3.1          splines_4.0.3        hms_1.0.0           
# [51] knitr_1.31           pillar_1.5.1         stats4_4.0.3         reshape2_1.4.4       codetools_0.2-16    
# [56] stopwords_2.2        fastmatch_1.1-0      reprex_1.0.0         glue_1.4.2           data.table_1.14.0   
# [61] renv_0.13.1          RcppParallel_5.0.3   modelr_0.1.8         vctrs_0.3.7          foreach_1.5.1       
# [66] cellranger_1.1.0     gtable_0.3.0         assertthat_0.2.1     xfun_0.22            gower_0.2.2         
# [71] prodlim_2019.11.13   broom_0.7.5          class_7.3-17         survival_3.2-7       timeDate_3043.102   
# [76] nsyllable_1.0        iterators_1.0.13     lava_1.6.9           ellipsis_0.3.1       ipred_0.9-10 
