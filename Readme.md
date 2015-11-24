Homework 8: Building your own R package
=======================================

Package Installation
--------------------

We will use the `devtools` package to facilitate package development. `Devtools` and my package can be installed with the following commands, and both could be loaded with `library` command.

``` r
library(devtools)
```

``` r
# load_all()
devtools::install_github("zhengdong91/hw8")
#> Using github PAT from envvar GITHUB_PAT
#> Downloading GitHub repo zhengdong91/hw8@master
#> Installing hw8
#> "G:/R/R-32~1.2/bin/x64/R" --no-site-file --no-environ --no-save  \
#>   --no-restore CMD INSTALL  \
#>   "C:/Users/ZhengD/AppData/Local/Temp/RtmpAh0grK/devtools72fc2db12f61/zhengdong91-hw8-57564fa"  \
#>   --library="G:/R/R-3.2.2/library" --install-tests
library(hw8)
library(gapminder)
```

Function Testing
----------------

Conclusion
----------

There are four functions in the package, we designed `Quantiles` and `Top20GdpPercap` functions to deal with the gapminder dataset, `Quantiles` return the difference of a numeric variable, and `Top20GdpPercap` return the top 20 GdpPercap countries in a particular year. I also inplemented two functions `fbind` and `freq_out` Jenny shared with us in the classes as a practice.

#### Some useful links:

-   [Write your own R package, Part One](https://stat545-ubc.github.io/packages04_foofactors-package-01.html)
-   [Write your own R package, Part Two](https://stat545-ubc.github.io/packages05_foofactors-package-02.html)
