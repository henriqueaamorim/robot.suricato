*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrMateriaisPessoa.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Cadastro de Materiais por Pessoa
${APPNAME}     ctrMateriaisPessoa
${OBJETIVO}    Verificar todos os campos na tela: Material por Pessoa


*** Test Cases ***
Testcase: Verificar todos os campos na tela: Material por Pessoa
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Material | Material por Pessoa
  Quando visualizar a tela: Material por Pessoa
  Então devo verificar o campo Tipo *
  E verificar a label: * Campos obrigatórios
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Material | Material por Pessoa
  resource_mnu.Clicar No Menu Entrada | Material | Material por Pessoa

Quando visualizar a tela: Material por Pessoa
  resource_ctrMateriaisPessoa.Acessar Tela Cadastro de Materiais por Pessoa

Então devo verificar o campo Tipo *
  resource_ctrMateriaisPessoa.Verificar o campo Tipo *

E verificar a label: * Campos obrigatórios 
  resource_ctrMateriaisPessoa.Verificar a label * Campos obrigatórios

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"  