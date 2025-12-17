*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsTrocaPermissao.robot
Resource        ../../../../resource/app/resource_frmTrocaPermissao.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Testcase: Acessar Tela Consulta de Troca de Grupo de Acesso
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Grupo de Acesso
  Quando eu visualizar a tela: Troca de Grupo de Acesso (Atualização)
  E clicar no botão: Consulta
  Então devo visualizar a tela: Consulta de Troca de Grupo de Acesso

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Grupo de Acesso
  resource_mnu.Clicar No Menu Identificação | Colaborador | Programação | Troca de Grupo de Acesso

Quando eu visualizar a tela: Troca de Grupo de Acesso (Atualização)
  resource_frmTrocaPermissao.Acessar Tela Troca de Grupo de Acesso (Atualização)

E clicar no botão: Consulta
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Troca de Grupo de Acesso
  resource_cnsTrocaPermissao.Acessar Tela: Programação - Troca de Grupo de Acesso (Consulta)
