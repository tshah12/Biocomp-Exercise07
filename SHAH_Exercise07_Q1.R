## Load the file and make the header true in order to print is the first header row
file=read.table("iris.csv",header = TRUE,",")

print("Please enter the number of lines you want to print:")

##### Take input from the user about how many lines need to print
input = readline()
 
### print the row data
print(file[1:input,])
 
## print the number of lines 
print(paste0("The number of printed lines are:",input))



