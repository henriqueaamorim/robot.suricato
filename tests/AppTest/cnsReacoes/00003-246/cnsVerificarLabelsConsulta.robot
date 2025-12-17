*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsReacoes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os labels na tela: Reação de Alarme (Consulta)
${SCREENNAME}  Reação de Alarme
${APPNAME}     cnsReacoes

*** Test Cases ***
Testcase: Verificar todos os labels na tela: Reação de Alarme (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Alarme | Reação de Alarme
  Quando ver a tela: Reação de Alarme (Consulta)
  Então devo verificar a label: Código da Reação
  E verifcar a label: Reação
  E verifcar a label: Código do Lote de Comando
  E verifcar a label: Lote
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Alarme | Reação de Alarme
  resource_mnu.Clicar No Menu Dispositivo | Alarme | Reação de Alarme

Quando ver a tela: Reação de Alarme (Consulta)
  resource_cnsReacoes.Acessar Tela Consulta de Reações

Então devo verificar a label: Código da Reação
    resource_cnsReacoes.Verificar a label Código da Reação

E verifcar a label: Reação
    resource_cnsReacoes.Verificar a label Reação

E verifcar a label: Código do Lote de Comando
    resource_cnsReacoes.Verificar a label Código do Lote de Comando

E verifcar a label: Lote
    resource_cnsReacoes.Verificar a label Lote

E verificar se existe o campo Teste na tela 
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
