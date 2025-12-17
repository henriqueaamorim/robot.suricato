*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrcreditosdeacessovisitante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos na tela Consulta de Créditos de Acesso.


*** Test Cases ***

Testcase: Preencher todos os campos na tela Consulta de Créditos de Acesso
  [Tags]  REGISTER  POLYVALENT
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crédito de Acesso | Individual | Visitante
  Então devo visualizar a tela: Créditos de Acesso
  E preencher o campo Código do Visitante "3"
  E preencher o campo Data Inicial "13/03/2022"
  E preencher o campo Data Final "22/04/2022"

*** Keywords ***
Dado que eu acesse o menu: Registro | Crédito de Acesso | Individual | Visitante
  resource_mnu.Clicar No Menu Registro | Crédito de Acesso | Individual | Visitante

Então devo visualizar a tela: Créditos de Acesso
  resource_ctrcreditosdeacessovisitante.Acessar Tela Créditos de Acesso

E preencher o campo Código do Visitante "${CÓDIGO_DO_VISITANTE}"
  resource_ctrcreditosdeacessovisitante.Preencher o campo Código do Visitante "${CÓDIGO_DO_VISITANTE}"

E preencher o campo Data Inicial "${DATA}"
  resource_ctrcreditosdeacessovisitante.Preencher o campo Data Inicial "${DATA}"

E preencher o campo Data Final "${DATA}"
  resource_ctrcreditosdeacessovisitante.Preencher o campo Data Final "${DATA}"
