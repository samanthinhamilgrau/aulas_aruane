def soma_impares(lista):
    return sum(num for num in lista if num % 2 != 0)

print(soma_impares([1, 2, 3, 4, 5]))
