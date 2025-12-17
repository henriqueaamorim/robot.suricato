*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consAprovacacaoVisitasSolicitadas.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Aprovação de Visita (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Aprovação de Visita (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Visitante | Aprovar Solicitação de Visita
  Quando visualizar a tela: Aprovação de Visita (Consulta)
  E clicar no botão: Pesquisar registro
  Então devo visualizar a tela: Aprovação de Visita (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Visitante | Aprovar Solicitação de Visita
  resource_mnu.Clicar No Menu Identificação | Visitante | Aprovar Solicitação de Visita

Quando visualizar a tela: Aprovação de Visita (Consulta)
  resource_consAprovacacaoVisitasSolicitadas.Acessar Tela: Aprovação de Visita 

E clicar no botão: Pesquisar registro
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Aprovação de Visita (Filtro)
    resource_consAprovacacaoVisitasSolicitadas.Acessar Tela: Aprovação de Visita (Filtro)
