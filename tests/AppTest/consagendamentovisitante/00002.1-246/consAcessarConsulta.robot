*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consagendamentovisitante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Solicitação de Visita (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Solicitação de Visita (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Visitante | Solicitar Aprovação de Visita 
  Então devo visualizar a tela: Solicitação de Visita (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Visitante | Solicitar Aprovação de Visita 
  resource_mnu.Clicar No Menu Identificação | Visitante | Solicitar Aprovação de Visita

Então devo visualizar a tela: Solicitação de Visita (Consulta)
  resource_consagendamentovisitante.Acessar Tela: Solicitação de Visita (Consulta)
