# First program of R...
mystring <- "Hello world!"
print (mystring)
print(class(mystring))
x=5
x
#Addition of two number
x <- 10
y <- 20
z <- x+y
z
print(paste("Addition of two no is: ",z))
#write a code to use all arithmetic operators
x <- 20
y <- 30
z <- x+y
a <- x*y
b <- y-x
c <- x/y
print(paste("mult of two number is: ",a))
print(paste("sub of two number is: ",b))
print(paste("div of two number is: ",c))
print(paste("Add of two number is: ",z))

val1 <- readline(prompt ="enter the first value:" ) 
val2 <- readline(prompt ="enter the second value:" ) 
a<- as.integer(val1) + as.integer(val2)
b<- as.integer(val1) - as.integer(val2)
c<- as.integer(val1) * as.integer(val2)
d<- as.integer(val1) / as.integer(val2)
print(paste("Addition of two numbers is:" , a))
print(paste("sub of two number is: ",b))
print(paste("Mul of two number is: ",c))
print(paste("Div of two number is: ",d))

#when you want to create vector with more than one element, you should use c()function
#which means to combine the elements into vector.
#create a vector.
apple<- c('red','green','yellow')
print(apple)

#Get the class vector of the vector.
print(class(apple))

#create a vector of five numbers.
s<- c(2,4,7,8,9)
s
#operators
#arithmetic operators
v<- c(2,5,5,6)
t<-c(8, 3, 4)
print(class(v))
print(v+t)

x<- c(2,1,8,3)
y<- c(9,4)
x+y #Element of y is recycled to 9,4,9,4
x-1 #Scalar 1 is recycled to 1,1,1,1

#x<- x-1
#x
y<-x+c(1,2,3)
x
y
x<-NULL
print(x)
y<-NULL
print(y)

x<-5
y<-16
y%/%x #q
y%%x #r
v<- c(2,5,5,6)
t<- c(8, 3, 4)
print(v%%t)
print(v%/%t)
print(v^t)

#relational
v<- c(2,5,5,6,9)
t<- c(8,2,5,14,9)
print(v>t)
print(v<t)
#likewise do all relational operators.>=,<=,!=.==

#logical
x<- c(TRUE,FALSE,0,6)
Y<- c(FALSE,TRUE,FALSE,TRUE)
X<- c(4,FALSE,0,6)
Y<- c(0,TRUE,FALSE,TRUE)
!x
x&y
x&&y
x|y
x||y

v<- c(3,1,TRUE,2+2i)
t<- c(4,1,FALSE,2+3i)
print(v&t)
print(v|t)
v<-c(3,0,TRUE,2+2i)
t<-c(4,0,FALSE,2+3i)
print(v|t)
v<-c(3,0,TRUE,2+2i)
t<-c(1,3,TRUE,2+3i)
print(V&&t)
v<-c(0,0,TRUE,2+2i)
t<-c(0,3,TRUE,2+3i)
print(v||t)

#other operators
v<- 2:8
print(v)
v1<- 8
v2<-12
t<- 1:10
print(v1 %in% t)
print(v2 %in% t)

#A list is an R-object which can contain many different types of elements inside
#it like vectors,functions and even another list inside it.
list1<-list(c(1,2,3,4,5),2,22,sin)
length(list1)
print(list1)

#A matrix is a two-dimensional rectangular data set. it can be created using a 
#vector a matrix function.
#Create a matrix.
M1 = matrix(c('1','2','3','4','5','6'),nrow = 3,ncol = 2,byrow = TRUE)
M = matrix(c('a','a','b','c','b','d'), nrow=2,ncol=3)
print(M1)
print(M)

#while matrices are confined to two dimension, arrays can be of any no of dimensions.
#The array function takes a dim attribute which create the required number of dimensions.
#the example we create an array with two wlwmwnts which are 3x3 matrices each.
#create array.
a<- array (c('green','yellow','red'),dim=c(3,3,3))
print(a)
#in Array there is no row wise 
#elements distribute is row wise or column wise by default in Array?
#Factors are the r-objects which are created using a vector . It stores the vector along
# with the distinct values of the elements in the vector as labels.
#Factors ar created using the factors() function. The nlevels functions gives the count of levels.
#Create the vector
apple_color<- c('green','green','yellow','red','red','red','green')
#Create a factor object.
factor_apple <- factor(apple_color)
print(factor_apple)
print(nlevels(factor_apple))

#Data frames are tabular data objects. unlike a matrix in data frames each column can 
#contain different modes of data.Data Frames are crested using the data.frame() function.
#Create the data frame.
# Create a data frame of 5 rows and 5 columns for students data .
BMI <- data.frame(
  gender = c("Male","Male","Female"),
  height = c(152,171.5,165),
  weight = c(81,93,78),
  Age = c(42,38,26)
)
BMI$gender <- as.factor(BMI$gender)
print(BMI)
summary(BMI)
nrow(BMI)
ncol(BMI)
str(BMI)
dim(BMI)

