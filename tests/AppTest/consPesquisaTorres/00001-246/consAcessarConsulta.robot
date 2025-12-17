*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consPesquisaTorres.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Torre (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Torre (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Elevador
  Então devo ver a tela: Torre (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Elevador
  resource_mnu.Clicar No Menu Estrutura | Elevador

Então devo ver a tela: Torre (Consulta)
  resource_consPesquisaTorres.Acessar Tela Consulta de Cadastro de Torres
