*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsModeloColetores.robot
Resource        ../../../../resource/app/resource_frmColetores.robot
Resource        ../../../../resource/app/resource_cnsColetorescad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}  Acessar Tela: Modelo de Equipamento (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Modelo de Equipamento (Filtro)
  [Tags]  PRINT  POPULATED   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Modelo de Equipamento
  Quando vizualizar a tela: Modelo Nde Equipamento (Consulta)
  E clicar no botão: Pesquisar registro
  Então devo visualizar a tela: Modelo de Equipamento (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Modelo de Equipamento
  resource_mnu.Clicar no menu Dispositivo | Codin | Modelo de Equipamento

Quando vizualizar a tela: Modelo Nde Equipamento (Consulta)
  resource_cnsModeloColetores.Acessar Tela Consulta de Modelo de Equipamento

E clicar no botão: Pesquisar registro
    resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Modelo de Equipamento (Filtro)
    resource_cnsModeloColetores.Acessar Tela Consulta de Modelo de Equipamento (Filtro)
