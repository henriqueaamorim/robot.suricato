*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consAprovacacaoVisitasSolicitadas.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Aprovação de Visita (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Aprovação de Visita (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Visitante | Aprovar Solicitação de Visita
  Então devo ver a tela: Aprovação de Visita (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Visitante | Aprovar Solicitação de Visita
  resource_mnu.Clicar No Menu Identificação | Visitante | Aprovar Solicitação de Visita

Então devo ver a tela: Aprovação de Visita (Consulta)
  resource_consAprovacacaoVisitasSolicitadas.Acessar Tela: Aprovação de Visita 
