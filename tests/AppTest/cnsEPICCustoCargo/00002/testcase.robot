*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsEPICCustoCargo.robot
Resource    ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Cadastro de EPI por Centro de Custo e Cargo
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Centro de Custo e Cargo
  Então devo ver a tela: Cadastro de EPI por Centro de Custo e Cargo
  E clicar no botão: Pesquisar Registro
  Então devo ver a tela: Filtro de EPI por Centro de Custo e Cargo

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Centro de Custo e Cargo
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Centro de Custo e Cargo

Então devo ver a tela: Cadastro de EPI por Centro de Custo e Cargo
  resource_cnsEPICCustoCargo.Acessar Tela Cadastro de EPI por Centro de Custo e Cargo

E clicar no botão: Pesquisar Registro
    resource_btn.Clicar no botão Pesquisar Registros

Então devo ver a tela: Filtro de EPI por Centro de Custo e Cargo
    resource_cnsEPICCustoCargo.Acessar Tela Filtro de EPI por Centro de Custo e Cargo