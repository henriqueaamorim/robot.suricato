*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_consColaboradores.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Empregado (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Empregado (Filtro)
  [Tags]  PRINT  POPULATED   246
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Empregado
  Quando visualizar a tela: Empregado (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo visualizar a tela: Empregado (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Empregado
  resource_mnu.Clicar No Menu Identificação | Colaborador | Empregado

Quando visualizar a tela: Empregado (Consulta)
  resource_consColaboradoresporFilial.Acessar Tela Consulta de Colaboradores por Filial

E clicar no botão: Pesquisar Registro
    resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Empregado (Filtro)
    resource_consColaboradoresporFilial.Acessar Tela Filtro de Colaboradores por Filial - Filtro

