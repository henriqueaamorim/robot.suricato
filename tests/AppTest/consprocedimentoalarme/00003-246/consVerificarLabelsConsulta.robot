*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmprocedimentotratalarme.robot
Resource        ../../../../resource/app/resource_consprocedimentoalarme.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Procedimento de Alarme (Consulta)
${SCREENNAME}  Procedimento de Alarme
${APPNAME}     consprocedimentoalarme

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Procedimento de Alarme (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Alarme | Procedimento de Alarme
  Então devo visualizar a tela: Procedimento de Alarme (Consulta)
  E verificar a label: Código Alarme
  E verificar a label: Descrição Alarme
  E verificar a label: Procedimento
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Alarme | Procedimento de Alarme
  resource_mnu.Clicar No Menu Dispositivo | Alarme | Procedimento de Alarme

Então devo visualizar a tela: Procedimento de Alarme (Consulta)
  resource_consprocedimentoalarme.Acessar Tela Consulta de Procedimentos para Tratamento de Alarmes

E verificar a label: Código Alarme
    resource_consprocedimentoalarme.Verificar a label Código Alarme

E verificar a label: Descrição Alarme
    resource_consprocedimentoalarme.Verificar a label Descrição Alarme

E verificar a label: Procedimento
    resource_consprocedimentoalarme.Verificar a label Procedimento

E verificar se existe o campo Teste na tela
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"    