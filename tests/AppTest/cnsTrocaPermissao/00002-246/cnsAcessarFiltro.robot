*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsTrocaPermissao.robot
Resource        ../../../../resource/app/resource_frmTrocaPermissao.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}  Acessar Tela: Programação - Troca de Grupo de Acesso (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Programação - Troca de Grupo de Acesso (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Grupo de Acesso
  Quando visualizar a tela: Programação - Troca de Grupo de Acesso (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo visualizar a tela: Programação - Troca de Grupo de Acesso (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Grupo de Acesso
  resource_mnu.Clicar No Menu Identificação | Colaborador | Programação | Troca de Grupo de Acesso

Quando visualizar a tela: Programação - Troca de Grupo de Acesso (Consulta)
  resource_cnsTrocaPermissao.Acessar Tela: Programação - Troca de Grupo de Acesso (Consulta)

E clicar no botão: Pesquisar Registro
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Programação - Troca de Grupo de Acesso (Filtro)  
    resource_cnsTrocaPermissao.Acessar Tela: Programação - Troca de Grupo de Acesso (Filtro)

