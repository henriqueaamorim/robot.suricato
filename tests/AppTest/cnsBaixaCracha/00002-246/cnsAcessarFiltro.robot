*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsBaixaCracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Testcase: Acessar Tela Consulta de Baixa Autorização Entrada (Filtro)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Autorização | Baixa de Autorização
  Quando visualizar a tela: Baixa Autorização Entrada (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Baixa Autorização Entrada (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Autorização | Baixa de Autorização
  resource_mnu.Clicar No Menu Entrada | Autorização | Baixa de Autorização

Quando visualizar a tela: Baixa Autorização Entrada (Consulta)
  resource_cnsBaixaCracha.Acessar Tela: Baixa Autorização Entrada (Consulta)

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Baixa Autorização Entrada (Filtro)
  resource_cnsBaixaCracha.Acessar Tela: Baixa Autorização Entrada (Filtro)