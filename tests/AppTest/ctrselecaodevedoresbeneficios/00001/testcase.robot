*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrdistribuicaobeneficiocoletiva.robot
Resource        ../../../../resource/app/resource_ctrselecaodevedoresbeneficios.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Abrangência
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Benefício | Atribuição
  Ao visualizar a tela: Atribuição de Benefícios
  E clicar no botão: Seleção
  Então devo visualizar a tela: Abrangência

*** Keywords ***
Dado que eu acesse o menu: Registro | Benefício | Atribuição
  resource_mnu.Clicar No Menu Registro | Benefício | Atribuição

Ao visualizar a tela: Atribuição de Benefícios
  resource_ctrdistribuicaobeneficiocoletiva.Acessar Tela Atribuição de Benefícios

E clicar no botão: Seleção
  resource_btn.Clicar No Botão Seleção

Então devo visualizar a tela: Abrangência
  resource_ctrselecaodevedoresbeneficios.Acessar Tela Abrangência
