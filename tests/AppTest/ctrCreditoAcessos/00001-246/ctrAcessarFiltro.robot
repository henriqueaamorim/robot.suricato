*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrCreditoAcessos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Créditos de Acesso


*** Test Cases ***
Testcase: Acessar Tela: Créditos de Acesso
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Créditos de Acessos
  Quando clicar na aba: Crédito de Acesso
  Então devo visualizar a tela: Créditos de Acessos (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Registro | Créditos de Acessos
  resource_mnu.Clicar No Menu Registro | Créditos de Acessos

Quando clicar na aba: Crédito de Acesso
  resource_ctrCreditoAcessos.Clicar na Aba: Crédito de Acesso

Então devo visualizar a tela: Créditos de Acessos (Consulta)
  resource_ctrCreditoAcessos.Acessar Tela: Créditos de Acessos
