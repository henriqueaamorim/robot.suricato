*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsTrocaPermissao.robot
Resource        ../../../../resource/app/resource_frmTrocaPermissao.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Programação - Troca de Grupo de Acesso (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Programação - Troca de Grupo de Acesso (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Grupo de Acesso
  Então devo visualizar a tela: Programação - Troca de Grupo de Acesso (Consulta)
 

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Grupo de Acesso
  resource_mnu.Clicar No Menu Identificação | Colaborador | Programação | Troca de Grupo de Acesso

Então devo visualizar a tela: Programação - Troca de Grupo de Acesso (Consulta)
  resource_cnsTrocaPermissao.Acessar Tela: Programação - Troca de Grupo de Acesso (Consulta)


