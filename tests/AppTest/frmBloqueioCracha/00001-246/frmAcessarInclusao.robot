*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmBloqueioCracha.robot
Resource        ../../../../resource/app/resource_cnsBloqueioCracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Acessar Tela Bloqueio de Crachá (Inclusão)


*** Test Cases ***

Testcase: Acessar Tela Bloqueio de Crachá (Inclusão)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Crachá | Bloqueio
  Quando eu visualizar a tela: Consulta de Crachá Bloqueado
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Bloqueio de Crachá (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Crachá | Bloqueio
  resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Crachá | Bloqueio

Quando eu visualizar a tela: Consulta de Crachá Bloqueado
  resource_cnsBloqueioCracha.Acessar Tela Consulta de Crachá Bloqueado

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Bloqueio de Crachá (Inclusão)
  resource_frmBloqueioCracha.Acessar Tela Bloqueio de Crachá (Inclusão)
