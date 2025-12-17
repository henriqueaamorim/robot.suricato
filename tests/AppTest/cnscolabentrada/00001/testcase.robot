*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctropcoesentrada.robot
Resource        ../../../../resource/app/resource_ctrentradavisitante.robot
Resource        ../../../../resource/app/resource_cnscolabentrada.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Entrada de Visitante - Colaborador Visitado
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitante
  Ao visualizar a tela: Opções de Entrada de Visitante
  E clicar no botão: Nova entrada
  Então devo visualizar a tela: Entrada de Visitante
  E clicar no botão: Pesquisa
  Então o navegador deve exibir a tela Entrada de Visitante - Colaborador Visitado - Filtro
  E novamente clicar no botão: Pesquisar
  Então devo visualizar a tela: Entrada de Visitante - Colaborador Visitado

*** Keywords ***
Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitante
  resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Visitante

Ao visualizar a tela: Opções de Entrada de Visitante
  resource_ctropcoesentrada.Acessar Tela Opções de Entrada de Visitante

E clicar no botão: Nova entrada
  resource_btn.Clicar No Botão Nova Entrada

Então devo visualizar a tela: Entrada de Visitante
  resource_ctrentradavisitante.Acessar Tela Entrada de Visitante

E clicar no botão: Pesquisa
  resource_btn.Clicar No Botão Pesquisar

Então o navegador deve exibir a tela Entrada de Visitante - Colaborador Visitado - Filtro
  resource_cnscolabentrada.Acessar Tela Entrada de Visitante - Colaborador Visitado - Filtro

E novamente clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Entrada de Visitante - Colaborador Visitado
  resource_cnscolabentrada.Acessar Tela Entrada de Visitante - Colaborador Visitado
