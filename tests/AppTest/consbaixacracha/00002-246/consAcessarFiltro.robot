*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consbaixacracha.robot
Resource    ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Baixa de Crachá Titular (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Baixa de Crachá Titular (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Baixa de Crachá
  Quando visualizar a tela: Baixa de Crachá Titular (Consulta)
  E clicar no botão: Pesquisar registro
  Então devo visualizar a tela: Filtro Baixa de Crachá Titular (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Baixa de Crachá
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Baixa de Crachá

Quando visualizar a tela: Baixa de Crachá Titular (Consulta)
  resource_consbaixacracha.Acessar Tela Baixa de Crachá Titular

E clicar no botão: Pesquisar registro
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Filtro Baixa de Crachá Titular (Filtro)
    resource_consbaixacracha.Acessar Tela Filtro Baixa de Crachá Titular