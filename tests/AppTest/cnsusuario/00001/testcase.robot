*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmusuario.robot
Resource        ../../../../resource/app/resource_cnsusuario.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Usuários
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Usuário
  Quando eu visualizar a tela: Cadastro de Usuários (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Usuários

*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Usuário
  resource_mnu.Clicar No Menu Configurações | Usuários | Usuário

Quando eu visualizar a tela: Cadastro de Usuários (Atualização)
  resource_frmusuario.Acessar Tela Cadastro de Usuários (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Usuários
  resource_cnsusuario.Acessar Tela Consulta de Usuários
