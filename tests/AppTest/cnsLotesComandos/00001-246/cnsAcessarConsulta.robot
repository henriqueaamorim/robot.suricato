*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmLoteComandos.robot
Resource        ../../../../resource/app/resource_cnsLotesComandos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}
 
*** Variables ***
${OBJETIVO}   Acessar Tela Consulta de Lotes de Comandos (Consulta)

*** Test Cases ***
Testcase: Acessar Tela Consulta de Lotes de Comandos (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Alarme | Lote de Comando
  Então devo visualizar a tela: Lote de Comando (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Alarme | Lote de Comando
  resource_mnu.Clicar No Menu Dispositivo | Alarme | Lote de Comando

Então devo visualizar a tela: Lote de Comando (Consulta)
  resource_cnsLotesComandos.Acessar Tela Consulta de Lotes de Comandos
