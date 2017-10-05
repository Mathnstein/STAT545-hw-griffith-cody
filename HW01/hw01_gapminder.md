R Markdown Test run
================
Cody
September 16, 2017

``` r
library(tidyverse)
```

    ## Loading tidyverse: ggplot2
    ## Loading tidyverse: tibble
    ## Loading tidyverse: tidyr
    ## Loading tidyverse: readr
    ## Loading tidyverse: purrr
    ## Loading tidyverse: dplyr

    ## Conflicts with tidy packages ----------------------------------------------

    ## filter(): dplyr, stats
    ## lag():    dplyr, stats

``` r
library(gapminder)
```

Here I will plot somethings so we can see interesting trends in Gapminder.

First is the Year vs Life Expectancy,

``` r
plot(lifeExp~year,gapminder)
```

![](hw01_gapminder_files/figure-markdown_github-ascii_identifiers/unnamed-chunk-2-1.png)

We see that more or less the spread is the same per year, but over time the mean life expectancy seems to increase.

Next consider the GDP per capita vs Life Expectancy,

``` r
plot(lifeExp~gdpPercap,gapminder)
```

![](hw01_gapminder_files/figure-markdown_github-ascii_identifiers/unnamed-chunk-3-1.png)

We see here that this behavior is logistic and very roughly speaking, the higher the GDP per capita the longer the life expectancy.

This is enough of a quick analysis of Gapminder.
