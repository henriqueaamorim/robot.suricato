*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_conscolaboradores.robot
Resource        ../../../../resource/app/resource_frmcolaborador.robot
Resource        ../../../../resource/app/resource_ctrgravahistorico.robot

Test Setup      Acessar Suricato 
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Inclusão de Histórico de Terceiro
  [Tags]  PRINT  POPULATED  246
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Terceiro | Cadastro de Terceiro
  Então devo visualizar a tela: Consulta de Terceiro
  E clicar no botão: Editar o Registro "1"
  Então devo visualizar a tela: Terceiro
  E clicar no botão: Histórico Colaborador
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Empregado


*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Terceiro | Cadastro de Terceiro
  resource_mnu.Clicar No Menu Identificação | Colaborador | Terceiro | Cadastro de Terceiro

Então devo visualizar a tela: Consulta de Terceiro
  resource_conscolaboradores.Acessar Tela Consulta de Terceiro

E clicar no botão: Editar o Registro "${NUM}"
    resource_btn.Clicar No Botão Editar o Registro "${NUM}"

Então devo visualizar a tela: Terceiro
    resource_frmcolaborador.Acessar Tela Cadastro de Terceiro - Inclusão

E clicar no botão: Histórico Colaborador
  resource_btn.Clicar No Botão Histórico Colaborador

Então o navegador deve exibir uma nova janela e eu visualizar a tela Empregado
  resource_ctrgravahistorico.Acessar Tela Empregado
