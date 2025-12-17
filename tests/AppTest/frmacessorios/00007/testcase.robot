*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmacessorios.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Acessórios (Inclusão)
${APPNAME}     frmacessorios
${OBJETIVO}    Verificar todos os campos na tela Acessórios (Inclusão).


*** Test Cases ***

Testcase: Verificar todos os campos na tela Acessórios (Inclusão)
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Cadastro | Acessórios
  Quando eu visualizar a tela: Acessórios (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Acessórios (Inclusão)
  E verificar o campo Descrição do Acessório *
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Veículos | Cadastro | Acessórios
  resource_mnu.Clicar No Menu Veículos | Cadastro | Acessórios

Quando eu visualizar a tela: Acessórios (Atualização)
  resource_frmacessorios.Acessar Tela Acessórios (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Acessórios (Inclusão)
  resource_frmacessorios.Acessar Tela Acessórios (Inclusão)

E verificar o campo Descrição do Acessório *
  resource_frmacessorios.Verificar o campo Descrição do Acessório *

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
