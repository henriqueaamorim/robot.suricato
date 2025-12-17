*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctropcoesentradagrupo.robot
Resource        ../../../../resource/app/resource_consentradagrupo.robot
Resource        ../../../../resource/app/resource_conscrachagrupovisitante.robot
Resource        ../../../../resource/app/resource_ctrentradagrupo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Consulta de Crachás de Grupo de Visitantes (Consulta) (Busca Externa) através da tela Entrada de Grupo (Consulta)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Entrada de Grupo
  Quando eu visualizar a tela: Opções de Entrada de Grupo de Visitantes
  E clicar no botão: Últimas Visitas
  Então devo visualizar a tela: Entrada de Grupo (Consulta)
  Ao clicar no botão: Opções
  Então devo visualizar a tela: Entrada de Grupo de Visitante
  Ao clicar no botão: Buscar Dados Externos para Crachá do Responsável
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Crachás de Grupo de Visitantes (Consulta) (Busca Externa)

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

Então devo visualizar a tela: Entrada de Grupo de Visitante
  resource_ctrentradagrupo.Acessar Tela Entrada de Grupo de Visitante

Ao clicar no botão: Buscar Dados Externos para Crachá do Responsável
  resource_ctrentradagrupo.Clicar No Botão Buscar Dados Externos Para Crachá do Responsável

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Crachás de Grupo de Visitantes (Consulta) (Busca Externa)
  resource_conscrachagrupovisitante.Acessar Tela Consulta de Crachás de Grupo de Visitantes (Consulta) (Busca Externa)
