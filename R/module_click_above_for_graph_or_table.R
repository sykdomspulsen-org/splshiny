#' click_above_for_graph_or_table
#' @param id id
#' @examples
#' simpleApp <- function() {
#'   ui <- fluidPage(
#'     splshiny::click_above_for_graph_or_tableUI("loader_fig_1")
#'   )
#' server <- function(input, output, session) {
#'   splshiny::click_above_for_graph_or_tableServer("loader_fig_1")
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
      q <- q + expand_limits(y=-0.05)
      for(x in seq(-1, 1, 0.5)){
        q <- q + annotate(
          "segment",
          x=x,
          xend=x,
          y=0.05,
          yend=0.1,
          color=splstyle::base_color,
          arrow=arrow(length=unit(0.05,"npc")),
          size = 5
        )
        q <- q + annotate(
          "segment",
          x=x,
          xend=x,
          y=0.05,
          yend=0.1,
          color="#EAF3F9",
          arrow=arrow(length=unit(0.05,"npc")),
          size = 4
        )
      }
      q <- q + annotate(
        "label",
        label=glue::glue("Trykk p{spldata::nb$aa} knappene over\nfor {spldata::nb$aa} vise figurer/tabeller."),
        x=0,
        y=0,
        size=12,
        fill = splstyle::base_color,
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

