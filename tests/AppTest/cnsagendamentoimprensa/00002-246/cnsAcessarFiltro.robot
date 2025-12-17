*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmagendamentoimprensa.robot
Resource        ../../../../resource/app/resource_cnsagendamentoimprensa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Consulta de Agendamento de Candidato (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Consulta de Agendamento de Candidato (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Candidato | Agendamento
  Quando eu visualizar a tela: Consulta de Agendamento de Candidato
  E clicar no botão: Pesquisar registro
  Então devo visualizar a tela: Consulta de Agendamento de Candidato (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Agendamento
  resource_mnu.Clicar No Menu Identificação | Candidato | Agendamento

Quando eu visualizar a tela: Consulta de Agendamento de Candidato
  resource_cnsagendamentoimprensa.Acessar Tela: Consulta de Agendamento de Candidato
 
E clicar no botão: Pesquisar registro
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Agendamento de Candidato (Filtro)
  resource_cnsagendamentoimprensa.Acessar Tela: Consulta de Agendamento de Candidato (Filtro)
