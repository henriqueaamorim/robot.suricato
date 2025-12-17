*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsReacoes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Reação de Alarme (Filtro)
${SCREENNAME}  Reação de Alarme
${APPNAME}     cnsReacoes

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Reação de Alarme (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Alarme | Reação de Alarme
  Quando ver a tela: Reação de Alarme (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo ver a tela: Reação de Alarme (Filtro)
  E verificar o campo: Reação
  E verificar o campo: Lote	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Alarme | Reação de Alarme
  resource_mnu.Clicar No Menu Dispositivo | Alarme | Reação de Alarme

Quando ver a tela: Reação de Alarme (Consulta)
  resource_cnsReacoes.Acessar Tela Consulta de Reações

E clicar no botão: Pesquisar Registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo ver a tela: Reação de Alarme (Filtro)
  resource_cnsReacoes.Acessar Tela Filtro de Reações

E verificar o campo: Reação
    resource_cnsReacoes.Verificar o campo Reação

E verificar o campo: Lote	  
    resource_cnsReacoes.Verificar o campo Lote

E verificar se existe o campo Teste na tela 
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
