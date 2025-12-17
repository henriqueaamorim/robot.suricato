*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsTipoRefei.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Tipo de Refeição (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Tipo de Refeição (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configuração | Tipo de Refeição
  Quando visualizar a tela: Tipo de Refeição (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Tipo de Refeição (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Configuração | Tipo de Refeição
  resource_mnu.Clicar No Menu Configurações | Cadastro de Tipo de Refeição

Quando visualizar a tela: Tipo de Refeição (Consulta)
  resource_cnsTipoRefei.Acessar Tela Consulta de Tipo de Refeição

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Tipo de Refeição (Filtro)  
   resource_cnsTipoRefei.Acessar Tipo de Refeição - Filtro