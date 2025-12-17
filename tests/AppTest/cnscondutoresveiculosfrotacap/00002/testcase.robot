*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmreclamacoes.robot
Resource        ../../../../resource/app/resource_cnscondutoresveiculosfrotacap.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta Condutores de Veículos de Frota (Busca Externa) através da tela Tela Reclamações (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Ocorrências | Reclamações
  Ao visualizar a tela: Reclamações (Atualização)
  E clicar no botão: Buscar Dados Externos para Código do Condutor
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta Condutores de Veículos de Frota - Modo Busca (Busca Externa)
  Ao clicar no botão: Pesquisar
  Então devo visualizar a tela: Veículos de Frota (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Ocorrências | Reclamações
  resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Reclamações

Ao visualizar a tela: Reclamações (Atualização)
  resource_frmreclamacoes.Acessar Tela Reclamações (Atualização)

E clicar no botão: Buscar Dados Externos para Código do Condutor
  resource_frmreclamacoes.Clicar No Botão Buscar Dados Externos Para Código do Condutor

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta Condutores de Veículos de Frota - Modo Busca (Busca Externa)
  resource_cnscondutoresveiculosfrotacap.Acessar Tela Consulta Condutores de Veículos de Frota - Modo Busca (Busca Externa)

Ao clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Veículos de Frota (Busca Externa)
  resource_cnscondutoresveiculosfrotacap.Acessar Tela Consulta Consulta Condutores de Veículos de Frota (Busca Externa)
