*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrEmergencia.robot
Resource        ../../../../resource/app/resource_ctrComandosEmergencia.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos na tela Comandos de Emergências.


*** Test Cases ***

Testcase: Preencher todos os campos na tela Comandos de Emergências
  [Tags]  REGISTER  POLYVALENT
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Comando | Emergência
  Ao visualizar a tela: Comandos de Emergências
  E selecionar uma opção no campo Planta "ZZZ"
  E clicar em OK
  Então devo visualizar a tela: Comandos de Emergência
  E selecionar a opção Desativar Emergência
  E selecionar a opção Modo de Operação


*** Keywords ***
Dado que eu acesse o menu: Controle | Comando | Emergência
  resource_mnu.Clicar No Menu Controle | Comando | Emergência

Ao visualizar a tela: Comandos de Emergências
  resource_ctrEmergencia.Acessar Tela Comandos de Emergências

E selecionar uma opção no campo Planta "${PLANTA}"
  resource_ctrEmergencia.Selecionar uma opção no campo Planta "${PLANTA}"

E clicar em OK
  resource_btn.Clicar No Botão OK

Então devo visualizar a tela: Comandos de Emergência
  resource_ctrComandosEmergencia.Acessar Tela Comandos de Emergência

E selecionar a opção Desativar Emergência
  resource_ctrComandosEmergencia.Selecionar a opção Desativar Emergência

E selecionar a opção Modo de Operação
  resource_ctrComandosEmergencia.Selecionar a opção Modo de Operação