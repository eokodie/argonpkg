argonSidebar <- function() {
  argonDashSidebar(
    vertical = TRUE,
    skin = "light",
    background = "white",
    size = "md",
    side = "left",
    id = "my_sidebar",
    brand_url = "http://www.google.com",
    brand_logo = "https://demos.creative-tim.com/argon-design-system/assets/img/brand/blue.png",
    
    argonSidebarHeader(title = "Main Menu"),
    argonSidebarMenu(
      argonSidebarItem(
        tabName = "cards",
        icon = argonIcon(name = "tv-2", color = "info"),
        "Cards"
      ),
      argonSidebarItem(
        tabName = "tables",
        icon = argonIcon(name = "tv-1", color = "green"),
        "Tables"
      ),
      argonSidebarItem(
        tabName = "tabs",
        icon = argonIcon(name = "planet", color = "warning"),
        "Tabs"
      ),
      argonSidebarItem(
        tabName = "alerts",
        icon = argonIcon(name = "bullet-list-67", color = "danger"),
        "Alerts"
      ),
      argonSidebarItem(
        tabName = "medias",
        icon = argonIcon(name = "circle-08", color = "success"),
        "Medias"
      ),
      argonSidebarItem(
        tabName = "items",
        icon = argonIcon(name = "ui-04", color = "pink"),
        "Other items"
      ),
      argonSidebarItem(
        tabName = "effects",
        icon = argonIcon(name = "atom", color = "black"),
        "CSS effects"
      ),
      argonSidebarItem(
        tabName = "sections",
        icon = argonIcon(name = "credit-card", color = "grey"),
        "Sections"
      )
    ),
    argonSidebarDivider(),
    argonSidebarHeader(title = "Other Items")
  )
}