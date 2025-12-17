*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmoutrasempresas.robot
Resource        ../../../../resource/app/resource_consoutraempresacad.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Empresa Terceira
${APPNAME}     consoutraempresacad
${OBJETIVO}    Verificar todos os campos na tela Empresa Terceira


*** Test Cases ***

Testcase: Verificar todos os campos na tela Empresa Terceira
  [Tags]  VERIFY  246
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa Terceira | Cadastro de Empresa Terceira
  Então devo visualizar a tela: Consulta de Empresas Terceiras
  E verificar a label Código da Empresa Terceira
  E verificar a label Nome da Empresa Terceira
  E verificar a label Endereço
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa Terceira | Cadastro de Empresa Terceira
  resource_mnu.Clicar No Menu Estrutura | Empresa Terceira | Cadastro de Empresa Terceira

Então devo visualizar a tela: Consulta de Empresas Terceiras
  resource_consoutraempresacad.Acessar Tela Consulta de Empresas Terceiras

E verificar a label Código da Empresa Terceira
  resource_consoutraempresacad.Verificar a label Código da Empresa Terceira

E verificar a label Nome da Empresa Terceira
  resource_consoutraempresacad.Verificar a label Nome da Empresa Terceira

E verificar a label Endereço
  resource_consoutraempresacad.Verificar a label Endereço

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
