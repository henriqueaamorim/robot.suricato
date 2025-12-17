*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsTiposTerceiros.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Tipo de Terceiro (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Tipo de Terceiro (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Terceiro | Tipo de Terceiro
  Então devo visualizar a tela: Tipo de Terceiro (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo visualizar a tela: Tipo de Terceiro (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Terceiro | Tipo de Terceiro
  resource_mnu.Clicar No Menu Identificação | Colaborador | Terceiro | Tipo de Terceiro

Então devo visualizar a tela: Tipo de Terceiro (Consulta)
  resource_cnsTiposTerceiros.Acessar Tela Consulta de Tipos de Terceiros

E clicar no botão: Pesquisar Registro
    resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Tipo de Terceiro (Filtro)
  resource_cnsTiposTerceiros.Acessar Tela Tipo de Terceiro (Filtro)