*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmveiculocompleto_cad.robot
Resource        ../../../../resource/app/resource_frmacessoriosveiculo.robot
Resource        ../../../../resource/app/resource_abacadastroveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Acessórios (Atualização)
${APPNAME}     frmacessoriosveiculo
${OBJETIVO}    Verificar todos os campos na tela Acessórios (Atualização).


*** Test Cases ***

Testcase: Verificar todos os campos na tela Acessórios (Atualização)
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Cadastro | Veículo
  Quando eu visualizar a tela: Cadastro Veículos - Atualização
  E clicar na aba: Acessórios
  Então devo visualizar a tela: Acessórios (Atualização)
  E verificar a label SEQ
  E verificar a label Código do Acessório
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Veículos | Cadastro | Veículo
  resource_mnu.Clicar No Menu Veículos | Cadastro | Veículo

Quando eu visualizar a tela: Cadastro Veículos - Atualização
  resource_frmveiculocompleto_cad.Acessar Tela Cadastro Veículos - Atualização

E clicar na aba: Acessórios
  resource_abacadastroveiculo.Clicar Na Aba Acessórios

Então devo visualizar a tela: Acessórios (Atualização)
  resource_frmacessoriosveiculo.Acessar Tela Acessórios (Atualização)

E verificar a label SEQ
  resource_frmacessoriosveiculo.Verificar a label SEQ

E verificar a label Código do Acessório
  resource_frmacessoriosveiculo.Verificar a label Código do Acessório

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
