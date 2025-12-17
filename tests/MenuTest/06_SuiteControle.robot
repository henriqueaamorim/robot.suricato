*** Settings ***
Resource        ../../resource/resource_login.robot
Resource        ../../resource/common/resource_mnu.robot
Suite Setup     Acessar Suricato
Suite Teardown  Fechar navegador
Test Setup      Sleep    2s


*** Test Cases ***
Cenario: Navegar No Menu Controle | Comando | Acesso
  Clicar No Menu Controle | Comando | Acesso

Cenário: Navegar No Menu Controle | Comando | Emergência
  Clicar No Menu Controle | Comando | Emergência

Cenário: Navegar No Menu Controle | Comando | Lote
  Clicar No Menu Controle | Comando | Lote

Cenário: Navegar No Menu Controle | Comando | Envio Individual de Comandos Player
  Clicar No Menu Controle | Comando | Envio Individual de Comandos Player

Cenário: Navegar No Menu Controle | Comando | Reprocessamento de Marcação
  Clicar No Menu Controle | Comando | Reprocessamento de Marcação

Cenário: Navegar No Menu Controle | Comando | Reprocessamento de Marcações Orfãs REP
  Clicar No Menu Controle | Comando | Reprocessamento de Marcações Orfãs REP

Cenário: Navegar No Menu Controle | Monitoramento | Gráfico
  Clicar No Menu Controle | Monitoramento | Gráfico

Cenário: Navegar No Menu Controle | Monitoramento | Acesso - Grid
  Clicar No Menu Controle | Monitoramento | Acesso - Grid

Cenário: Navegar No Menu Controle | Monitoramento | Alarme - Grid
  Clicar No Menu Controle | Monitoramento | Alarme - Grid

Cenário: Navegar No Menu Controle | Monitoramento | Monitoramento LOG Gerenciador
  Clicar No Menu Controle | Monitoramento | Monitoramento LOG Gerenciador

Cenário: Navegar No Menu Controle | Monitoramento | Dispositivos Grid
  Clicar No Menu Controle | Monitoramento | Dispositivos Grid

Cenário: Navegar No Menu Controle | Monitoramento | Monitoramento Gráfico de Equipamentos
  Clicar No Menu Controle | Monitoramento | Monitoramento Gráfico de Equipamentos

Cenário: Navegar No Menu Controle | Monitoramento | Monitoramento de Acesso Câmeras
  Clicar No Menu Controle | Monitoramento | Monitoramento de Acesso Câmeras

Cenário: Navegar No Menu Controle | Monitoramento | LOG SecurOS
  Clicar No Menu Controle | Monitoramento | LOG SecurOS

Cenário: Navegar No Menu Controle | Monitoramento | Entrada de Agencias
  Clicar No Menu Controle | Monitoramento | Entrada de Agencias

Cenário: Navegar No Menu Controle | Monitoramento | Monitoramento de Câmeras de Trânsito
  Clicar No Menu Controle | Monitoramento | Monitoramento de Câmeras de Trânsito

Cenário: Navegar No Menu Controle | Monitoramento | Monitoramento de Status de Cameras
  Clicar No Menu Controle | Monitoramento | Monitoramento de Status de Cameras

Cenário: Navegar No Menu Controle | Ativar Emergência
  Clicar No Menu Controle | Ativar Emergência
