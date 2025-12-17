*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsEPICentroCusto.robot


Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${OBJETIVO}     Acessar tela: EPI por Centro de Custo (Consulta)
${SCREENNAME}   EPI por Centro de Custo
${APPNAME}      cnsEPICentroCusto

*** Test Cases ***
Testcase: Acessar tela: EPI por Centro de Custo (Consulta)
  [Tags]  PRINT  POPULATED   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI | EPI por Centro de Custo
  Então devo ver a tela: EPI por Centro de Custo (Consulta)



*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI | EPI por Centro de Custo
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Centro de Custo

Então devo ver a tela: EPI por Centro de Custo (Consulta)
  resource_cnsEPICentroCusto.Acessar Tela Cadastro de EPI por Centro de Custo


