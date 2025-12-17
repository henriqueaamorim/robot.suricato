*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmprocedimentotratalarme.robot
Resource        ../../../../resource/app/resource_consprocedimentoalarme.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Procedimento de Alarme (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Procedimento de Alarme (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Alarme | Procedimento de Alarme
  Quando visualizar a tela: Procedimento de Alarme (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Procedimento de Alarme (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Alarme | Procedimento de Alarme
  resource_mnu.Clicar No Menu Dispositivo | Alarme | Procedimento de Alarme

Quando visualizar a tela: Procedimento de Alarme (Consulta)
  resource_consprocedimentoalarme.Acessar Tela Consulta de Procedimentos para Tratamento de Alarmes

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Procedimento de Alarme (Filtro)
  resource_consprocedimentoalarme.Acessar Tela Consulta de Procedimentos para Tratamento de Alarmes
