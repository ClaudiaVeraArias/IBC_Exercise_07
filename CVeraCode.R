#EXERCISE 7

	## Set the working directory to the exercise 7 directory

setwd('/pathway/IBC_Exercise_07/')

	## 1) Write a function that returns the odd rows of any
	   ## dataframe passed as an argument

         ## "y" is the data frame to analyze as an argument
       	 ## oddrow is the function which print all the odd rows from the data frame

y <- data.frame(x = 1:7, y = 11:17, z = c("one", "uno", "two", "dos", "three", "tres", "cuatro")) #example

oddrow <- function(y) {
  rows <- y[c(TRUE, FALSE),]
  return(rows)
}

	## 2) Repeat a subset of last week’s exercise, but write functions to accomplish these tasks.

	   ## x is the new name of the file iris.csv

x <- read.csv('/User/path/iris.csv', header = TRUE)

	## 2.1) return the number of observations for a given species included in the data set
	   ## species function prints a table with the name of the specie and the number of observation (row) 
	   ## of each specie

species <- function(x) 
{
  Seto <- x[x$Species == "setosa", ]
  setosa <- nrow(Seto) # setosa observation
  Vers <- x[x$Species == "versicolor", ]
  versicolor <- nrow(Vers) # versicolor observations
  Virg <- x[x$Species == "virginica", ]
  virginica <- nrow(Virg) # virginica observation
  Names <- c("Setosa", "Versicolor", "Virginica")
  Observations <- c(setosa, versicolor, virginica)
  Table <- data.frame(cbind(Names, Observations))
  return(Table)
}

	## 2.2) return a dataframe for flowers with Sepal.Width greater than a value specified by 
           ## the function user
	
	## "y" is the Sepal.Width that the user has to specified

y <- 2 # Sepal.Wilth example  

Sepal_Width <- function(y) {
  z <- x[x$Sepal.Width > y,]
  Width <- data.frame(z)
  return(Width)
} 

	## 2.3) write the data for a given species to a comma-delimited file with the given species 
           ## name as the file name.

		## Data_Species is the function that create the new cvs files (one per each species) in 
		## the IBC_Exercise_07 directory  

Data_Species <- function(x) {
  Set <- x[x$Species == "setosa", ]
  Setosa <- write.csv(Set, file = "Setosa.csv")
  Ver <- x[x$Species == "versicolor", ]
  Versicolor <- write.csv(Ver, file = "Versicolor.csv")
  Vir <- x[x$Species == "virginica", ]
  Virginica <- write.csv(Vir, file = "Virginica.csv")
}


