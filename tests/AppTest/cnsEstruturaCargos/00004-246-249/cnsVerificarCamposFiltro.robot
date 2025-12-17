*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsEstruturaCargos.robot
Resource        ../../../../resource/app/resource_frmcargos.robot
Resource        ../../../../resource/app/resource_cnscargos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${SCREENNAME}  Consulta de Grupo de Cargos
${APPNAME}     cnsEstruturaCargos
${OBJETIVO}    Verificar todos os campos na Tela: Grupo de Cargos (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Grupo de Cargos (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Cargo | Grupo de Cargo
  Então devo visualizar a tela: Grupo de Cargo (Consulta)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Cargos (Filtro)
  E verificar o campo Código do Grupo
  E verificar o campo Descrição do Grupo
  E verificar se existe o campo Teste na tela


*** Keywords ***

Dado que eu acesse o menu: Estrutura | Empresa | Cargo | Grupo de Cargo
  resource_mnu.Clicar No Menu Estrutura | Empresa | Cargo | Grupo de Cargo

Então devo visualizar a tela: Grupo de Cargo (Consulta)
  resource_cnsEstruturaCargos.Acessar Tela Consulta de Grupo de Cargo

E clicar no botão: Abrir Um Novo Registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Cadastro de Cargos (Inclusão)
  resource_frmcargos.Acessar Tela Cadastro de Cargos (Inclusão)

E clicar no botão: Buscar Dados Externos do campo Grupo de Cargos*
  resource_frmcargos.Clicar No Botão Buscar Dados Externos Do Campo Grupo de Cargos

Então devo visualizar a tela Consulta de Grupo de Cargos
  resource_cnsEstruturaCargos.Acessar Tela Consulta de Grupo de Cargos

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Consulta de Cargos (Filtro)
  resource_cnsEstruturaCargos.Acessar Tela Consulta de Grupo de Cargos (Filtro)

E verificar a label Pesquisa
  resource_cnsEstruturaCargos.Verificar a label Pesquisa

E verificar o campo Código do Grupo
  resource_cnsEstruturaCargos.Verificar o campo Código do Grupo

E verificar o campo Descrição do Grupo
  resource_cnsEstruturaCargos.Verificar o campo Descrição do Grupo

E verificar se existe o campo Teste na tela
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
