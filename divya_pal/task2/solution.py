import numpy as np

#Create a 1D numpy array of numbers from 1 to 10. What is the result of adding 5 to each element?

a1 = np.arange(1,11)
print(a1 + 5)


#3x3 identity matrix using numpy

print(np.identity(3))


# reshape a 1D array of shape (12,) into a 3D array of shape (2, 2, 3)

print(np.arange(12,).reshape(2, 2, 3))
