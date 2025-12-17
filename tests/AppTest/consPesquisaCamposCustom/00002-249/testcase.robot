*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmCamposCustomizaveis.robot
Resource        ../../../../resource/app/resource_consPesquisaCamposCustom.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***
Testcase: Acessar Tela: Campo não Customizavel
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Campos Customizáveis
  Quando eu visualizar a tela: Formulário de Campos Customizáveis
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Campos não Customizaveis

*** Keywords ***
Dado que eu acesse o menu: Configurações | Campos Customizáveis
  resource_mnu.Clicar No Menu Configurações | Campos Customizáveis

Quando eu visualizar a tela: Formulário de Campos Customizáveis
  resource_frmCamposCustomizaveis.Acessar Tela Formulário de Campos Customizáveis

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Campos não Customizaveis
  resource_consPesquisaCamposCustom.Acessar Tela Consulta de Campos não Customizaveis
