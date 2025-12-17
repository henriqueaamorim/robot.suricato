*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmreclamacoes.robot
Resource        ../../../../resource/app/resource_cnsreclamacoes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Reclamações (Consulta)
${SCREENNAME}  Reclamações
${APPNAME}     cnsreclamacoes

*** Test Cases ***
Testcase: Acessar Tela: Reclamações (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Ocorrências | Reclamações
  Quando visualizar a tela: Reclamações (Consulta)
  Então devo verificar a label: Placa do Veículo
  E verificar a label: Data/Hora da Reclamação
  E verificar a label: Data/Hora do Ocorrido
  E verificar a label: Código do Condutor
  E verificar a label: Nome do Condutor
  E verificar a label: Descrição
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Ocorrências | Reclamações
  resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Reclamações

Quando visualizar a tela: Reclamações (Consulta)
  resource_cnsreclamacoes.Acessar Tela Consulta de Reclamações

Então devo verificar a label: Placa do Veículo
  resource_cnsreclamacoes.Verificar a label Placa do Veículo

E verificar a label: Data/Hora da Reclamação
  resource_cnsreclamacoes.Verificar a label Data/Hora da Reclamação

E verificar a label: Data/Hora do Ocorrido
  resource_cnsreclamacoes.Verificar a label Data/Hora do Ocorrido

E verificar a label: Código do Condutor
  resource_cnsreclamacoes.Verificar a label Código do Condutor

E verificar a label: Nome do Condutor
  resource_cnsreclamacoes.Verificar a label Nome do Condutor

E verificar a label: Descrição  
  resource_cnsreclamacoes.Verificar a label Descrição

E verificar se existe o campo Teste na tela   
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"  