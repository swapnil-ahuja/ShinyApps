library(shiny)

shinyServer(function(input, output) {
   selectedData<-reactive({iris[,c(input$xcol, input$ycol) ]
     })
   clusters<- reactive({
     kmeans(selectedData(),input$clusters)
   })
  output$kmeans<- renderPlot(height= 400,{
    par(mar=c(5.1,4.1,0,1))
    plot(selectedData(),
         col=clusters()$cluster ,
         pch=20,cex =3)
    
    points(clusters()$centers,pch=4,cex=4,lwd=4)
    
    
  })

  
})