*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsReport.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Modelo de Relatório para Processo Automático
${APPNAME}     cnsReport
${OBJETIVO}    Verificar todos os campos na tela Modelo de Relatório para Processo Automático.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Modelo de Relatório para Processo Automático
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Layout de Relatório
  Então devo visualizar a tela: Modelo de Relatório para Processo Automático
  E verificar o campo Nome
  E verificar o campo Título
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Processo | Layout de Relatório
  resource_mnu.Clicar No Menu Processo | Layout de Relatório

Então devo visualizar a tela: Modelo de Relatório para Processo Automático
  resource_cnsReport.Acessar Tela Modelo de Relatório para Processo Automático

E verificar o campo Nome
  resource_cnsReport.Verificar o campo Nome

E verificar o campo Título
  resource_cnsReport.Verificar o campo Título

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"