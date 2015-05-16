library(shiny)
#k-means custering is a cluster analysis technique in data mining which aims to partition n observations 
#into k clusters.In the given application we can choose the number of clusters along with the variables to be
#analysed on both the axis.The different clusters in the output plot are represented by different colors.
#The dataset used here is the iris dataset.

shinyUI(fluidPage(

  # Application title
  titlePanel("K-Means Clustering Using Iris Dataset"),

  
  sidebarLayout(
    sidebarPanel(
      selectInput('xcol','X Variable',names(iris[1:4])),
      selectInput('ycol','Y Variable',names(iris[1:4]),selected = names(iris)[[2]]),
      numericInput('clusters','Cluster count',3,min=1,max=9)# No. of Clusters Required for K-Means
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput('kmeans',height="400px")
      
    )
  )
))