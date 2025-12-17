*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmHistoricoLocal.robot
Resource        ../../../../resource/app/resource_cnsLocais.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos da tela Consulta de Locais (Busca Externa) através da tela Consulta de Histórico de Local (Atualização)

*** Test Cases ***

Testcase: Preencher todos os campos da tela Consulta de Locais (Busca Externa) através da tela Consulta de Histórico de Local (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Local
  Ao visualizar a tela: Histórico de Local (Atualização)
  E clicar no botão: Buscar Dados Externos para Local do Organograma
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Locais (Busca Externa)
  E preencher o campo Organograma "ok"
  E preencher o campo Local do Organograma "ok" 
  E preencher o campo Descrição "ok"      

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Local
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Local

Ao visualizar a tela: Histórico de Local (Atualização)
  resource_frmHistoricoLocal.Acessar Tela Histórico de Local (Atualização)

E clicar no botão: Buscar Dados Externos para Local do Organograma
  resource_frmHistoricoLocal.Clicar No Botão Buscar Dados Externos Para Local do Organograma

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Locais (Busca Externa)
  resource_cnsLocais.Acessar Tela Consulta de Locais (Busca Externa)

E preencher o campo Organograma "${ORGANOGRAMA}"
  resource_cnsLocais.Preencher o campo Organograma "${ORGANOGRAMA}"

E preencher o campo Local do Organograma "${LOCAL_DO_ORGANOGRAMA}"
  resource_cnsLocais.Preencher o campo Local do Organograma "${LOCAL_DO_ORGANOGRAMA}"

E preencher o campo Descrição "${DESCRIÇÃO}"
  resource_cnsLocais.Preencher o campo Descrição "${DESCRIÇÃO}"
