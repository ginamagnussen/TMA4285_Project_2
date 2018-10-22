# TMA4285 Time series models
# Exercise 8, autumn 2018

# Libraries
library("itsmr") # Time series analysis using the Innovations Algorithm
library("TTR") # Functions to create Technical Trading Rules
library("aTSA")
library("tseries") # Time series analysis and computational finance
library("forecast")
library("ggplot2")


# Data
# About: Monthly totals of international airline passengers
# from January 1949 to December 1960 (same as Series G,
# Box & Jenkins, P. 531)  N = 144

# International airline passengers
# Observations for each month for twelve years, 144 observations in total.
dataseries <- ts(read.table("dataEx8.txt"))
plot.ts(dataseries)
acf(dataseries)
pacf(dataseries)

# Monthly observations, 1 season = a year => s = 12
