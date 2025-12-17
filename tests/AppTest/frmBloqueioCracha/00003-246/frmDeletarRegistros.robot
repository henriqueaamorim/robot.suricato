*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmBloqueioCracha.robot
Resource        ../../../../resource/app/resource_cnsBloqueioCracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Excluir um Bloqueio de Crachá.


*** Test Cases ***

Testcase: Excluir um Bloqueio de Crachá
  [Tags]  DELETE  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Crachá | Bloqueio
  Quando eu visualizar a tela: Consulta de Crachá Bloqueado
  #E clicar no botão: Pesquisar Registros
  #E preencher o campo Crachá "1"
  #E novamente clicar no botão: Pesquisar Registros
  E então clicar no botão: Editar o Registro "1"
  E clicar no botão: Apagar
  E então clicar em "OK" no alerta
  Então devo visualizar a tela: Bloqueio de Crachá (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Crachá | Bloqueio
  resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Crachá | Bloqueio

Quando eu visualizar a tela: Consulta de Crachá Bloqueado
  resource_cnsBloqueioCracha.Acessar Tela Consulta de Crachá Bloqueado

Então devo visualizar a tela: Bloqueio de Crachá (Atualização)
  resource_frmBloqueioCracha.Acessar Tela Bloqueio de Crachá (Atualização)

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

E preencher o campo Crachá "${CRACHA}"
  resource_cnsBloqueioCracha.Preencher o campo Crachá "${CRACHA}"

E novamente clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

E então clicar no botão: Editar o Registro "${NUM}"
  resource_btn.Clicar No Botão Editar o Registro "${NUM}"

E clicar no botão: Apagar
  resource_btn.Clicar No Botão Apagar

E então clicar em "OK" no alerta
  Handle Alert