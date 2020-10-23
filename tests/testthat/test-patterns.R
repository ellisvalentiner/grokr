test_that("pattern matching works", {
  g <- grok("Hello %{WORD:name}")
  expect_identical(g$match("Hello world!"), list("name"="world"))
})
