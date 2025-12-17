*** Settings ***
Resource        ../../../resource/resource_login.robot
Resource        ../../../resource/app/resource_ctropcoesentrada.robot
Resource        ../../../resource/app/resource_consultimasvisitas.robot
Resource        ../../../resource/app/resource_ctrentradavisitante.robot
Resource        ../../../resource/app/resource_ctrTermoConsentimentoPdf.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}  Realizar a consulta das últimas visitas e abrir a tela de termo de consentimento


*** Test Cases ***

Testcase: Acessar Tela Consulta de Últimas Visitas (Filtro)
  [Tags]  PRINT  ISSUES  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitante
  Quando eu visualizar a tela: Opções de Entrada de Visitante
  E clicar no botão: Últimas Visitas
  E clicar no botão: Pesquisar Resgistros
  E clicar no botão: Editar esta linha "2"
  E clicar no botão: Termo de Consentimento
  Então devo visualizar a tela: Termo de Consentimento
  
  

*** Keywords ***
Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitante
  resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Visitante

Quando eu visualizar a tela: Opções de Entrada de Visitante
  resource_ctropcoesentrada.Acessar Tela Opções de Entrada de Visitante

E clicar no botão: Últimas Visitas
  resource_btn.Clicar No Botão Últimas Visitas

E clicar no botão: Pesquisar Resgistros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

E clicar no botão: Editar esta linha "${NUMERO_TR}"
  resource_consultimasvisitas.Clicar no botão editar "${NUMERO_TR}"

E clicar no botão: Termo de Consentimento
  resource_btn.Clicar No Botão Termo de Consentimento (Inferior)

Então devo visualizar a tela: Termo de Consentimento
  resource_ctrTermoConsentimentoPdf.Printar Tela Termo de Consentimento
  