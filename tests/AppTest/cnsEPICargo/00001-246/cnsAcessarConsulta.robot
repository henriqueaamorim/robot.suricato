*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsEPICargo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: EPI por Cargo (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: EPI por Cargo (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI por Cargo
  Então devo ver a tela: EPI por Cargo (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI por Cargo
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Cargo

Então devo ver a tela: EPI por Cargo (Consulta)
  resource_cnsEPICargo.Acessar Tela Cadastro de EPI por Cargo
