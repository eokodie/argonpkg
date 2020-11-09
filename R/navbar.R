argonNav <- function() {
  argonDashNavbar(
    argonDropNav(
      title = "Dropdown Menu", 
      src = "https://demos.creative-tim.com/argon-dashboard/assets/img/theme/team-4-800x800.jpg", 
      orientation = "left", #"right",
      argonDropNavTitle(title = "Welcome!"),
      argonDropNavItem(
        title = "Item 1", 
        src = "https://www.google.com", 
        icon = argonIcon("single-02")
      ),
      argonDropNavItem(
        title = "Item 2", 
        src = NULL, 
        icon = argonIcon("settings-gear-65")
      ),
      argonDropNavDivider(),
      argonDropNavItem(
        title = "Item 3", 
        src = "#", 
        icon = argonIcon("calendar-grid-58")
      )
    ),
    
    HTML(
      '
    <a href="https://www.creative-tim.com/product/argon-design-system" target="_blank" class="btn btn-neutral btn-icon ml-sm-3 d-none d-md-block">
    <span class="btn-inner--icon">
    <i class="fa fa-cloud-download mr-2"></i>
    </span>
    <span class="nav-link-inner--text">Download</span>
    </a>
    '
    ),
    actionButton(inputId = "generate_report", label = "Download", 
                 icon = icon("download")),
    
    HTML(
      '<a class="nav-link nav-link-icon" href="https://twitter.com/creativetim" target="_blank">
            <i class="fa fa-home"></i>
          </a>'
    )
    # br(),
    # create_icon(id = "help_icon", icon = "info"),
  )
}