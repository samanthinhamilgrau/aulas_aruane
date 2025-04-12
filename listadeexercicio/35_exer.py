try:
    n = int(input("Digite um número inteiro: "))
    print("Quadrado:", n ** 2)
except ValueError:
    print("Erro: valor não é um número inteiro.")
