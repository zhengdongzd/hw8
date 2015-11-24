context(freq_out)

test_that("output", {
  expect_output(freq_out(iris$Species))
})
