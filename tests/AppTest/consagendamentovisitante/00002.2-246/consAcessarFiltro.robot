*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consagendamentovisitante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Solicitação de Visita (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Solicitação de Visita (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Visitante | Solicitar Aprovação de Visita
  Quando visualizar a tela: Solicitação de Visita (Consulta)
  E clicar no botão: Pesquisar registro
  Então devo visualizar a tela: Solicitação de Visita (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Visitante | Solicitar Aprovação de Visita
  resource_mnu.Clicar No Menu Identificação | Visitante | Solicitar Aprovação de Visita 

Quando visualizar a tela: Solicitação de Visita (Consulta)
  resource_consagendamentovisitante.Acessar Tela: Solicitação de Visita (Consulta)

E clicar no botão: Pesquisar registro
    resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Solicitação de Visita (Filtro)  
    resource_consagendamentovisitante.Acessar Tela: Solicitação de Visita (Filtro)