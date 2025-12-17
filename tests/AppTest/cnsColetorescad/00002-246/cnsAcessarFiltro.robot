*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsColetorescad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}  Acessar a tela: Codin (Filtro)

*** Test Cases ***
Testcase: Acessar a tela: Codin (Filtro)
  [Tags]  PRINT  POPULATED   246  247  248  249
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Dispositivo | Codin | Codin
  Quando ver a tela: Codin (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo ver a tela: Codin (Filtro)

  
*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Codin
  resource_mnu.Clicar No Menu Dispositivo | Codin | Cadastro de Codin

Quando ver a tela: Codin (Consulta)
  resource_cnsColetorescad.Acessar Tela Consulta de Codins

E clicar no botão: Pesquisar Registro
    resource_btn.Clicar No Botão Pesquisar Registros

Então devo ver a tela: Codin (Filtro)
    resource_cnsColetorescad.Acessar Tela: Codin (Filtro)
