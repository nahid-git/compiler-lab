# input
# A->asB|asD

data = input("Enter the production: ")

n = ""
k = data.split('->')  # ['A', 'asB|asD']
l = k[1].split('|')  # ['asB', 'asD']

for i in range(0, len(l) - 1):
    for j in range(0, min(len(l[i]), len(l[i + 1]))):
        if l[i][j] == l[i + 1][j]:
            if l[i][j] not in n:
                n = n + l[i][j]
print(k[0] + '->' + n + k[0] + "'")

# k[1]=['asB|asD']

m = k[1].split(n)  # ['', 'B|', 'D']
print(k[0] + "'->", end="")
for i in range(1, len(m)):
    print(m[i], end="")
