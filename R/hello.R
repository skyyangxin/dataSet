# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

hello <- function() {
  print("Hello, world!")
}

getDataSet <- function(){
#  读取api
  res <- GET("localhost:8080/query")
#  获取raw数据
  data_raw <- res$content
#  raw转字符串
  data <- rawToChar(data_raw)
#  转化字符串编码
  Encoding(data) <- "UTF-8"
#  转化为数据集
  da <- jsonlite::fromJSON(data)
#  返回数据集
  return(da)
}
