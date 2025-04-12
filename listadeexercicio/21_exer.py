matriz1 = []
matriz2 = []

print("Digite os elementos da primeira matriz 2x2:")
for i in range(2):
    linha = []
    for j in range(2):
        linha.append(int(input(f"matriz1[{i}][{j}]: ")))
    matriz1.append(linha)

print("Digite os elementos da segunda matriz 2x2:")
for i in range(2):
    linha = []
    for j in range(2):
        linha.append(int(input(f"matriz2[{i}][{j}]: ")))
    matriz2.append(linha)

soma = [[matriz1[i][j] + matriz2[i][j] for j in range(2)] for i in range(2)]

print("Matriz resultante da soma:")
for linha in soma:
    print(linha)
