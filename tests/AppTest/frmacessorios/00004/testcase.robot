*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmacessorios.robot
Resource        ../../../../resource/app/resource_cnsacessorios.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Excluir um Acessório.


*** Test Cases ***

Testcase: Excluir um Acessório
  [Tags]  DELETE
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Cadastro | Acessórios
  Então devo visualizar a tela: Acessórios (Atualização)
  E clicar no botão: Pesquisar
  E clicar no botão: Pesquisar Registros
  E preencher o campo Código "1"
  E novamente clicar no botão: Pesquisar Registros
  E então clicar no botão: Editar o Registro "1"
  E clicar no botão: Apagar
  E então clicar em "OK" no alerta
  Então devo visualizar a tela: Acessórios (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Veículos | Cadastro | Acessórios
  resource_mnu.Clicar No Menu Veículos | Cadastro | Acessórios

Então devo visualizar a tela: Acessórios (Atualização)
  resource_frmacessorios.Acessar Tela Acessórios (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

E preencher o campo Código "${COD}"
  resource_cnsacessorios.Preencher o campo Código "${COD}"

E novamente clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

E então clicar no botão: Editar o Registro "${NUM}"
  resource_btn.Clicar No Botão Editar o Registro "${NUM}"

E clicar no botão: Apagar
  resource_btn.Clicar No Botão Apagar

E então clicar em "OK" no alerta
  Handle Alert