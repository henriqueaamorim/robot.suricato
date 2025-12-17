*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrImportadorRelatorios.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Importação de Relatórios
${APPNAME}     ctrImportadorRelatorios
${OBJETIVO}    Verificar todos os campos na tela: Importação de Relatórios.

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Importação de Relatórios
  [Tags]  VERIFY  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Importar
  Quando visualizar a tela: Importação de Relatórios
  Então devo verificar o campo: Arquivo (zip)
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Importar
  resource_mnu.Clicar No Menu Relatório | Importar

Quando visualizar a tela: Importação de Relatórios
  resource_ctrImportadorRelatorios.Acessar Tela Importação de Relatórios

Então devo verificar o campo: Arquivo (zip)
  resource_ctrImportadorRelatorios.Verificar o campo Arquivo (zip)

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
