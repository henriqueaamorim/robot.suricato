*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsEPICargo.robot
Resource    ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: EPI por Cargo (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: EPI por Cargo (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI por Cargo
  Então devo ver a tela: EPI por Cargo (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo ver a tela: EPI por Cargo (Filtro)


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI por Cargo
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Cargo

Então devo ver a tela: EPI por Cargo (Consulta)
  resource_cnsEPICargo.Acessar Tela Cadastro de EPI por Cargo

E clicar no botão: Pesquisar Registro
    resource_btn.Clicar no botão Pesquisar Registros

Então devo ver a tela: EPI por Cargo (Filtro)
  resource_cnsEPICargo.Acessar Tela de EPI por Cargo (Filtro)