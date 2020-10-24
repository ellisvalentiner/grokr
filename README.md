
<!-- README.md is generated from README.Rmd. Please edit that file -->

grokr
=====

<!-- badges: start -->

[![R build
status](https://github.com/ellisvalentiner/grokr/workflows/R-CMD-check/badge.svg)](https://github.com/ellisvalentiner/grokr/actions)
[![Codecov test
coverage](https://codecov.io/gh/ellisvalentiner/grokr/branch/master/graph/badge.svg)](https://codecov.io/gh/ellisvalentiner/grokr?branch=master)
<!-- badges: end -->

grokr provides grok pattern matching for R.

Installation
------------

You can install the released version of grokr from
[Github](https://github.com/ellisvalentiner/grokr) with:

    remotes::install_github("ellisvalentiner/grokr")

Example
-------

This is a basic example which shows you how to solve a common problem:

    library(grokr)

    g <- grok("Hello %{WORD:name}")
    g$match("Hello world!")
    #> $name
    #> [1] "world"

    x <- c(
      "55.3.244.1 GET /index.html 15824 0.043",
      "127.0.0.1 POST /index.html 43658 1.234"
    )

    grok_match(
      string = x,
      pattern = "%{IP:client} %{WORD:method} %{URIPATHPARAM:request} %{NUMBER:bytes} %{NUMBER:duration}"
    )
    #> [[1]]
    #> [[1]]$client
    #> [1] "55.3.244.1"
    #> 
    #> [[1]]$method
    #> [1] "GET"
    #> 
    #> [[1]]$request
    #> [1] "/index.html"
    #> 
    #> [[1]]$bytes
    #> [1] "15824"
    #> 
    #> [[1]]$duration
    #> [1] "0.043"
    #> 
    #> 
    #> [[2]]
    #> [[2]]$client
    #> [1] "127.0.0.1"
    #> 
    #> [[2]]$method
    #> [1] "POST"
    #> 
    #> [[2]]$request
    #> [1] "/index.html"
    #> 
    #> [[2]]$bytes
    #> [1] "43658"
    #> 
    #> [[2]]$duration
    #> [1] "1.234"
