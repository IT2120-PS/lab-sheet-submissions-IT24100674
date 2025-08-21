setwd("C:\\Users\\it24100674\\Desktop\\IT24100674")

#Q1
branch_data <- read.table("Exercise.txt", header = TRUE, sep=",")
print(branch_data)

#Q2
fix(branch_data)
str (branch_data)
attach(branch_data)

#Q3
# obtain boxplot for Sales_x1
boxplot(branch_data$sales_x1, main="Box plot for sales", outline=TRUE, outpch=8, horizontal=TRUE)

#Q4
##five-number summary
summary(Advertising_x2)

#IQR
IQR(Advertising_x2)

#Q5
get. outliers <- function(z){
  q1 <- quantile(z)[2]
  q3 <- quantile(z)[4]
  iqr <- q3 - q1
  
  ub <- q3 + 1.5*iqr
  1b <- q1 - 1.5*iqr
  
  print(paste("Upper Bound = ", ub))
  print(paste("Lower Bound = ", 1b))
  print(paste("outliers:", paste(sort(z[z<1b | z>ub]), collapse = ",")))
  
  # Check for outliers in the 'years' variable
  get. outliers (Years_x3)