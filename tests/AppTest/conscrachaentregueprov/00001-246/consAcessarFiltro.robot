*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcrachaprovisoriocolaborador.robot
Resource        ../../../../resource/app/resource_conscrachaentregueprov.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Crachá Provisório (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Crachá Provisório (Filtro)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Provisório | Colaborador
  Quando eu visualzar a tela: Crachá Provisório
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Crachá Provisório (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Provisório | Colaborador
  resource_mnu.Clicar No Menu Entrada | Provisório | Colaborador

Quando eu visualzar a tela: Crachá Provisório
  resource_conscrachaentregueprov.Acessar Tela: Crachá Provisório 

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Crachá Provisório (Filtro)
  resource_conscrachaentregueprov.Acessar Tela: Crachá Provisório (Filtro)
