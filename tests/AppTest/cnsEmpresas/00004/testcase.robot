*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmPlantas.robot
Resource        ../../../../resource/app/resource_cnsPlantas.robot
Resource        ../../../../resource/app/resource_cnsEmpresas.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Empresa (Filtro)
  [Tags]  PRINT  POPULATED   
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Planta
  Quando eu visualizar a tela: Consulta de Plantas
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Plantas (Inclusão)
  E clicar no botão: Buscar Dados Externos para Código da Empresa
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Empresas (Busca Externa)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Empresa (Filtro)


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