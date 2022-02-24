simpleApp <- function() {
  ui <- fluidPage(
    splshiny::click_above_for_graph_or_tableUI("hist1")
  )
  server <- function(input, output, session) {
    splshiny::click_above_for_graph_or_tableServer("hist1")
  }
  shinyApp(ui, server)
}

simpleApp()
