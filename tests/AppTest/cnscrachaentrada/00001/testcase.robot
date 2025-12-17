*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsentradaservidor.robot
Resource        ../../../../resource/app/resource_frmentradaservidor.robot
Resource        ../../../../resource/app/resource_cnscrachaentrada.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Autorização de Entrada (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Autorização | Entrada
  Quando eu visualizar a tela: Consulta de Autorização de Entrada
  E clicar no botão: Abrir um novo registro
  Ao visualizar a tela: Autorização de Entrada (Inclusão)
  E clicar no botão: Buscar Dados Externos para Crachá
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Crachá (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Autorização | Entrada
  resource_mnu.Clicar No Menu Entrada | Autorização | Entrada

Quando eu visualizar a tela: Consulta de Autorização de Entrada
  resource_cnsentradaservidor.Acessar Tela Consulta de Autorização de Entrada

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Ao visualizar a tela: Autorização de Entrada (Inclusão)
  resource_frmentradaservidor.Acessar Tela Autorização de Entrada (Inclusão)

E clicar no botão: Buscar Dados Externos para Crachá
  resource_frmentradaservidor.Clicar No Botão Buscar Dados Externos Para Crachá

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Crachá (Busca Externa)
  resource_cnscrachaentrada.Acessar Tela Consulta de Crachá (Busca Externa)

