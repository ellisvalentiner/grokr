
<!-- README.md is generated from README.Rmd. Please edit that file -->

grokr
=====

<!-- badges: start -->

[![R build
status](https://github.com/ellisvalentiner/grokr/workflows/R-CMD-check/badge.svg)](https://github.com/ellisvalentiner/grokr/actions)
<!-- badges: end -->

grokr provides grok pattern matching for R.

Installation
------------

You can install the released version of grokr from
[Github](https://github.com/ellisvalentiner/grokr) with:

    devtools::install_github("ellisvalentiner/grokr")

Example
-------

This is a basic example which shows you how to solve a common problem:

    library(grokr)

    g <- grok("Hello %{WORD:name}")
    g$match("Hello world!")
    #> $name
    #> [1] "world"
