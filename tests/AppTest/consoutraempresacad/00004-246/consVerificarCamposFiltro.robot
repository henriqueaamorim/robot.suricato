*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmoutrasempresas.robot
Resource        ../../../../resource/app/resource_consoutraempresacad.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Empresa Terceira (Filtro)
${APPNAME}     consoutraempresacad
${OBJETIVO}    Verificar todos os campos na tela Empresa Terceira (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na tela Empresa Terceira (Filtro)
  [Tags]  VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa Terceira | Empresa Terceira
  Quando visualizar a tela: Empresa Terceira (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo visualizar a tela: Empresa Terceira (Filtro)
  E verificar o campo Código da Empresa Terceira
  E verificar o campo Nome da Empresa Terceira
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa Terceira | Empresa Terceira
  resource_mnu.Clicar No Menu Estrutura | Empresa Terceira | Cadastro de Empresa Terceira

Quando visualizar a tela: Empresa Terceira (Consulta)
  resource_consoutraempresacad.Acessar Tela Consulta de Empresas Terceiras

E clicar no botão: Pesquisar Registro
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Empresa Terceira (Filtro)
  resource_consoutraempresacad.Acessar Tela Consulta de Empresas Terceiras (Filtro)
  
E verificar o campo Código da Empresa Terceira
  resource_consoutraempresacad.Verificar o campo Código da Empresa Terceira

E verificar o campo Nome da Empresa Terceira
  resource_consoutraempresacad.Verificar o campo Nome da Empresa Terceira

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
