*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmreclamacoes.robot
Resource        ../../../../resource/app/resource_cnscondutoresveiculosfrotacap.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos da tela Consulta Condutores de Veículos de Frota - Modo Busca (Busca Externa) através da tela Tela Reclamações (Atualização)


*** Test Cases ***

Testcase: Preencher todos os campos da tela Consulta Condutores de Veículos de Frota - Modo Busca (Busca Externa) através da tela Tela Reclamações (Atualização)
  [Tags]  REGISTER  POLYVALENT 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Ocorrências | Reclamações
  Ao visualizar a tela: Reclamações (Atualização)
  E clicar no botão: Buscar Dados Externos para Código do Condutor
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta Condutores de Veículos de Frota - Modo Busca (Busca Externa)
  E preencher o campo Condutor "ok"
  
*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Ocorrências | Reclamações
  resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Reclamações

Ao visualizar a tela: Reclamações (Atualização)
  resource_frmreclamacoes.Acessar Tela Reclamações (Atualização)

E clicar no botão: Buscar Dados Externos para Código do Condutor
  resource_frmreclamacoes.Clicar No Botão Buscar Dados Externos Para Código do Condutor

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta Condutores de Veículos de Frota - Modo Busca (Busca Externa)
  resource_cnscondutoresveiculosfrotacap.Acessar Tela Consulta Condutores de Veículos de Frota - Modo Busca (Busca Externa)

E preencher o campo Condutor "${CONDUTOR}"
  resource_cnscondutoresveiculosfrotacap.Preencher o campo Condutor "${CONDUTOR}"
