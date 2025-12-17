*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_conscrachaentregueempre.robot
Resource    ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Crachá Titular (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Crachá Titular (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Crachá
  Quando visualizar a tela: Crachá Titular (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo visualizar a tela: Crachá Titular (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Crachá
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Crachá

Quando visualizar a tela: Crachá Titular (Consulta)
  resource_conscrachaentregueempre.Acessar Tela Consulta de Crachá Titular

E clicar no botão: Pesquisar Registro
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Crachá Titular (Filtro)
  resource_conscrachaentregueempre.Acessar Tela Filtro de Crachá Titular