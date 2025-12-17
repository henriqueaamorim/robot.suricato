*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctropcoesentradagrupo.robot
Resource        ../../../../resource/app/resource_consentradagrupo.robot
Resource        ../../../../resource/app/resource_ctrportariabaixa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Crachá de Visitantes
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Entrada de Grupo
  Quando eu visualizar a tela: Opções de Entrada de Grupo de Visitantes
  E clicar no botão: Últimas Visitas
  Então devo visualizar a tela: Entrada de Grupo (Consulta)
  Ao clicar no botão: Opções
  Então devo visualizar a tela: Crachá de Visitantes

*** Keywords ***
Dado que eu acesse o menu: Entrada | Visitante | Entrada de Grupo
  resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Grupo

Quando eu visualizar a tela: Opções de Entrada de Grupo de Visitantes
  resource_ctropcoesentradagrupo.Acessar Tela Opções de Entrada de Grupo de Visitantes

E clicar no botão: Últimas Visitas
  resource_btn.Clicar No Botão Últimas Visitas

Então devo visualizar a tela: Entrada de Grupo (Consulta)
  resource_consentradagrupo.Acessar Tela Entrada de Grupo (Consulta)

Ao clicar no botão: Opções
  resource_btn.Clicar No Botão Opções

Então devo visualizar a tela: Crachá de Visitantes
  resource_ctrportariabaixa.Acessar Tela Crachá de Visitantes
