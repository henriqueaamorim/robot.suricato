*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consTipodeContrato.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar tela: Tipo de Contrato (Filtro)

*** Test Cases ***
Testcase: Acessar tela: Tipo de Contrato (Filtro)
  [Tags]  PRINT  POPULATED    246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Tipo de Contrato
  Então devo ver a tela: Tipo de Contrato (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo vizualizar a tela: Tipo de Contrato (Filtro)


*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Tipo de Contrato
  resource_mnu.Clicar No Menu Identificação | Colaborador | Tipo de Contrato

Então devo ver a tela: Tipo de Contrato (Consulta)
  resource_consTipodeContrato.Acessar Tela Tipo de Contrato (Consulta)

E clicar no botão: Pesquisar registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo vizualizar a tela: Tipo de Contrato (Filtro)
    resource_consTipodeContrato.Acessar Tela de Tipo de Contrato (Filtro)  
