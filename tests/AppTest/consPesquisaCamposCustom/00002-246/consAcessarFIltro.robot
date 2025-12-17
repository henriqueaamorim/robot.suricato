*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmCamposCustomizaveis.robot
Resource        ../../../../resource/app/resource_consPesquisaCamposCustom.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Campo não Customizavel (Filtro)


*** Test Cases ***
Testcase: Acessar Tela: Campo não Customizavel (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configuração | Aplicação | Campos Customizáveis
  Quando eu visualizar a tela: Campo não Customizavel (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Campo não Customizavel (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Configuração | Aplicação | Campos Customizáveis
  resource_mnu.Clicar No Menu Configurações | Campos Customizáveis

Quando eu visualizar a tela: Campo não Customizavel (Consulta)
  resource_frmCamposCustomizaveis.Acessar Tela: Campo não Customizavel - Consulta 

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Campo não Customizavel (Filtro)
  resource_frmCamposCustomizaveis.Acessar Tela: Campo não Customizavel - Filtro 
