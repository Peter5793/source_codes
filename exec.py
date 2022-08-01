from time import time
start = time()

#program that creates Acronym
word = "Peter Lugalia"
text = word.split()

a = " "
for i in text:
    a = a + str(i[0]).upper()
print(a)

end = time()
execution_time = end  - start
print("Execution Time: ", execution_time
)