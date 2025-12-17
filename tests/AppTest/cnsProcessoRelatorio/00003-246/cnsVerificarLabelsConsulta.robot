*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmprocessorelatorio.robot
Resource        ../../../../resource/app/resource_cnsProcessoRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Verificar todas as labels na Tela: Processo de Relatório (Consulta)
${SCREENNAME}   Processo de Relatório
${APPNAME}      cnsProcessoRelatorio

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Processo de Relatório (Consulta)
  [Tags]  VERIFY    246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Relatório
  Quando visualizar a tela: Processo de Relatório (Consulta)
  Então devo verificar a label: Código
  E verificar a label: Descrição
  E verificar se existe o campo Teste na tela
 

*** Keywords ***
Dado que eu acesse o menu: Processo | Relatório
  resource_mnu.Clicar No Menu Processo | Relatório

Quando visualizar a tela: Processo de Relatório (Consulta)
  resource_cnsProcessoRelatorio.Acessar Tela Processo de Relatório 

Então devo verificar a label: Código
  resource_cnsProcessoRelatorio.Verificar a label: Código

E verificar a label: Descrição
  resource_cnsProcessoRelatorio.Verificar a label: Descrição

E verificar se existe o campo Teste na tela
   resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"

