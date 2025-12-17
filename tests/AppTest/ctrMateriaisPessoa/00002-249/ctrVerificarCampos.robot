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
${OBJETIVO}    Verificar todos os campos na tela: Cadastro de Materiais por Pessoa


*** Test Cases ***
Testcase: Verificar todos os campos na tela: Cadastro de Materiais por Pessoa
  [Tags]  VERIFY  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Material | Material por Pessoa
  Então devo visualizar a tela: Cadastro de Materiais por Pessoa
  E verificar o campo Tipo *
  E verificar a label Visitante
  E verificar o campo Código do Colaborador
  E verificar a label Empresa
  E verificar a label Tipo do Colaborador
  E verificar a label Matrícula
  E verificar a label Nome do Colaborador
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Material | Material por Pessoa
  resource_mnu.Clicar No Menu Entrada | Material | Material por Pessoa

Então devo visualizar a tela: Cadastro de Materiais por Pessoa
  resource_ctrMateriaisPessoa.Acessar Tela Cadastro de Materiais por Pessoa

E verificar o campo Tipo *
  resource_ctrMateriaisPessoa.Verificar o campo Tipo *

E verificar a label Visitante
  resource_ctrMateriaisPessoa.Verificar a label Visitante

E verificar o campo Código do Colaborador
  resource_ctrMateriaisPessoa.Verificar o campo Código do Colaborador

E verificar a label Empresa
  resource_ctrMateriaisPessoa.Verificar a label Empresa

E verificar a label Tipo do Colaborador
  resource_ctrMateriaisPessoa.Verificar a label Tipo do Colaborador

E verificar a label Matrícula
  resource_ctrMateriaisPessoa.Verificar a label Matrícula

E verificar a label Nome do Colaborador
  resource_ctrMateriaisPessoa.Verificar a label Nome do Colaborador

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
