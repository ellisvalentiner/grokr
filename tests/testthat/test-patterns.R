test_that("pattern matching works", {
  g <- grok("Hello %{WORD:name}")
  expect_identical(g$match("Hello world!"), list("name"="world"))
})


test_that("pattern matching works", {
  expect_identical(grok_match("Hello world!", "Hello %{WORD:name}"), list(list("name"="world")))
})
