*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmDefinicoesPessoasNaoGratas.robot
Resource        ../../../../resource/app/resource_cnsMotivoBloqueioPesquisa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Consulta de Motivo de Bloqueio (Busca Externa) através da tela Definições Pessoas Não Gratas
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Pessoa Não Grata
  Ao visualizar a tela: Definições Pessoas Não Gratas
  E clicar no botão: Buscar Dados Externos para Motivo do Bloqueio
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Motivo de Bloqueio (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Configurações | Pessoa Não Grata
  resource_mnu.Clicar No Menu Configurações | Pessoa Não Grata

Ao visualizar a tela: Definições Pessoas Não Gratas
  resource_frmDefinicoesPessoasNaoGratas.Acessar Tela Definições Pessoas Não Gratas

E clicar no botão: Buscar Dados Externos para Motivo do Bloqueio
  resource_frmDefinicoesPessoasNaoGratas.Clicar No Botão Buscar Dados Externos Para Motivo do Bloqueio

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Motivo de Bloqueio (Busca Externa)
  resource_cnsMotivoBloqueioPesquisa.Acessar Tela Consulta de Motivo de Bloqueio (Busca Externa)
