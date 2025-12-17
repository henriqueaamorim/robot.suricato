*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmreclamacoes.robot
Resource        ../../../../resource/app/resource_cnsveiculoscompleto.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Consulta Veículos Completos (Busca Externa) através da tela Reclamações (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Ocorrências | Reclamações
  Quando eu visualizar a tela: Reclamações (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Reclamações (Inclusão)
  Ao clicar no botão: Buscar Dados Externos para Veículo
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta Veículos Completos (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Ocorrências | Reclamações
  resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Reclamações

Quando eu visualizar a tela: Reclamações (Atualização)
  resource_frmreclamacoes.Acessar Tela Reclamações (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Reclamações (Inclusão)
  resource_frmreclamacoes.Acessar Tela Reclamações (Inclusão)

Ao clicar no botão: Buscar Dados Externos para Veículo
  resource_frmreclamacoes.Clicar No Botão Buscar Dados Externos Para Veículo

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta Veículos Completos (Busca Externa)
  resource_cnsveiculoscompleto.Acessar Tela Consulta Veículos Completos (Busca Externa)
