*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmacessorios.robot
Resource        ../../../../resource/app/resource_cnsacessorios.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Acessório (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Acessório (Consulta)
  [Tags]  PRINT  POPULATED  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Cadastro | Acessórios
  Então devo visualizar a tela: Acessório (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Veículo | Cadastro | Acessórios
  resource_mnu.Clicar No Menu Veículos | Cadastro | Acessórios

Então devo visualizar a tela: Acessório (Consulta)
  resource_cnsacessorios.Acessar Tela Consulta de Acessórios

