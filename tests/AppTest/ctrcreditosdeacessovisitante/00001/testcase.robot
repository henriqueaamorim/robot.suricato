*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrcreditosdeacessovisitante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Consulta de Créditos de Acesso
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crédito de Acesso | Individual | Visitante
  Então devo visualizar a tela: Créditos de Acesso

*** Keywords ***
Dado que eu acesse o menu: Registro | Crédito de Acesso | Individual | Visitante
  resource_mnu.Clicar No Menu Registro | Crédito de Acesso | Individual | Visitante

Então devo visualizar a tela: Créditos de Acesso
  resource_ctrcreditosdeacessovisitante.Acessar Tela Créditos de Acesso
