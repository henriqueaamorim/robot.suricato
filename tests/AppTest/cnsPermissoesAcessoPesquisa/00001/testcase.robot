*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmTrocaPermissao.robot
Resource        ../../../../resource/app/resource_cnsPermissoesAcessoPesquisa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Grupo de Acesso (Busca Externa) através da tela Troca de Grupo de Acesso (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Grupo de Acesso
  Quando eu visualizar a tela: Troca de Grupo de Acesso (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Troca de Grupo de Acesso (Inclusão)
  Ao clicar no botão: Buscar Dados Externos para Grupo de Acesso para Dias Normais
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Grupo de Acesso (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Grupo de Acesso
  resource_mnu.Clicar No Menu Identificação | Colaborador | Programação | Troca de Grupo de Acesso

Quando eu visualizar a tela: Troca de Grupo de Acesso (Atualização)
  resource_frmTrocaPermissao.Acessar Tela Troca de Grupo de Acesso (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Troca de Grupo de Acesso (Inclusão)
  resource_frmTrocaPermissao.Acessar Tela Troca de Grupo de Acesso (Inclusão)

Ao clicar no botão: Buscar Dados Externos para Grupo de Acesso para Dias Normais
  resource_frmTrocaPermissao.Clicar No Botão Buscar Dados Externos Para Grupo de Acesso para Dias Normais

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Grupo de Acesso (Busca Externa)
  resource_cnsPermissoesAcessoPesquisa.Acessar Tela Consulta de Grupo de Acesso (Busca Externa)
