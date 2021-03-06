app_ui <- function() {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # List the first level UI elements here 
    argonDashPage(
      title = "Argon Dashboard",
      author = "David",
      description = "Argon Dash Test",
      sidebar = argonSidebar(),
      navbar = argonNav(), 
      header = argonHeader(),
      body = argonDashBody(
        argonTabItems(
          argonTabItem(tabName = "cards", cards_tab()),
          argonTabItem(tabName = "tables", tables_tab()),
          argonTabItem(tabName = "tabs", tabsets_tab()),
          argonTabItem(tabName = "alerts", alerts_tab()),
          argonTabItem(tabName = "medias", images_tab()),
          argonTabItem(tabName = "items", items_tab()),
          argonTabItem(tabName = "effects", effects_tab()),
          argonTabItem(tabName = "sections", sections_tab())
        )
      ),
      footer = argonFooter()
    )
  )
}

golem_add_external_resources <- function(){
  
  addResourcePath(
    'www', system.file('app/www', package = 'argon')
  )
 
  tags$head(
    golem::activate_js(),
    golem::favicon()
    # Add here all the external resources
    # If you have a custom.css in the inst/app/www
    # Or for example, you can add shinyalert::useShinyalert() here
    #tags$link(rel="stylesheet", type="text/css", href="www/custom.css")
  )
}