#create an employee table for 6 columns and 5 rows and the distinct depatments.
employee <- data.frame(
  name = c("Aryan","Aditya","harsh"),
  salary = c(1500000,500555,90000),
  department = c("data","software","web"),
  exprions = c(5,4,3),
  Age = c(24,26,28),
  city = c("Agar","Delhi","Jaipur")
  
)
employee$name <- as.factor(employee$name)
print(employee)
summary(employee)
#
nrow(employee)
ncol(employee)
#it display the internal structure of R object-It tell the no of columns and
#no of rows and no of items are stored.
str(employee)
dim(employee)
#data frame- is a collection of heterogeneous data type. just like a table.


#sequence
#in R studio indexing start from 1 not start from 0.
v <- 1.2:10.2
print(v)

#creating a sequence from 5 to 15.
v <- 5:15
print(v)

#creating a sequence from 4.5 to 15.5.
v <- 4.5:15.5
print (v)

#create vector with element specified does not belong to the sequence then it is discarded.
print(seq(4,8, by = 0.5))
seq(1,3,by=0.2)              
#specify step size
#logical and numerical values are converted to character.
s<-c('apple','red',5,TRUE)
print(s)
#Accessing vector elements using position.
t <- c("Sun","Mon","Tue","Wed","Thus","Fri","Sat")
u <- t[c(2,3,6)]
print(u)

#Accessing vector elements using logical indexing.
v <- t[c(TRUE,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE)]
print(v)

#Accessing vector elements using negative indexing.
x<-t[c(-2,-5)]
print(x)

x<-1:7
x
x[3]   #access 3rd element
x[c(2,4)]    # access 2nd and 4th element
x[-1] #access all but not 1st element
x[c(2,-4)]  # cannot mix positive and negative integers
x[c(2.8,3.54)] # real number are truncated to integers

v1<-c(3,8,4,5,0,11)
v2<-c(4,11)
#v2 becames c(4,11,4,11,4,11)
add.result <- v1+v2
print(add.result)

#sort the elements of the vector.
v<-c(3,8,4,5,0,11,-9,304)
sort.result <- sort(v)
print(sort.result)

#sort the elements in the reverse order.
revsort.result <- sort(v, decreasing = TRUE)
print(revsort.result)

#Sorting character vectors.
v <- c("red","lue","yellow","violet")
sort.result <- sort(v)
print(sort.result)
#Sorting character vectors in reverse order.
revsort.result <- sort(v, decreasing = TRUE)
print(revsort.result)

#modifying vector elements
x <- c(-3, -2, -1, 0, 1, 2)
x[2]<-0;x   #modify 2nd element
x[x<0] <- 5;x   #modify the element less than 0
x <- x[1:4];x   # truncate x to first 4 elements
x
x <- NULL;x

#list
#create a list of numeric vector and list inside the list.
#create a list containing strings, number, vectors and a logical values.
x <- list("a" = 2.5, "b" = TRUE, "c" = 1.3)
x
str(x)
list_data<-list("red","green",c(21,32,11), TRUE, 51,23,119.1)
print(list_data)
str(list_data)

#create a list containing a vector, a matrix and a list.
list_data<-list(c("Jan","Feb","Mar"), matrix(c(3,9,5,1,-2,8), nrow=2), list("green",12.3))
list_data

#give names to the elements in the list.
names(list_data)<-c("1st Quater","A_Matrix","A Inner list")
#show the list
print(list_data)
length(list_data)

#Access the first element of the list.
print(list_data)

#Access the third element. As it also a list, all its elements will be printed.
print(list_data[3])

#Access the list elements (matrix) using the name of the element.
print(list_data$A_Matrix)

#Add element at the end of the list.
list_data[4]<-"New Element"
print(list_data[4])
list_data

#remove the last element.
list_data[4]<-NULL
#now try to print the 4th element.
list_data[4]

#update the 3rd element or insert new element at the third element at the third position of the list.
list_data[3]<-"updated element"
print(list_data[3])
list_data

#Create two lists.
list1<-list(1,2,3)
list2<-list("Sun","Mon","Tue")

#merge the two lists.
merged.list<-c(list1,list2)
#print merged list.
print(merged.list)

n=c(2,3,5)
s=c("aa","bb","cc","dd","ee")
b=c(TRUE, FALSE, TRUE, FALSE, FALSE)
x=list(n,s,b,3)
x

#list slicing
x[2]
x[[2]]
#retrieve a slice with multiple member(o/p must be:-bb,ee)
x[[2]][c(2,5)]

#x[c(2,4)] #not correct as per the requirement
#reference a list member directly
x[[2]]
#can modify its content directly(update aa with ta)
x[[2]][1]="ta"
x[[2]]

#write a command to print the value xx and ee from the list
x[[2]][c(3,5)]
#modify the first element of the list
x[[1]][3]<-10
x
x[[1]]<-10
x
s
n
  
v=list(alice=c(2,3,5), john=c("aa","bb"))
v
v[["alice"]]
v$alice
attach(v)
alice
john
detach(v)
#create lists.
list1<-list(1:5)
print(list1)
list2<-list(10:14)
print(list2)
#convert the lists to vectors
v1<-unlist(list1)
v2<-unlist(list2)

print(v1)
list1
print(v2)

#now add the vectors
result<-v1+v2
print(result)

#MATRIX in detail
#element are arranged sequentially by row.