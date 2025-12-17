*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmHistoricoLocal.robot
Resource        ../../../../resource/app/resource_cnsLocais.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Locais (Busca Externa) através da tela Consulta de Histórico de Local (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Local
  Ao visualizar a tela: Histórico de Local (Atualização)
  E clicar no botão: Buscar Dados Externos para Local do Organograma
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Locais (Busca Externa)


*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Local
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Local

Ao visualizar a tela: Histórico de Local (Atualização)
  resource_frmHistoricoLocal.Acessar Tela Histórico de Local (Atualização)

E clicar no botão: Buscar Dados Externos para Local do Organograma
  resource_frmHistoricoLocal.Clicar No Botão Buscar Dados Externos Para Local do Organograma

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Locais (Busca Externa)
  resource_cnsLocais.Acessar Tela Consulta de Locais (Busca Externa)
