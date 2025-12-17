*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_conscrachaentregueempre.robot
Resource        ../../../../resource/app/resource_frmcrachaempregado.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}  Acessar Tela: Crachá Titular (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Crachá Titular (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Crachá
  Então devo visualizar a tela: Crachá Titular (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Crachá
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Crachá

Então devo visualizar a tela: Crachá Titular (Consulta)
  resource_conscrachaentregueempre.Acessar Tela Consulta de Crachá Titular
