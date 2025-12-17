*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_conscrachaentregueempre.robot
Resource        ../../../../resource/app/resource_frmcrachaempregado.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Informe a finalidade para qual o testcase foi construído

*** Test Cases ***
Testcase: Acessar Tela Consulta de Crachá Titular
  [Tags]  PRINT  POPULATED  249  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Crachá
  Quando eu visualizar a tela: Crachá Titular (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Crachá Titular

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Crachá
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Crachá

Quando eu visualizar a tela: Crachá Titular (Atualização)
  resource_frmcrachaempregado.Acessar Tela Crachá Titular (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Crachá Titular
  resource_conscrachaentregueempre.Acessar Tela Consulta de Crachá Titular
