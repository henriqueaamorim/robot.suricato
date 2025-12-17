*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsEPICCustoCargo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Cadastro de EPI por Centro de Custo e Cargo (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Cadastro de EPI por Centro de Custo e Cargo (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Centro de Custo e Cargo
  Então devo ver a tela: Cadastro de EPI por Centro de Custo e Cargo (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Centro de Custo e Cargo
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Centro de Custo e Cargo

Então devo ver a tela: Cadastro de EPI por Centro de Custo e Cargo (Consulta)
  resource_cnsEPICCustoCargo.Acessar Tela Cadastro de EPI por Centro de Custo e Cargo
