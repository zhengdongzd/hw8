context("Quantiles")

test_that("No probs", {
  expect_error(qdiff1(gapminder$lifeExp))
})

test_that("right output", {
  expect_output(qdiff1(gapminder$lifeExp, probs = c(0.25, 0.75)))
})

test_that("right output", {
  expect_output(qdiff1(gapminder$lifeExp, probs = c(0, 1)))
})
