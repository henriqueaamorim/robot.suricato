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
${OBJETIVO}    Verificar todas as labels na tela: Empresa Terceira (Consulta)

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Empresa Terceira (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa Terceira | Empresa Terceira
  Quando visualizar a tela: Empresa Terceira (Consulta)
  Então verificar a label Código da Empresa Terceira
  E verificar a label Nome da Empresa Terceira
  E verificar a label Endereço
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa Terceira | Empresa Terceira
  resource_mnu.Clicar No Menu Estrutura | Empresa Terceira | Cadastro de Empresa Terceira

Quando visualizar a tela: Empresa Terceira (Consulta)
  resource_consoutraempresacad.Acessar Tela Consulta de Empresas Terceiras

Então verificar a label Código da Empresa Terceira
  resource_consoutraempresacad.Verificar a label Código da Empresa Terceira

E verificar a label Nome da Empresa Terceira
  resource_consoutraempresacad.Verificar a label Nome da Empresa Terceira

E verificar a label Endereço
  resource_consoutraempresacad.Verificar a label Endereço

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
