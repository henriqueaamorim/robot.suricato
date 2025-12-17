*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmveiculocolaboradores.robot
Resource        ../../../../resource/app/resource_cnsPermissoesAcessoGrupos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Testcase: Acessar Tela Permissão de Grupos de Acesso (Busca Externa) através da tela Veículo de Colaborador - Inclusão
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Veículo de Colaborador - Cadastro
  Quando eu visualizar a tela: Veículo de Colaborador - Cadastro
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Veículo de Colaborador - Inclusão
  Ao clicar no botão: Buscar Dados Externos para Grupo de Acesso
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Permissão de Grupos de Acesso (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Veículo de Colaborador - Cadastro
  resource_mnu.Clicar No Menu Entrada | Veículo de Colaborador - Cadastro

Quando eu visualizar a tela: Veículo de Colaborador - Cadastro
  resource_frmveiculocolaboradores.Acessar Tela Veículo de Colaborador - Cadastro

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Veículo de Colaborador - Inclusão
  resource_frmveiculocolaboradores.Acessar Tela Veículo de Colaborador - Inclusão

Ao clicar no botão: Buscar Dados Externos para Grupo de Acesso
  resource_frmveiculocolaboradores.Clicar No Botão Buscar Dados Externos Para Grupo de Acesso

Então o navegador deve exibir uma nova janela e eu visualizar a tela Permissão de Grupos de Acesso (Busca Externa)
  resource_cnsPermissoesAcessoGrupos.Acessar Tela Permissão de Grupos de Acesso (Busca Externa)
