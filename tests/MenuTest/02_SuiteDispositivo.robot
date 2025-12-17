*** Settings ***
Resource        ../../resource/resource_login.robot
Resource        ../../resource/common/resource_mnu.robot
Suite Setup     Acessar Suricato
Suite Teardown  Fechar navegador
Test Setup      Sleep    2s


*** Test Cases ***
Cenario: Navegar No Menu Dispositivo | Gateway
  Clicar No Menu Dispositivo | Gateway

Cenário: Navegar No Menu Dispositivo | Codin | Cadastro de Codin
  Clicar No Menu Dispositivo | Codin | Cadastro de Codin

Cenário: Navegar No Menu Dispositivo | Codin | Grupo de Codin
  Clicar No Menu Dispositivo | Codin | Grupo de Codin

Cenário: Navegar No Menu Dispositivo | Codin | Função
  Clicar No Menu Dispositivo | Codin | Função

Cenário: Navegar No Menu Dispositivo | Codin | Grupo de REP | Cadastro de Grupo de REP
  Clicar No Menu Dispositivo | Codin | Grupo de REP | Cadastro de Grupo de REP

Cenário: Navegar No Menu Dispositivo | Codin | Grupo de REP | Cadastro de Locais de Prestação de Serviços
  Clicar No Menu Dispositivo | Codin | Grupo de REP | Cadastro de Locais de Prestação de Serviços

Cenário: Navegar No Menu Dispositivo | Codin | Grupo de REP | Atualizar Grupo de REP Coletivo
  Clicar No Menu Dispositivo | Codin | Grupo de REP | Atualizar Grupo de REP Coletivo

Cenário: Navegar No Menu Dispositivo | Codin | Grupo de REP | AFD
  Clicar No Menu Dispositivo | Codin | Grupo de REP | AFD

Cenário: Navegar No Menu Dispositivo | Codin | Histórico de Codin por Filial
  Clicar No Menu Dispositivo | Codin | Histórico de Codin por Filial

Cenário: Navegar No Menu Dispositivo | Codin | Comandos para Equipamentos
  Clicar No Menu Dispositivo | Codin | Comandos para Equipamentos

Cenário: Navegar No Menu Dispositivo | Grupo de Acessos
  Clicar No Menu Dispositivo | Grupo de Acessos

Cenário: Navegar No Menu Dispositivo | Tipo de Acesso
  Clicar No Menu Dispositivo | Tipo de Acesso

Cenário: Navegar No Menu Dispositivo | Alarme | Sinal de Alarme
  Clicar No Menu Dispositivo | Alarme | Sinal de Alarme

Cenário: Navegar No Menu Dispositivo | Alarme | Procedimento de Alarme
  Clicar No Menu Dispositivo | Alarme | Procedimento de Alarme

Cenário: Navegar No Menu Dispositivo | Alarme | Lote de Comando
  Clicar No Menu Dispositivo | Alarme | Lote de Comando

Cenário: Navegar No Menu Dispositivo | Alarme | Reação de Alarme
  Clicar No Menu Dispositivo | Alarme | Reação de Alarme

Cenário: Navegar No Menu Dispositivo | Alarme | Reação de Acesso
  Clicar No Menu Dispositivo | Alarme | Reação de Acesso

Cenário: Navegar No Menu Dispositivo | Alarme | Notificações
  Clicar No Menu Dispositivo | Alarme | Notificações

Cenário: Navegar No Menu Dispositivo | CFTV
  Clicar No Menu Dispositivo | CFTV

Cenário: Navegar No Menu Dispositivo | Grupo de Cameras | Cadastros de Grupos
  Clicar No Menu Dispositivo | Grupo de Cameras | Cadastros de Grupos

Cenário: Navegar No Menu Dispositivo | Grupo de Cameras | Cadastro de Cameras por Grupo
  Clicar No Menu Dispositivo | Grupo de Cameras | Cadastro de Cameras por Grupo

Cenário: Navegar No Menu Dispositivo | Grupo de Cameras | Cadastro de Tipos de Alarmes de Trânsito
  Clicar No Menu Dispositivo | Grupo de Cameras | Cadastro de Tipos de Alarmes de Trânsito
