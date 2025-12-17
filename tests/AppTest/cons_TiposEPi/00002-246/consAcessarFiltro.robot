*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cons_TiposEPi.robot
Resource    ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Cadastro Tipos Equipamento de Proteção Individual (Filtro)


*** Test Cases ***
Testcase: Acessar Tela: Cadastro Tipos Equipamento de Proteção Individual (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI | Tipos de EPI
  Quando ver a tela: Cadastro Tipos Equipamento de Proteção Individual (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo visualizar a tela: Tipos Equipamento de Proteção Individual (Filtro)


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI | Tipos de EPI
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de Tipos de EPI

Quando ver a tela: Cadastro Tipos Equipamento de Proteção Individual (Consulta)
  resource_cons_TiposEPi.Acessar Tela Consulta Cadastro Tipos Equipamento de Proteção Individual

E clicar no botão: Pesquisar Registro
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Tipos Equipamento de Proteção Individual (Filtro)
  resource_cons_TiposEPi.Acessar Tela Consulta Cadastro Tipos Equipamento de Proteção Individual - Filtro