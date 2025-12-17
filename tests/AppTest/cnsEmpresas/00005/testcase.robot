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

${SCREENNAME}  Empresa (Filtro)
${APPNAME}     cnsEmpresas
${OBJETIVO}    Verificar todos os campos na tela Empresa (Filtro)

*** Test Cases ***

Testcase: Verificar todos os campos na tela Empresa (Filtro)
  [Tags]  VERIFY   
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Planta
  Quando eu visualizar a tela: Consulta de Plantas
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Plantas (Inclusão)
  E clicar no botão: Buscar Dados Externos para Código da Empresa
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Empresas (Busca Externa)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Empresa (Filtro)
  E verificar a label Pesquisa
  E verificar o campo Código da Empresa
  E verificar o campo Nome 
  E verificar o campo Nome Fantasia
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

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Empresa (Filtro)
  resource_cnsEmpresas.Acessar Tela Empresa (Filtro)
  
E verificar a label Pesquisa
  resource_cnsEmpresas.Verificar a label Pesquisa

E verificar o campo Código da Empresa
  resource_cnsEmpresas.Verificar o campo Código da Empresa

E verificar o campo Nome 
  resource_cnsEmpresas.Verificar o campo Nome 

E verificar o campo Nome Fantasia
  resource_cnsEmpresas.Verificar o campo Nome Fantasia

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
