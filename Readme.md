Homework 8: Building your own R package
=======================================

Package Installation
--------------------

We will use the `devtools` package to facilitate package development. `Devtools` and my package can be installed with the following commands, and both could be loaded with `library` command.

``` r
library(devtools)
```

``` r
load_all()
#> Loading hw8
# devtools::install_github('zhengdong91/hw8')
library(hw8)
library(gapminder)
```

Function Testing
----------------

There are four functions in the package, we designed `Quantiles` and `Top20GdpPercap` functions to deal with the gapminder dataset, `Quantiles` return the difference of a numeric variable, and `Top20GdpPercap` return the top 20 GdpPercap countries in a particular year. I also inplemented two functions `fbind` and `freq_out` Jenny shared with us in the classes as a practice.

``` r
Top20GdpPercap(2002)
```

| country          |  gdpPercap|
|:-----------------|----------:|
| Norway           |   44683.98|
| United States    |   39097.10|
| Singapore        |   36023.11|
| Kuwait           |   35110.11|
| Switzerland      |   34480.96|
| Ireland          |   34077.05|
| Netherlands      |   33724.76|
| Canada           |   33328.97|
| Austria          |   32417.61|
| Denmark          |   32166.50|
| Iceland          |   31163.20|
| Australia        |   30687.75|
| Belgium          |   30485.88|
| Hong Kong, China |   30209.02|
| Germany          |   30035.80|
| United Kingdom   |   29479.00|
| Sweden           |   29341.63|
| France           |   28926.03|
| Japan            |   28604.59|
| Finland          |   28204.59|

``` r
qdiff1(gapminder$lifeExp, probs = c(0.25, 0.75))
#> [1] 22.6475
qdiff1(gapminder$lifeExp, probs = c(0, 1))
#> [1] 59.004
```

``` r
a <- factor(c("character", "hits", "your", "eyeballs"))
b <- factor(c("but", "integer", "where it", "counts"))
fbind(a, b)
#> [1] character hits      your      eyeballs  but       integer   where it 
#> [8] counts   
#> Levels: but character counts eyeballs hits integer where it your
```

``` r
freq_out(iris$Species)
#> Source: local data frame [3 x 2]
#> 
#>            x     n
#>       (fctr) (int)
#> 1     setosa    50
#> 2 versicolor    50
#> 3  virginica    50
```

#### Some useful links:

-   [data-raw](https://github.com/jennybc/candy/tree/master/data-raw)
-   [explore and clean dataset](https://github.com/jennybc/candy/blob/master/data-raw/00_explore-raw.R)
-   [An introduction to data cleaning with R](https://cran.r-project.org/doc/contrib/de_Jonge+van_der_Loo-Introduction_to_data_cleaning_with_R.pdf)
