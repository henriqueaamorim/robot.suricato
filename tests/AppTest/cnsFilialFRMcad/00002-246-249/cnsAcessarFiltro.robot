*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsFilialFRMcad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Filial (Filtro)


*** Test Cases ***
Testcase: Acessar Tela: Filial (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Filial
  Quando visualizar a tela: Filial (Consulta)
  E clicar no botão Pesquisar Registro
  Então devo visualizar a tela: Filial (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Filial
  resource_mnu.Clicar No Menu Estrutura | Empresa | Filial

Quando visualizar a tela: Filial (Consulta)
  resource_cnsFilialFRMcad.Acessar Tela Consulta de Filial

E clicar no botão Pesquisar Registro
    resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Filial (Filtro)
    resource_cnsFilialFRMcad.Acessar Tela Consulta de Empresas (Filtro)