*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsCrachasMestre.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Crachá Mestre (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Crachá Mestre (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crachá | Mestre e Acesso Geral
  Quando visualizar a tela: Crachá Mestre (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Crachá Mestre (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Registro | Crachá | Mestre e Acesso Geral
  resource_mnu.Clicar No Menu Registro | Crachá | Mestre e Acesso Geral

Quando visualizar a tela: Crachá Mestre (Consulta)
  resource_cnsCrachasMestre.Acessar Tela Consulta de Crachás Mestre

E clicar no botão: Pesquisar registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Crachá Mestre (Filtro)  
    resource_cnsCrachasMestre.Acessar Tela: Crachá Mestre (Filtro)