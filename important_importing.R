# INSTALL AND LOAD PACKAGES ################################

library(datasets)  # Load base packages manually

# Installs pacman ("package manager") if needed
if (!require("pacman")) install.packages("pacman")

# Use pacman to load add-on packages as desired
pacman::p_load(pacman, rio) 

# CSV
csv_rio <- import("Projekty_startowe/proj1/mbb.csv")
head(csv_rio)

# TXT
txt_rio <- import("Projekty_startowe/proj1/mbb.txt")
head(txt_rio)

# EXCEL
xlsx_rio <- import("Projekty_startowe/proj1/mbb.xlsx")
head(xlsx_rio)

View(csv_rio)

r_txt <- read.table("Projekty_startowe/proj1/mbb.txt",
                    header = TRUE,
                    sep = "\t"
                    )
r_txt

# File operation and new file inda output

trend.csv = read.csv("Projekty_startowe/proj1/mbb.csv", header = TRUE, sep = ",")
trend.csv