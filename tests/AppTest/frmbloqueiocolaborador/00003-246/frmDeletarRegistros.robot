*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consbloqueiocolaborador.robot
Resource        ../../../../resource/app/resource_frmbloqueiocolaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Excluir um Bloqueio de Colaborador.


*** Test Cases ***

Testcase: Excluir um Bloqueio de Colaborador
  [Tags]  DELETE  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Colaborador | Bloqueio
  Quando eu visualizar a tela: Consulta de Bloqueio de Colaborador
  #E clicar no botão: Pesquisar Registros
  #E preencher o campo Matricula "70479"
  #E novamente clicar no botão: Pesquisar Registros
  E então clicar no botão: Editar o Registro "1"
  E clicar no botão: Apagar
  Então devo visualizar a tela: Bloqueio de Colaborador (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Colaborador | Bloqueio
  resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Colaborador | Bloqueio

Quando eu visualizar a tela: Consulta de Bloqueio de Colaborador
  resource_consbloqueiocolaborador.Acessar Tela Consulta de Bloqueio de Colaborador

Então devo visualizar a tela: Bloqueio de Colaborador (Atualização)
  resource_frmbloqueiocolaborador.Acessar Tela Bloqueio de Colaborador (Atualização)

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

E preencher o campo Matricula "${NUM}"
  resource_consbloqueiocolaborador.Preencher o campo Matricula "${NUM}"

E novamente clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

E então clicar no botão: Editar o Registro ${NUM}
  resource_btn.Clicar No Botão Editar o Registro "${NUM}"

E clicar no botão: Apagar
  resource_btn.Clicar No Botão Apagar
