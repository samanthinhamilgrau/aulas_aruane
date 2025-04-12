try:
    n = float(input("Digite um número: "))
    resultado = 100 / n
    print("Resultado:", resultado)
except ZeroDivisionError:
    print("Erro: divisão por zero!")
