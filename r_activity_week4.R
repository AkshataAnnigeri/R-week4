#Week 4: dplyr package

#Task: Write the function to get a dataset from Base R: Titanic
#and give the dataframe a new name of your choice
#(hint: you will want your data to be a dataframe. Use the function: as.data.frame(Titanic))

# Install and load the dplyr package
install.packages("dplyr")
library(dplyr)

# Function to get the Titanic dataset from base R and assign a new name
get_and_rename_titanic_data <- function(new_name)
{
  # Load the Titanic dataset from base R
  my_titanic_data <- as.data.frame(Titanic)

  # Assign a new name to the dataframe
  assign(new_name, my_titanic_data)
}



#See the top rows of the data
#TASK: Write the function to see the top rows of the data

view_top_rows(my_titanic_data)

#Install and call the package dplyr
#TASK: Write the functions to install and call dplyr
install.packages("dplyr")
library(dplyr)

#Let's just see the Survived and Sex columns
#Task: Write the function to 'select' the Survived and Sex columns
#(hint: use the 'select' function)
selected_data <- select(my_titanic_data, Survived, Sex)
view_top_rows(selected_data)

#Let's name the dataset with just the two columns, Survived and Sex
#TASK: Write the function to save the two columns as one new dataset
#and give it a name

dataset_twocolumns <- selected_data


#Let's get rid of the Sex column in the new dataset created above
#TASK: Write the function that deselects the sex column
#(hint: use the 'select' function to not select a -column)
deselectsex_dataset <- select(dataset_twocolumns,-Sex)
#Let's rename a column name
#TASK: Write the function that renames 'Sex' to 'Gender'
library(dplyr)
column_rename <- rename (dataset_twocolumns,Gender = Sex)

#Let's make a new dataframe with the new column name
#TASK: Write the function that names a new dataset that includes the 'gender' column
dataset_with_gender <- select(column_rename, Gender)
#Let's 'filter' just the males from our dataset
#TASK: Write the function that includes only rows that are 'male'
males_dataset <- filter(my_titanic_data, Sex == "Male")
#Let's 'arrange' our data by gender (not the data you just filtered)
#TASK: Write the function to group the data by gender (hint: arrange())
arranged_data <- arrange(my_titanic_data, Sex)
#Let's see how many people were examined in the dataset (total the frequency in the original dataframe)
#TASK: Sum the Freq column
#TASK: After you run it, write the total here:_2201___
total_examined <- sum(my_titanic_data$Freq)
#Since we have a males dataset, let's make a females dataset
#TASK: Write the function that includes only rows that are 'female'
female_dataset <- filter(my_titanic_data, Sex == "Female")
#And now let's join the males and females
#TASK: Write the function that joins the male and female rows
#(hint: try using 'union' or 'bind_rows')
combined_dataset <- bind_rows(males_dataset, female_dataset)

#Optional Task: add any of the other functions
#you learned about from the dplyr package

