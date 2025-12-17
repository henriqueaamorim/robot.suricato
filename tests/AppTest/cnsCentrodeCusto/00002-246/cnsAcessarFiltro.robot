*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsCentrodeCusto.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar tela Consulta: Centro de Custo (Filtro)

*** Test Cases ***
Testcase: Acessar tela Consulta: Centro de Custo (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Centro de Custo
  Quando visualizar a tela: Centro de Custo (Consulta)
  E clicar no botão Pesquisar Registro
  Então devo visualizar a tela: Centro de Custo (Filtro)  

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Centro de Custo
  resource_mnu.Clicar No Menu Estrutura | Empresa | Centro de Custo

Quando visualizar a tela: Centro de Custo (Consulta)
  resource_cnsCentrodeCusto.Acessar Tela Consulta de Centro de Custo

E clicar no botão Pesquisar Registro
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Centro de Custo (Filtro) 
    resource_cnsCentrodeCusto.Acessar Tela Consulta de Centro de Custo (Filtro)