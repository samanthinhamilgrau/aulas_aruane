from datetime import datetime

data_str = input("Digite uma data (dd/mm/aaaa): ")
data = datetime.strptime(data_str, "%d/%m/%Y")
dias = ["Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado", "Domingo"]
print("Dia da semana:", dias[data.weekday()])
