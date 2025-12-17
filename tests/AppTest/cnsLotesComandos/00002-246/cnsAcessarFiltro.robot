*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmLoteComandos.robot
Resource        ../../../../resource/app/resource_cnsLotesComandos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}
 
*** Variables ***
${OBJETIVO}   Acessar Tela Consulta de Lotes de Comandos (Filtro)

*** Test Cases ***
Testcase: Acessar Tela Consulta de Lotes de Comandos (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Alarme | Lote de Comando
  Quando eu visualizar a tela: Lote de Comando (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo visualizar a tela: Lote de Comando (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Alarme | Lote de Comando
  resource_mnu.Clicar No Menu Dispositivo | Alarme | Lote de Comando

Quando eu visualizar a tela: Lote de Comando (Consulta)
  resource_cnsLotesComandos.Acessar Tela Consulta de Lotes de Comandos

E clicar no botão: Pesquisar Registro
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Lote de Comando (Filtro)
  resource_cnsLotesComandos.Acessar Tela Filtro de Lotes de Comandos
