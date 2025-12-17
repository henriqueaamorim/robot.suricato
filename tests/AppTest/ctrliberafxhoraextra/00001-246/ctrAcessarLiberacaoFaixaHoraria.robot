*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrliberafxhoraextra.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Liberação de Faixa Horária Coletiva

*** Test Cases ***
Testcase: Acessar Tela: Liberação de Faixa Horária Coletiva
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Liberação Faixa Horária
  Então devo visualizar a tela: Liberação de Faixa Horária Coletiva

*** Keywords ***
Dado que eu acesse o menu: Registro | Liberação Faixa Horária
  resource_mnu.Clicar No Menu Registro | Liberação Faixa Horária | Coletiva

Então devo visualizar a tela: Liberação de Faixa Horária Coletiva
  resource_ctrliberafxhoraextra.Acessar Tela Liberação de Faixa Horária Coletiva
