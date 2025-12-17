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
  [Tags]  REGISTER  246
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa Terceira | Cadastro de Empresa Terceira
  Então devo visualizar a tela: Consulta de Empresas Terceiras
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Empresas Terceiras (Filtro)
  E verificar o campo Código da Empresa Terceira
  E verificar o campo Nome da Empresa Terceira
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa Terceira | Cadastro de Empresa Terceira
  resource_mnu.Clicar No Menu Estrutura | Empresa Terceira | Cadastro de Empresa Terceira

Então devo visualizar a tela: Consulta de Empresas Terceiras
  resource_consoutraempresacad.Acessar Tela Consulta de Empresas Terceiras

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Consulta de Empresas Terceiras (Filtro)
  resource_consoutraempresacad.Acessar Tela Consulta de Empresas Terceiras (Filtro)
  
E verificar o campo Código da Empresa Terceira
  resource_consoutraempresacad.Verificar o campo Código da Empresa Terceira

E verificar o campo Nome da Empresa Terceira
  resource_consoutraempresacad.Verificar o campo Nome da Empresa Terceira

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
