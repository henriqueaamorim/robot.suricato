*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consbaixacracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Baixa de Crachá Titular (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Baixa de Crachá Titular (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Baixa de Crachá
  Então devo visualizar a tela: Baixa de Crachá Titular (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Baixa de Crachá
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Baixa de Crachá

Então devo visualizar a tela: Baixa de Crachá Titular (Consulta)
  resource_consbaixacracha.Acessar Tela Baixa de Crachá Titular
