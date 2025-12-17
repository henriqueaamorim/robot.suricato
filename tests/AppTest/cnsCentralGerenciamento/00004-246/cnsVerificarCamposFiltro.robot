*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsCentralGerenciamento.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas os campos na tela: Gateway (Filtro)
${SCREENNAME}  Gateway
${APPNAME}     cnsCentralGerenciamento

*** Test Cases ***
Testcase: Verificar todas os campos na tela: Gateway (Filtro)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Gateway
  Quando ver a tela: Gateway (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo ver a tela: Gateway (Filtro)
  E verificar a label: Filtrar
  E verificar o campo: Código
  E verificar o campo: Descrição
  E verificar se existe o campo Teste na tela



*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Gateway
  resource_mnu.Clicar No Menu Dispositivo | Gateway

Quando ver a tela: Gateway (Consulta)
  resource_cnsCentralGerenciamento.Acessar Tela Consulta do Gateway

E clicar no botão: Pesquisar Registro
    resource_btn.Clicar no Botão Pesquisar Registros

Então devo ver a tela: Gateway (Filtro)
    resource_cnsCentralGerenciamento.Acessar Tela Consulta do Gateway (Filtro)  

E verificar a label: Filtrar
    resource_cnsCentralGerenciamento.Verificar a label Filtrar

E verificar o campo: Código
    resource_cnsCentralGerenciamento.Verificar o campo Código

E verificar o campo: Descrição    
    resource_cnsCentralGerenciamento.Verificar o campo Descrição

E verificar se existe o campo Teste na tela
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"    