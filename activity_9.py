tuple_=tuple(input("Enter the numbers: ").split(","))
tuple_1=tuple()
for i in tuple_:
    if int(i)%5==0:
        tuple_1+=(i,)
print(tuple_1,)