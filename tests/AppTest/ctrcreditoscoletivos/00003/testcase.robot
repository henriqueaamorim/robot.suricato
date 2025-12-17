*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrcreditoscoletivos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos na tela Créditos de Acesso Coletivos (Atualização).


*** Test Cases ***

Testcase: Preencher todos os campos na tela Créditos de Acesso Coletivos (Atualização)
  [Tags]  REGISTER  POLYVALENT
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crédito de Acesso | Coletivo
  Então devo visualizar a tela: Créditos de Acesso Coletivos (Atualização)
  E preencher o campo Data Inicial "29/02/2022"
  E preencher o campo Data Final "20/03/2022"
  E preencher o campo Hora Inicial "13:00"
  E preencher o campo Hora Final "14:00"
  E preencher o campo Quantidade de Créditos "22"
  E selecionar a opção Excluir créditos do período 

*** Keywords ***
Dado que eu acesse o menu: Registro | Crédito de Acesso | Coletivo
  resource_mnu.Clicar No Menu Registro | Crédito de Acesso | Coletivo

Então devo visualizar a tela: Créditos de Acesso Coletivos (Atualização)
  resource_ctrcreditoscoletivos.Acessar Tela Créditos de Acesso Coletivos (Atualização)

E preencher o campo Data Inicial "${DATA}"
  resource_ctrcreditoscoletivos.Preencher o campo Data Inicial "${DATA}"

E preencher o campo Data Final "${DATA}"
  resource_ctrcreditoscoletivos.Preencher o campo Data Final "${DATA}"

E preencher o campo Hora Inicial "${HORA}"
  resource_ctrcreditoscoletivos.Preencher o campo Hora Inicial "${HORA}"

E preencher o campo Hora Final "${HORA}"
  resource_ctrcreditoscoletivos.Preencher o campo Hora Final "${HORA}"

E preencher o campo Quantidade de Créditos "${CREDITO}"
  resource_ctrcreditoscoletivos.Preencher o campo Quantidade de Créditos "${CREDITO}"

E selecionar a opção Excluir créditos do período 
  resource_ctrcreditoscoletivos.Selecionar a opção Excluir créditos do período