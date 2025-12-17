*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consReprocessamentoMarcacao.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Reprocessamento de Marcação
${APPNAME}     consReprocessamentoMarcacao
${OBJETIVO}    Verificar todos os campos na tela: Reprocessamento de Marcação

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Reprocessamento de Marcação
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Comando | Reprocessamento de Marcação
  Então devo visualizar a tela: Reprocessamento de Marcação
  E verificar o campo Endereço IP
  E verificar o campo Nome
  E verificar o campo Numero PIS
  E verificar o campo Matricula
  E verificar o campo Crachá
  E verificar o campo Data
  E verificar o campo Hora
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Controle | Comando | Reprocessamento de Marcação
  resource_mnu.Clicar No Menu Controle | Comando | Reprocessamento de Marcação

Então devo visualizar a tela: Reprocessamento de Marcação
  resource_consReprocessamentoMarcacao.Acessar Tela Reprocessamento de Marcação

E verificar o campo Endereço IP
  resource_consReprocessamentoMarcacao.Verificar o campo Endereço IP

E verificar o campo Nome
  resource_consReprocessamentoMarcacao.Verificar o campo Nome

E verificar o campo Numero PIS
  resource_consReprocessamentoMarcacao.Verificar o campo Numero PIS

E verificar o campo Matricula
  resource_consReprocessamentoMarcacao.Verificar o campo Matricula

E verificar o campo Crachá
  resource_consReprocessamentoMarcacao.Verificar o campo Crachá

E verificar o campo Data
  resource_consReprocessamentoMarcacao.Verificar o campo Data

E verificar o campo Hora
  resource_consReprocessamentoMarcacao.Verificar o campo Hora

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"