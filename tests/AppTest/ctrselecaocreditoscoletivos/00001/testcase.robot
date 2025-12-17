*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrcreditoscoletivos.robot
Resource        ../../../../resource/app/resource_ctrselecaocreditoscoletivos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Créditos de Acesso Coletivos (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crédito de Acesso | Coletivo
  Ao visualizar a tela: Créditos de Acesso Coletivos (Atualização)
  E clicar no botão: Seleção
  Então devo visualizar a tela: Abrangência

*** Keywords ***
Dado que eu acesse o menu: Registro | Crédito de Acesso | Coletivo
  resource_mnu.Clicar No Menu Registro | Crédito de Acesso | Coletivo

Ao visualizar a tela: Créditos de Acesso Coletivos (Atualização)
  resource_ctrcreditoscoletivos.Acessar Tela Créditos de Acesso Coletivos (Atualização)

E clicar no botão: Seleção
  resource_btn.Clicar No Botão Seleção

Então devo visualizar a tela: Abrangência
  resource_ctrselecaocreditoscoletivos.Acessar Tela Abrangência
