
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(dplyr)

shinyServer(function(input, output) {
  tbl_dat <- dplyr::starwars
  tbl_dat <- tbl_dat %>%
    select(name:species)
  
  output$starwars_tbl <- DT::renderDataTable({
    DT::datatable(tbl_dat, filter = "top")
  })

})
