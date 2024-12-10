#' ---

#' title: "Blanket study"
#' author: Vinaya Kundapur, DDS

#' abstract: |

#'   | You can write your abstract here
#'   | starting each new line with a "|"
#' ---
library(rio)
library(tidyverse)
library(ggplot2)
library(nycflights13)
library(DataExplorer)
#' ---

#' title: "Blanket study"
#' author: Vinaya Kundapur, DDS

#' abstract: |

#'   | You can write your abstract here
#'   | starting each new line with a "|"
#' ---
# init ----
# NEVER UPLOAD REAL PATIENT DATA TO POSSIT . CLOUD
# DOWNLOAD SCRIPT TO YOUR OWN COMPUTER , INSTALL R ADN ENTER IT AND RUN IT THERE 
#NEVER UPLOAD DATA TO GITHUB ONLY CODE
inputdata <- 'Proxy table of the study data practicum class.xlsx'
  
# load data ----
patients<- import(inputdata,which =1) %>% rename_with(make.names)%>% rename(Subject='SUBJECT')
dat01<- import(inputdata,which =2) %>% rename_with(make.names)
dat02<-left_join(patients,dat01)

# exploratory analysis ----
create_report(dat02)
