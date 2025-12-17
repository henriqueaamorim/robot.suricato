*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmLoteComandos.robot
Resource        ../../../../resource/app/resource_cnsLotesComandos.robot
Resource    ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}
 
*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Lote de Comando (Filtro)
${SCREENNAME}  Lote de Comando
${APPNAME}     cnsLotesComandos

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Lote de Comando (Filtro)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Alarme | Lote de Comando
  Quando visualizar a tela: Lote de Comando (Consulta)
  E clicar no botão Pesquisar Registros
  Então devo visualizar a tela:Lote de Comando (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Código do Lote	
  E verificar o campo: Descrição
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Alarme | Lote de Comando
  resource_mnu.Clicar No Menu Dispositivo | Alarme | Lote de Comando

Quando visualizar a tela: Lote de Comando (Consulta)
  resource_cnsLotesComandos.Acessar Tela Consulta de Lotes de Comandos

E clicar no botão Pesquisar Registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela:Lote de Comando (Filtro)
    resource_cnsLotesComandos.Acessar Tela Filtro de Lotes de Comandos

E verificar a label: Pesquisa
  resource_cnsLotesComandos.Verificar a label Pesquisa

E verificar o campo: Código do Lote	
  resource_cnsLotesComandos.Verificar o campo Código do Lote

E verificar o campo: Descrição
  resource_cnsLotesComandos.Verificar o campo Descrição

E verificar se existe o campo Teste na tela    
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"