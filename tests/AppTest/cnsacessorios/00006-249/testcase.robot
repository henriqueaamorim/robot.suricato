*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmacessorios.robot
Resource        ../../../../resource/app/resource_cnsacessorios.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Acessórios
${APPNAME}     cnsacessorios
${OBJETIVO}    Verificar todos os campos na tela Consulta de Acessórios.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Acessórios
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Cadastro | Acessórios
  Quando eu visualizar a tela: Acessórios (Inclusão)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Acessórios
  E verificar a label Código
  E verificar a label Descrição
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Veículos | Cadastro | Acessórios
  resource_mnu.Clicar No Menu Veículos | Cadastro | Acessórios

Quando eu visualizar a tela: Acessórios (Inclusão)
  resource_frmacessorios.Acessar Tela Acessórios (Inclusão)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Acessórios
  resource_cnsacessorios.Acessar Tela Consulta de Acessórios

E verificar a label Código
  resource_cnsacessorios.Verificar a label Código

E verificar a label Descrição
  resource_cnsacessorios.Verificar a label Descrição

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
