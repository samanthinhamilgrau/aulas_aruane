nome = input("Digite o nome: ")
telefone = input("Digite o telefone: ")

with open("contatos.txt", "a") as arquivo:
    arquivo.write(f"{nome} - {telefone}\n")
