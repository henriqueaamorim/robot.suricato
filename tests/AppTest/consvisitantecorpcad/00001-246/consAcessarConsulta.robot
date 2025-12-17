*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consvisitantecorpcad.robot
Resource        ../../../../resource/app/resource_frmvisitantecorp.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Visitante (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Visitante (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Visitante | Visitante
  Então devo visualizar a tela: Visitante (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Visitante | Visitante
  resource_mnu.Clicar No Menu Identificação | Visitante | Cadastro de Visitante

Então devo visualizar a tela: Visitante (Consulta)
  resource_consvisitantecorpcad.Acessar Tela: Visitante (Consulta)
