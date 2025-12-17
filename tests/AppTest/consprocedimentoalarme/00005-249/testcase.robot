*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmprocedimentotratalarme.robot
Resource        ../../../../resource/app/resource_consprocedimentoalarme.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Procedimentos para Tratamento de Alarmes
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Alarme | Procedimento de Alarme
  Quando eu visualizar a tela: Procedimentos para Tratamento de Alarmes (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Procedimentos para Tratamento de Alarmes

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Alarme | Procedimento de Alarme
  resource_mnu.Clicar No Menu Dispositivo | Alarme | Procedimento de Alarme

Quando eu visualizar a tela: Procedimentos para Tratamento de Alarmes (Atualização)
  resource_frmprocedimentotratalarme.Acessar Tela Procedimentos para Tratamento de Alarmes (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Procedimentos para Tratamento de Alarmes
  resource_consprocedimentoalarme.Acessar Tela Consulta de Procedimentos para Tratamento de Alarmes
