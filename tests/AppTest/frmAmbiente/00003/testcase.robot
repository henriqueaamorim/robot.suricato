*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmAmbiente.robot
Resource        ../../../../resource/app/resource_cnsAmbiente.robot


Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Excluir um Ambiente.


*** Test Cases ***

Testcase: Excluir um Ambiente
  [Tags]  DELETE
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Ambiente
  Quando eu visualizar a tela: Consulta de Ambiente
  E clicar no botão: Pesquisar Registros
  E preencher o campo Ambiente "Teste Ambiente"
  E clicar novamente no botão: Pesquisar Registros
  E clicar no botão: Editar o Registro "1"
  Então devo visualizar a tela: Cadastro de Ambiente
  E clicar no botão: Apagar
  E então clicar em "OK" no alerta
  Então devo visualizar a tela: Cadastro de Ambiente

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Ambiente
  resource_mnu.Clicar No Menu Estrutura | Empresa | Ambiente

Quando eu visualizar a tela: Consulta de Ambiente
  resource_cnsAmbiente.Acessar Tela Consulta de Ambiente

E clicar no botão: Editar o Registro "${NUM}"
  resource_btn.Clicar No Botão Editar o Registro "${NUM}"

Então devo visualizar a tela: Cadastro de Ambiente
  resource_frmAmbiente.Acessar Tela Cadastro de Ambiente

E clicar no botão: Apagar
  resource_btn.Clicar No Botão Apagar

E então clicar em "OK" no alerta
  Handle Alert

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

E preencher o campo Ambiente "${AMBIENTE}"
  resource_cnsAmbiente.Preencher o campo Ambiente "${AMBIENTE}"

E clicar novamente no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)