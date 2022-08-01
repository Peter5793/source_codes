from time import time
def execution_time (word):
    """
    program that creates Acronym from user input
    """
    
    start = time()
    text = word.split()

    a = " "
    for i in text:
        a = a + str(i[0]).upper()
    print(a)
    end = time()
    execution_time = end  - start
    print("======================")
    print("Execution Time: ", float(execution_time))
    print("======================")
    return execution_time

name = input(str("Enter the word: "))
execution_time(name)

