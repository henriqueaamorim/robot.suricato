*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrselecaocolbaixahistbeneficios.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Baixa Coletiva de Históricos

*** Test Cases ***
Testcase: Acessar Tela: Baixa Coletiva de Históricos
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Benefício | Histórico
  Então devo visualizar a tela: Baixa Coletiva de Históricos

*** Keywords ***
Dado que eu acesse o menu: Registro | Benefício | Histórico
  resource_mnu.Clicar No Menu Registro | Benefício | Histórico

Então devo visualizar a tela: Baixa Coletiva de Históricos
  resource_ctrselecaocolbaixahistbeneficios.Acessar Tela Baixa Coletiva de Históricos
