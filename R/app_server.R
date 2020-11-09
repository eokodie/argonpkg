app_server <- function(input, output,session) {
  # List the first level callModules here
  
  output$distPlot <- renderPlot({ hist(rnorm(input$obs)) })
  
  output$plot <- renderPlot({
    dist <- switch(
      input$dist,
      norm = rnorm,
      unif = runif,
      lnorm = rlnorm,
      exp = rexp,
      rnorm
    )
    
    hist(dist(500))
  })
  
  # argonTable
  output$argonTable <- renderUI({
    
    wrap <- if (input$cardWrap == "Enable") TRUE else FALSE
    
    argonTable(
      cardWrap = wrap,
      headTitles = c(
        "PROJECT",
        "BUDGET",
        "STATUS",
        "USERS",
        "COMPLETION",
        ""
      ),
      argonTableItems(
        argonTableItem("Argon Design System"),
        argonTableItem(dataCell = TRUE, "$2,500 USD"),
        argonTableItem(
          dataCell = TRUE, 
          argonBadge(
            text = "Pending",
            status = "danger"
          )
        ),
        argonTableItem(
          argonAvatar(
            size = "sm",
            src = "https://image.flaticon.com/icons/svg/219/219976.svg"
          )
        ),
        argonTableItem(
          dataCell = TRUE, 
          argonProgress(value = 60, status = "danger")
        ),
        argonTableItem(
          argonButton(
            name = "Click me!",
            status = "warning",
            icon = "atom",
            size = "sm"
          )
        )
      )
    )
  })
  
  
}
