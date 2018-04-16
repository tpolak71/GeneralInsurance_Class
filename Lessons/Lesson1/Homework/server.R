library(shiny)
library(ggplot2)
dt_KPI <- read.csv(".../Class1_Actuary/data/lesson2_KPI.csv")
head(dt_KPI)
# Define a server for the Shiny app
shinyServer(function(input, output) {
  output$dt_KPIplot<- renderPlot({
    g<-ggplot(data = dt_KPI,
              mapping = aes_string(x = dt_KPI$Premium, y = dt_KPI$Expenses, colour = input$stlpec)
    ) +
      geom_point() +
      geom_smooth()
    g + labs(x="Premium",y="Expenses")

  })
})