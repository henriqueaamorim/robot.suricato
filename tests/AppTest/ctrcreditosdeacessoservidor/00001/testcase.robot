*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrcreditosdeacessoservidor.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Créditos de Acesso
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crédito de Acesso | Individual | Empregado/Terceiro/Parceiro
  Então devo visualizar a tela: Créditos de Acesso

*** Keywords ***
Dado que eu acesse o menu: Registro | Crédito de Acesso | Individual | Empregado/Terceiro/Parceiro
  resource_mnu.Clicar No Menu Registro | Crédito de Acesso | Individual | Empregado/Terceiro/Parceiro

Então devo visualizar a tela: Créditos de Acesso
  resource_ctrcreditosdeacessoservidor.Acessar Tela Créditos de Acesso
