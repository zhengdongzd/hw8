context("Top20GdpPercap")

test_that("is_length_12", {
  expect_equal(length(Top20GdpPercap(2002)), 12)
})

test_that("is_table", {
  expect_identical(class(Top20GdpPercap(2002)), 'knitr_kable')
})

test_that("is_input_in_dataset", {
  expect_error(Top20GdpPercap(2020))
})
