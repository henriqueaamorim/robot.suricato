*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsTipoUsuario.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar tela: Tipo de Usuário (Filtro)

*** Test Cases ***
Testcase: Acessar tela: Tipo de Usuário (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Tipo de Usuário
  Quando ver a tela: Tipo de Usuário (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Tipo de Usuário (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Tipo de Usuário
  resource_mnu.Clicar No Menu Identificação | Colaborador | Tipo de Usuário

Quando ver a tela: Tipo de Usuário (Consulta)
  resource_cnsTipoUsuario.Acessar Tela: Tipo de Usuário (Consulta)

E clicar no botão: Pesquisar registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Tipo de Usuário (Filtro)  
    resource_cnsTipoUsuario.Acessar Tela: Tipo de Usuário (Filtro)