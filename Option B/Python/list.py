n=int(input())
x=list(range(1,n+1))

while len(x)!=1:
    x=x[0:len(x):2]
    if len(x)==1:
        break
    x=x[1:len(x):2]
    if len(x)==1:
        break
    x=[i for lab,i in enumerate(x) if (lab+1)%3!=0 ]
print(x[0])


