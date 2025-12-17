*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmacessorios.robot
Resource    ../../../../resource/app/resource_frmcargos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Cadastrar um Acessório de Veículo.


*** Test Cases ***

Testcase: Cadastrar um Acessório de Veículo
  [Tags]  REGISTER  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Cadastro | Acessórios
  Quando eu visualizar a tela: Acessórios (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Acessórios (Inclusão)
  E preencher o campo Descrição do Acessório "Aerofólio para o Palio"
  E clicar no botão: Incluir o Registro
  Então devo visualizar a tela: Acessórios (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Veículos | Cadastro | Acessórios
  resource_mnu.Clicar No Menu Veículos | Cadastro | Acessórios

Quando eu visualizar a tela: Acessórios (Atualização)
  resource_frmacessorios.Acessar Tela Acessórios (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Acessórios (Inclusão)
  resource_frmacessorios.Acessar Tela Acessórios (Inclusão)

E preencher o campo Descrição do Acessório "${DESCRICAO}"
  resource_frmacessorios.Preencher o campo Descrição do Acessório "${DESCRICAO}"

E clicar no botão: Incluir o Registro
  resource_btn.Clicar No Botão Incluir o Registro

Então devo visualizar a tela: Acessórios (Atualização)
  resource_frmacessorios.Acessar Tela Acessórios (Atualização)