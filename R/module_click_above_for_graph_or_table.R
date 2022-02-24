#' click_above_for_graph_or_table
#' @param id id
#' @examples
#' simpleApp <- function() {
#'   ui <- fluidPage(
#'     splshiny::click_above_for_graph_or_tableUI("hist1")
#'   )
#' server <- function(input, output, session) {
#'   splshiny::click_above_for_graph_or_tableServer("hist1")
#' }
#' shinyApp(ui, server)
#' }
#' @export
#' @rdname click_above_for_graph_or_table
click_above_for_graph_or_tableUI <- function(id) {
  plotOutput(NS(id, "figure"))
}


#' @rdname click_above_for_graph_or_table
#' @export
click_above_for_graph_or_tableServer <- function(id) {
  moduleServer(id, function(input, output, session) {
    output$figure <- renderCachedPlot({
      data=data.frame(x=0,y=0)
      q <- ggplot(data=data)
      q <- q + theme_void()
      for(x in seq(-1, 1, 0.5)){
        q <- q + annotate(
          "segment",
          x=x,
          xend=x,
          y=-0.05,
          yend=0.1,
          color="#2596be",
          arrow=arrow(length=unit(0.05,"npc")),
          size = 2
        )
      }
      q <- q + annotate(
        "label",
        label=glue::glue("Trykk p{spldata::nb$aa} knappene over\nfor {spldata::nb$aa} vise figurer/tabeller."),
        x=0,
        y=0,
        size=12,
        fill = "#2596be",
        color = "white",
        label.r = unit(0, "lines"),
        label.padding = unit(2, "lines"),
        label.size = 0.5
      )
      q
    }, cacheKeyExpr={list(
      1
    )},
    res = 72
    )
  })
}

