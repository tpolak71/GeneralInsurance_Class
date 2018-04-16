library(shiny)
library(datasets)
dt_KPI <- read.csv(".../Class1_Actuary/data/lesson2_KPI.csv")
# Define the overall UI
shinyUI(
  # Use a fluid Bootstrap layout
  fluidPage(
    # Give the page a title
    titlePanel("Lesson 1 - Homework"),
    # Generate a row with a sidebar
    sidebarLayout(
      # Define the sidebar with one input
      sidebarPanel(
        selectInput("stlpec", "Coloring var:",
                    choices=c("Region","Unit","Segment","Business", "Year")),
        #choices=c("Year")),
        hr(),
        helpText("Data from Lesson1 .")
      ),
      # Create a spot for the barplot
      mainPanel(
        plotOutput("dt_KPIplot")
      )
    )
  )
)