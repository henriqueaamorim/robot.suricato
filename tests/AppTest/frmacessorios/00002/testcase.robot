*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmacessorios.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Acessórios (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Cadastro | Acessórios
  Quando eu visualizar a tela: Acessórios (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Acessórios (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Veículos | Cadastro | Acessórios
  resource_mnu.Clicar No Menu Veículos | Cadastro | Acessórios

Quando eu visualizar a tela: Acessórios (Atualização)
  resource_frmacessorios.Acessar Tela Acessórios (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Acessórios (Inclusão)
  resource_frmacessorios.Acessar Tela Acessórios (Inclusão)
