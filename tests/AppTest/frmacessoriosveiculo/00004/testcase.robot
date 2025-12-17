*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmveiculocompleto_cad.robot
Resource        ../../../../resource/app/resource_frmacessoriosveiculo.robot
Resource        ../../../../resource/app/resource_abacadastroveiculo.robot
Resource        ../../../../resource/app/resource_cnsveiculoscompleto_cad.robot

Test Setup      Acessar Suricato  
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Cadastrar um Acessório.


*** Test Cases ***

Testcase: Cadastrar um Acessório
  [Tags]  REGISTER  UNPOPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Cadastro | Veículo
  Quando eu visualizar a tela: Cadastro Veículos - Atualização
  E clicar no botão: Pesquisar
  E clicar no botão: Pesquisar Registros
  E preencher o campo Placa "NCE6899"
  E novamente clicar no botão: Pesquisar Registros
  E clicar no botão: Editar o Registro "1"
  E clicar na aba: Acessórios
  Então devo visualizar a tela: Acessórios (Inclusão)
  E preencher o campo Código do Acessório "2"
  E clicar no botão: Incluir o Registro
  Então devo visualizar a tela: Acessórios (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Veículos | Cadastro | Veículo
  resource_mnu.Clicar No Menu Veículos | Cadastro | Veículo

Quando eu visualizar a tela: Cadastro Veículos - Atualização
  resource_frmveiculocompleto_cad.Acessar Tela Cadastro Veículos - Atualização

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

E preencher o campo Placa "${PLACA}"
  resource_cnsveiculoscompleto_cad.Preencher o campo Placa "${PLACA}"

E novamente clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

E clicar no botão: Editar o Registro "${NUM}"
  resource_btn.Clicar No Botão Editar o Registro "${NUM}"

E clicar na aba: Acessórios
  resource_abacadastroveiculo.Clicar Na Aba Acessórios

E preencher o campo Código do Acessório "${ACESSORIO}"
  resource_frmacessoriosveiculo.Preencher o campo Código do Acessório "${ACESSORIO}"

E clicar no botão: Incluir o Registro
  resource_btn.Clicar No Botão Incluir o Registro

Então devo visualizar a tela: Acessórios (Atualização)
  resource_frmacessoriosveiculo.Acessar Tela Acessórios (Atualização)

E clicar no botão: Abrir um novo Registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Acessórios (Inclusão)
  resource_frmacessoriosveiculo.Acessar Tela Acessórios (Inclusão)