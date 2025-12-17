*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consPesquisaTorres.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela: Consulta de Cadastro de Torres
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Configuração Elevadores | Cadastro de Torres
  Então devo ver a tela: Consulta de Cadastro de Torres
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Consulta de Cadastro de Torres (Filtro)


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Configuração Elevadores | Cadastro de Torres
  resource_mnu.Clicar No Menu Estrutura | Configuração Elevadores | Cadastro de Torres

Então devo ver a tela: Consulta de Cadastro de Torres
  resource_consPesquisaTorres.Acessar Tela Consulta de Cadastro de Torres

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Consulta de Cadastro de Torres (Filtro)
  resource_consPesquisaTorres.Acessar Tela Consulta de Cadastro de Torres (Filtro)