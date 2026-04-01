list_1=input("Enter the numbers: ").split(",")
list_2=input("Enter the numbers: ").split(",")
list_3=[]
for i in list_1:
    if int(i)%2 !=0:
        list_3.append(i)
for i in list_2:
    if int(i)%2==0:
        list_3.append(i)
print(list_3)