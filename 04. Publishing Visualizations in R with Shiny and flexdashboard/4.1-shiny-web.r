library(shiny)
library(tidyverse)

##### Import Data

dat<-read_csv(url("https://www.dropbox.com/s/uhfstf6g36ghxwp/cces_sample_coursera.csv?raw=1"))
dat<- dat %>% select(c("pid7","ideo5"))
dat<-drop_na(dat)

ui<- fluidPage(
  
    sliderInput(inputId = "my_ideo5",
                          "Select Five Point Ideology (1=Very liberal, 5=Very conservative)",
                          value = 3, min = 1, max = 5),

    plotOutput("plot", width = "100%") # make plot fit web width
 
)

server<-function(input, output, session){
  
  output$plot <- renderPlot(
    ggplot(filter(dat, ideo5 == input$my_ideo5), aes(x = pid7)) +
      geom_bar() +
      xlim(0,8) +
      expand_limits(y = c(0, 125)) +
      labs(
        x = "7 Point Party ID, 1 = Very D, 7 = Very R",
        y = "Count"
      ) +
      theme(
        axis.title.x = element_text(family="Isra Regular", face = "bold"),
        axis.title.y = element_text(family="Isra Regular", face = "bold")
      )
  )
  
}

shinyApp(ui,server)
