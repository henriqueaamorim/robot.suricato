*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frm_tbhoraextra.robot
Resource        ../../../../resource/app/resource_cnsGrupoHoraExtra.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Excluir uma Hora Extra.


*** Test Cases ***

Testcase: Excluir uma Hora Extra
  [Tags]  DELETE
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Hora Extra
  Quando eu visualizar a tela: Hora Extra
  E clicar no botão: Pesquisar
  E clicar no botão: Pesquisar Registros
  E preencher o campo ID Cadastro "3"
  E novamente clicar no botão: Pesquisar Registros
  E então clicar no botão: Editar o Registro "1"
  E clicar no botão: Apagar
  E então clicar em "OK" no alerta
  Então devo visualizar a tela: Hora Extra - Cadastro

*** Keywords ***
Dado que eu acesse o menu: Configurações | Hora Extra
  resource_mnu.Clicar No Menu Configurações | Hora Extra

Quando eu visualizar a tela: Hora Extra
  resource_frm_tbhoraextra.Acessar Tela Hora Extra

Então devo visualizar a tela: Hora Extra - Cadastro
  resource_frm_tbhoraextra.Acessar Tela Hora Extra - Cadastro

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

E preencher o campo ID Cadastro "${ID}"
  resource_cnsGrupoHoraExtra.Preencher o campo ID Cadastro "${ID}"

E novamente clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

E então clicar no botão: Editar o Registro "${NUM}"
  resource_btn.Clicar No Botão Editar o Registro "${NUM}"

E clicar no botão: Apagar
  resource_btn.Clicar No Botão Apagar

E então clicar em "OK" no alerta
  Handle Alert
