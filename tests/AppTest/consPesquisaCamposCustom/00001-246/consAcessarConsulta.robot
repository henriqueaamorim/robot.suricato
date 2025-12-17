*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmCamposCustomizaveis.robot
Resource        ../../../../resource/app/resource_consPesquisaCamposCustom.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Campo não Customizavel (Consulta)


*** Test Cases ***
Testcase: Acessar Tela: Campo não Customizavel (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configuração | Aplicação | Campos Customizáveis
  Então devo visualizar a tela: Campo não Customizavel (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Configuração | Aplicação | Campos Customizáveis
  resource_mnu.Clicar No Menu Configurações | Campos Customizáveis

Então devo visualizar a tela: Campo não Customizavel (Consulta)
  resource_frmCamposCustomizaveis.Acessar Tela: Campo não Customizavel - Consulta 

