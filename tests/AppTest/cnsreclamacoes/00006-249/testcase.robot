*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmreclamacoes.robot
Resource        ../../../../resource/app/resource_cnsreclamacoes.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Reclamações
${APPNAME}     cnsreclamacoes
${OBJETIVO}    Verificar todos os campos na tela Consulta de Reclamações.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Reclamações
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Ocorrências | Reclamações
  Quando eu visualizar a tela: Reclamações (Inclusão)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Reclamações
  E verificar a label Placa do Veículo
  E verificar a label Data/Hora da Reclamação
  E verificar a label Data/Hora do Ocorrido
  E verificar a label Código do Condutor
  E verificar a label Nome do Condutor
  E verificar a label Descrição
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Ocorrências | Reclamações
  resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Reclamações

Quando eu visualizar a tela: Reclamações (Inclusão)
  resource_frmreclamacoes.Acessar Tela Reclamações (Inclusão)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Reclamações
  resource_cnsreclamacoes.Acessar Tela Consulta de Reclamações

E verificar a label Placa do Veículo
  resource_cnsreclamacoes.Verificar a label Placa do Veículo

E verificar a label Data/Hora da Reclamação
  resource_cnsreclamacoes.Verificar a label Data/Hora da Reclamação

E verificar a label Data/Hora do Ocorrido
  resource_cnsreclamacoes.Verificar a label Data/Hora do Ocorrido

E verificar a label Código do Condutor
  resource_cnsreclamacoes.Verificar a label Código do Condutor

E verificar a label Nome do Condutor
  resource_cnsreclamacoes.Verificar a label Nome do Condutor

E verificar a label Descrição
  resource_cnsreclamacoes.Verificar a label Descrição

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
