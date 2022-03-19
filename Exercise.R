---
  title: "Introduction to R Programming"
author: "Fariha Mubashar"
date: "May 14, 2022"
output: html_document
---
  ## Section 1: Data Types and Operations Pt. 1
  
  ### Question 1 
  **Create the variables with the following composition:**  
  1. A vector containing each letter of your first name as its elements.  
2. A variable that contains your name concatenated from the vector created in (1)  
3. A variable containing a sequence from 100 to 120.  
4. Create a matrix of 3x3 dimensions that contains the even sequence of numbers starting from 2.  
5. Assign names to the variables.


  ### sOLUTION ###
1.
x<- c("Fariha")
x

[1] "Fariha"
2.
a <-c("f","a","r","i","h","a")
a
[1] "f" "a" "r" "i" "h" "a"
3.
sequence <- 100:120
sequence
[1] 100 101 102 103 104 105 106 107 108 109 110 111 112 113
[15] 114 115 116 117 118 119 120
4.
m <- matrix(c(2,4,6,8,10,12,14,16,18),nrow=3 ,ncol = 3)
m

    [,1] [,2] [,3]
[1,]    2    8   14
[2,]    4   10   16
[3,]    6   12   18

5.
abc(x)<-c("fariha")
x

### Question 2
**Create a factor variable emp_status:**  
1. Containing the categorical variables: Employed, Unemployed, Self-Employed, with each level appearing atleast more than 2.  
2. Display the levels and the factor variable as a table.  
3. Unclass the elements of the factor variable.  

### Solution ###
emp_status <- factor(c("Employed", "Unemployed", "Self-Employed","Employed", "Unemployed", "Self-Employed","Employed", "Unemployed", "Self-Employed"))
emp_status

[1] Employed      Unemployed    Self-Employed Employed     
[5] Unemployed    Self-Employed Employed      Unemployed   
[9] Self-Employed
Levels: Employed Self-Employed Unemployed

unclass(emp_status)

[1] 1 3 2 1 3 2 1 3 2
attr(,"levels")
[1] "Employed"      "Self-Employed" "Unemployed"   


### Question 3
**Create a dataframe object called bank_customers:**  
  1. the data frame will have three columns: CustomerID, hasAccount, totalBalance  
2. Fill the data as follows  
a. Alicia does not have an account. She is here for inquiry   
b. Nancy is here to check on her account balance of USD 10,000.  
c. Fernando is here to deposit USD 100 in his account which had no balance.  
d. Louis will withdraw all his money from the account that had USD 2,000.   
e. Diane is here for information.   
3. For customers that do not have a value, use NA as placeholder.  
4. Print the number of rows, columns and names for the data frame. 


###Solution ###
bank_customers <- data.frame(CustomerID= c("Alicia", "Nancy", "Fernando", "Louis","Diane"), hasaccount=c("no","yes","yes","yes", "no"), totalBalance=c(NA,"10,000","100","2,000",NA))
bank_customers

CustomerID hasaccount totalBalance
1     Alicia         no         <NA>
2      Nancy        yes       10,000
3   Fernando        yes          100
4      Louis        yes        2,000
5      Diane         no         <NA>
  
nrow( bank_customers)
5
ncol( bank_customers)
3
names(bank_customers)

"CustomerID"   "hasaccount"   "totalBalance"