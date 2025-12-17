*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmPlantas.robot
Resource        ../../../../resource/app/resource_cnsPlantas.robot
Resource        ../../../../resource/app/resource_cnsEmpresas.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Empresa
${APPNAME}     csnEmpresas
${OBJETIVO}    Verificar todos os campos na tela Empresa

*** Test Cases ***

Testcase: Verificar todos os campos na tela Empresa
  [Tags]  VERIFY  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Planta
  Quando eu visualizar a tela: Consulta de Plantas
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Plantas (Inclusão)
  E clicar no botão: Buscar Dados Externos para Código da Empresa
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Empresas (Busca Externa)
  E verificar a label Código da Empresa
  E verificar a label Nome
  E verificar a label Nome Fantasia
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Planta
  resource_mnu.Clicar No Menu Estrutura | Planta

Quando eu visualizar a tela: Consulta de Plantas
  resource_cnsPlantas.Acessar Tela Consulta de Plantas

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Plantas (Inclusão)
  resource_frmPlantas.Acessar Tela Plantas (Inclusão)

E clicar no botão: Buscar Dados Externos para Código da Empresa
  resource_frmPlantas.Clicar No Botão Buscar Dados Externos Para Código da Empresa

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Empresas (Busca Externa)
  resource_cnsEmpresas.Acessar Tela Consulta de Empresas (Busca Externa)

E verificar a label Código da Empresa
  resource_cnsEmpresas.Verificar a label Código da Empresa

E verificar a label Nome
  resource_cnsEmpresas.Verificar a label Nome

E verificar a label Nome Fantasia
  resource_cnsEmpresas.Verificar a label Nome Fantasia

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
