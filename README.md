
<!-- README.md is generated from README.Rmd. Please edit that file -->
scerden.easydoi
===============

A few simple functions to work with doi strings.

install
-------

``` r
devtools::install_github("scerden/scerden.easydoi")
```

demo
----

``` r
library(scerden.easydoi)
library(tidyverse)
#> Loading tidyverse: ggplot2
#> Loading tidyverse: tibble
#> Loading tidyverse: tidyr
#> Loading tidyverse: readr
#> Loading tidyverse: purrr
#> Loading tidyverse: dplyr
#> Conflicts with tidy packages ----------------------------------------------
#> filter(): dplyr, stats
#> lag():    dplyr, stats
```

Say you extract the following `elocationid` from searching pubmed results with rentrez pkg:

``` r
x <- "doi: 10.1016/j.molcel.2015.10.023"
x %>% doi_extract()
#> [1] "10.1016/j.molcel.2015.10.023"
x %>% doi_extract() %>% doi_add_url() # %>% browseURL() # open in browser
#> [1] "https://doi.org/10.1016/j.molcel.2015.10.023"
x %>% doi_extract() %>% doi_encode() # %>% dir.create() # use this form to write to file system.
#> [1] "10.1016%2Fj.molcel.2015.10.023"
x %>% doi_extract() %>% doi_decode()
#> [1] "10.1016/j.molcel.2015.10.023"
```

pkg creation:
-------------

-   Prelims

``` r
use_readme_rmd()
```

-   when writing `./R` fxns

``` r
use_package("stringr")
```
