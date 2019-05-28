from rocker/rstudio:3.6.0

# unixodbc -> unix ODBC library
# odbc-postgresql -> postgres ODBC library
RUN sudo apt-get update && sudo apt-get install -y unixodbc unixodbc-dev odbc-postgresql

RUN install2.r --error \
    odbc
