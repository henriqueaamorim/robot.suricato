*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmLoteComandos.robot
Resource        ../../../../resource/app/resource_cnsLotesComandos.robot
Resource    ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}
 
*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Lote de Comando (Consulta)
${SCREENNAME}  Lote de Comando
${APPNAME}     cnsLotesComandos

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Lote de Comando (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Alarme | Lote de Comando
  Quando visualizar a tela: Lote de Comando (Consulta)
  E verificar a label: Código do Lote
  E verificar a label: Descrição
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Alarme | Lote de Comando
  resource_mnu.Clicar No Menu Dispositivo | Alarme | Lote de Comando

Quando visualizar a tela: Lote de Comando (Consulta)
  resource_cnsLotesComandos.Acessar Tela Consulta de Lotes de Comandos

E verificar a label: Código do Lote
        resource_cnsLotesComandos.Verificar a label Código do Lote

E verificar a label: Descrição
    resource_cnsLotesComandos.Verificar a label Descrição

E verificar se existe o campo Teste na tela    
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"