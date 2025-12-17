*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsCentralGerenciamento.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Gateway (Consulta)
${SCREENNAME}  Gateway
${APPNAME}     cnsCentralGerenciamento

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Gateway (Consulta)
  [Tags]  VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Gateway
  Então devo ver a tela: Gateway (Consulta)
  E verificar a label: Código
  E verificar a label: Descrição
  E verificar a label: Diretório
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Gateway
  resource_mnu.Clicar No Menu Dispositivo | Gateway

Então devo ver a tela: Gateway (Consulta)
  resource_cnsCentralGerenciamento.Acessar Tela Consulta do Gateway

E verificar a label: Código
    resource_cnsCentralGerenciamento.Verificar a label Código

E verificar a label: Descrição
    resource_cnsCentralGerenciamento.Verificar a label Descrição

E verificar a label: Diretório  
    resource_cnsCentralGerenciamento.Verificar a label Diretório

E verificar se existe o campo Teste na tela
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"    
