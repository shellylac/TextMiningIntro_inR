#install.packages("renv")
#renvironment details

#Run this once
#renv::init()

#Then use
#renv::snapshot() 
# to save the state of your project to renv.lock and
#renv::restore()
#to restore the state of your project from renv.lock

Sys.info()
#sysname        release        version       nodename        machine          login 
#"Windows"       "10 x64"  "build 18363"       "WOLFIE"       "x86-64"       "Shelly" 
#user effective_user 
#"Shelly"       "Shelly"

sessionInfo()
#R version 4.0.3 (2020-10-10)
#Platform: x86_64-w64-mingw32/x64 (64-bit)
#Running under: Windows 10 x64 (build 18363)

#attached base packages:
#  [1] stats     graphics  grDevices datasets  utils     methods   base     

#loaded via a namespace (and not attached):
#[1] compiler_4.0.3    htmltools_0.5.1.1 tools_4.0.3       yaml_2.2.1       
#[5] rmarkdown_2.7     knitr_1.31        xfun_0.22         digest_0.6.27    
#[9] rlang_0.4.10      renv_0.13.1       evaluate_0.14
