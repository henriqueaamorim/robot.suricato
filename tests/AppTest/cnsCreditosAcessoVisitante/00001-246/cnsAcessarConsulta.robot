*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrcreditosdeacessovisitante.robot
Resource        ../../../../resource/app/resource_cnsCreditosAcessoVisitante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Testcase: Acessar Tela Consulta de Créditos de Acesso
  [Tags]  PRINT  POPULATED   246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crédito de Acesso
  Quando clicar na aba: Visitantes
  Então devo visualizar a tela: Crédito de Acesso de Visitante

*** Keywords ***
Dado que eu acesse o menu: Registro | Crédito de Acesso
  resource_mnu.Clicar No Menu Registro | Crédito de Acesso | Individual | Visitante

Quando clicar na aba: Visitantes
  resource_cnsCreditosAcessoVisitante.Clicar Na Aba Visitante

Então devo visualizar a tela: Crédito de Acesso de Visitante
  resource_cnsCreditosAcessoVisitante.Acessar Tela Consulta de Créditos de Acesso de Visitante
