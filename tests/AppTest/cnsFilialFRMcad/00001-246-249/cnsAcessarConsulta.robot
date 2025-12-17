*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsFilialFRMcad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Filial (Consulta)


*** Test Cases ***
Testcase: Acessar Tela: Filial (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Filial
  Então devo visualizar a tela: Filial (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Filial
  resource_mnu.Clicar No Menu Estrutura | Empresa | Filial

Então devo visualizar a tela: Filial (Consulta)
  resource_cnsFilialFRMcad.Acessar Tela Consulta de Filial
