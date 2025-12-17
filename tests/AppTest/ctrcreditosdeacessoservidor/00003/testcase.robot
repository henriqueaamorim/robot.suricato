*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrcreditosdeacessoservidor.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos na tela Créditos de Acesso.


*** Test Cases ***

Testcase: Preencher todos os campos na tela Créditos de Acesso
  [Tags]  REGISTER  POLYVALENT
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crédito de Acesso | Individual | Empregado/Terceiro/Parceiro
  Então devo visualizar a tela: Créditos de Acesso
  E preencher o campo Código do Colaborador "2"
  E preencher o campo Data Inicial "13/02/2022"
  E preencher o campo Data Final "23/03/2022"

*** Keywords ***
Dado que eu acesse o menu: Registro | Crédito de Acesso | Individual | Empregado/Terceiro/Parceiro
  resource_mnu.Clicar No Menu Registro | Crédito de Acesso | Individual | Empregado/Terceiro/Parceiro

Então devo visualizar a tela: Créditos de Acesso
  resource_ctrcreditosdeacessoservidor.Acessar Tela Créditos de Acesso

E preencher o campo Código do Colaborador "${CÓDIGO_DO_COLABORADOR}"
  resource_ctrcreditosdeacessoservidor.Preencher o campo Código do Colaborador "${CÓDIGO_DO_COLABORADOR}"

E preencher o campo Data Inicial "${DATA}"
  resource_ctrcreditosdeacessoservidor.Preencher o campo Data Inicial "${DATA}"

E preencher o campo Data Final "${DATA}"
  resource_ctrcreditosdeacessoservidor.Preencher o campo Data Final "${DATA}"
