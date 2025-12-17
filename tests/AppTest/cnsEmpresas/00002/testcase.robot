*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmPlantas.robot
Resource        ../../../../resource/app/resource_cnsPlantas.robot
Resource        ../../../../resource/app/resource_cnsEmpresas.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos da tela Plantas (Inclusão)

*** Test Cases ***

Testcase: Preencher todos os campos da tela Plantas (Inclusão)
  [Tags]  REGISTER  POLYVALENT  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Planta
  Quando eu visualizar a tela: Consulta de Plantas
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Plantas (Inclusão)
  E clicar no botão: Buscar Dados Externos para Código da Empresa
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Empresas (Busca Externa)
  E selecionar uma opção no campo Código da Empresa "Exatamente igual"
  E preencher o campo Código da Empresa "ok"
  E selecionar uma opção no campo Nome "Exatamente igual"    
  E preencher o campo Nome "ok"      
  E selecionar uma opção no campo Nome Fantasia "Exatamente igual"
  E preencher o campo Nome Fantasia "ok" 


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

E selecionar uma opção no campo Código da Empresa "${CÓDIGO_DA_EMPRESA}"
  resource_cnsEmpresas.Selecionar uma opção no campo Código da Empresa "${CÓDIGO_DA_EMPRESA}"

E preencher o campo Código da Empresa "${CÓDIGO_DA_EMPRESA}"
  resource_cnsEmpresas.Preencher o campo Código da Empresa "${CÓDIGO_DA_EMPRESA}"

E selecionar uma opção no campo Nome "${NOME}"
  resource_cnsEmpresas.Selecionar uma opção no campo Nome "${NOME}"

E preencher o campo Nome "${NOME}"
  resource_cnsEmpresas.Preencher o campo Nome "${NOME}"

E selecionar uma opção no campo Nome Fantasia "${NOME_FANTASIA}"
  resource_cnsEmpresas.Selecionar uma opção no campo Nome Fantasia "${NOME_FANTASIA}"

E preencher o campo Nome Fantasia "${NOME_FANTASIA}"
  resource_cnsEmpresas.Preencher o campo Nome Fantasia "${NOME_FANTASIA}"
