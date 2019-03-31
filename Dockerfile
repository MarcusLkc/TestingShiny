FROM rocker/r-ver:3.5.1
#install necessary libraries
RUN R -e "install.packages(c('shiny', 'shinydashboard', 'DT', 'dplyr','ggplot2', 'stringr', 'readr','tools','shinythemes'), repos='http://cran.rstudio.com/')"

#copy the current folder into the path of the app
COPY /app /usr/local/src/app
#set working directory to the app
WORKDIR /usr/local/src/app

EXPOSE 8080
#set the unix commands to run the app
CMD ["Rscript","server.R"]