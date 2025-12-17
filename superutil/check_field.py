from datetime import date
import os.path
import re

def registrar_aplicacao(appname, screenname, nome_arquivo):
  # Definindo a data
  data = date.today()
  data = data.strftime("%d.%m.%Y")

  # Verificando se existem espaços no nome do arquivo passado
  check_espaço = re.search(r"\s", nome_arquivo)
  if check_espaço:
      nome_final = re.sub(r"\s", "_", nome_arquivo)

  existe = os.path.isfile(f"C:\\Projects\\SuricatoAutomation\\RobotFramework\\results\\logs\\{nome_final}_{data}.txt")

  if existe:
    arquivo = open(f"C:\\Projects\\SuricatoAutomation\\RobotFramework\\results\\logs\\{nome_final}_{data}.txt", "a")
  else:
    arquivo = open(f"C:\\Projects\\SuricatoAutomation\\RobotFramework\\results\\logs\\{nome_final}_{data}.txt", "w+")
    
  arquivo.write(f"Aplicação: {appname} Tela: {screenname}\n")
  arquivo.write(f"\n==============================================\n")
  arquivo.close()