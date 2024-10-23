import numpy as np
import pandas as pd

#Create a 1D numpy array of numbers from 1 to 10. What is the result of adding 5 to each element?

a1 = np.arange(1,11)
print(a1 + 5)


#3x3 identity matrix using numpy

print(np.identity(3))


# reshape a 1D array of shape (12,) into a 3D array of shape (2, 2, 3)

print(np.arange(12,).reshape(2, 2, 3))

# Dictionary with 10 key value pairs. Now convert this Dictionary to Dataframe using Pandas 
data = { 'Name': ['John', 'Doe'],'Age': [28, 30],'Country': ['USA', 'Canada'], 'Occupation': ['Engineer', 'Manager'],'Salary': [75000, 85000], 'Company': ['Tech Corp', 'Innovate Inc'], 'Years_of_Experience': [5, 8], 'Degree': ['Master\'s in Engineering', 'PhD in Computer Science'], 'Marital_Status': ['Single', 'Married'], 'City': ['San Francisco', 'Toronto']}

data_frame = pd.DataFrame(data)
print(data_frame)


print("\n\n")


# drop the row with index 3 from the DataFrame df
data_set = {'ID': [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
        'Name': ['Alice', 'Bob', 'Charlie', 'David', 'Eva', 'Frank', 'Grace', 'Hannah', 'Isaac', 'Jack'],
        'Age': [25, 30, 35, 40, 22, 29, 34, 28, 33, 27],
        'Country': ['USA', 'Canada', 'UK', 'Australia', 'Germany', 'France', 'India', 'China', 'Japan', 'Brazil'],
        'Score': [85, 90, 78, 88, 92, 80, 87, 91, 83, 89] }
df = pd.DataFrame(data_set)
print("\n\n",df.drop(3))
print(df)


# Rename the column "old_name" to "new_name"
print("\n",df.rename(columns={'ID':'Unique_ID'}))


# Changing the data type of the column "salary" from int to float:

data_frame['Salary'] = data_frame['Salary'].astype(float)
print("\n\n",data_frame['Salary'].dtypes)
print("\n",data_frame)

# method would you use to drop any rows that contain NaN values
_data = {'Name': ['Alice', 'Bob', None],
        'Age': [25, None, 30],
        'Salary': [50000, 60000, None]}
dataframe = pd.DataFrame(_data)
print("\n",dataframe)
dff = dataframe.dropna()
print("\n\n",dff,"\n")




