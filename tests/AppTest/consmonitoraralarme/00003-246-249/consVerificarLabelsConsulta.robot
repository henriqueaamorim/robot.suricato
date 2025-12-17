*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consmonitoraralarme.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}   Monitorar Alarmes (Filtro)
${APPNAME}      consmonitoraralarme
${OBJETIVO}     Verificar todas as labels na tela: Monitorar Alarmes (Consulta)

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Monitorar Alarmes (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Alarme - Grid
  Quando visualizar a tela: Monitorar Alarmes (Consulta)
  #Então devo verificar a label: Planta - 1 (246)-PASS
  E verificar a label: Planta - 2
  E verificar a label: Prioridade
  E verificar a label: Data/Hora
  E verificar a label: Situação
  E verificar a label: Alarme
  E verificar a label: Codin
  E verificar a label: Status
  E verificar a label: Informações
  E verificar a label: Rec
  E verificar a label: Tra
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Alarme - Grid
  resource_mnu.Clicar No Menu Controle | Monitoramento | Alarme - Grid

Quando visualizar a tela: Monitorar Alarmes (Consulta)
  resource_consmonitoraralarme.Acessar Tela Monitorar Alarmes

E verificar a label: Planta - 2
  resource_consmonitoraralarme.Verificar a label Planta - 2

E verificar a label: Prioridade
  resource_consmonitoraralarme.Verificar a label Prioridade

E verificar a label: Data/Hora
  resource_consmonitoraralarme.Verificar a label Data/Hora

E verificar a label: Situação
  resource_consmonitoraralarme.Verificar a label Situação

E verificar a label: Alarme
  resource_consmonitoraralarme.Verificar a label Alarme

E verificar a label: Codin
  resource_consmonitoraralarme.Verificar a label Codin

E verificar a label: Status
  resource_consmonitoraralarme.Verificar a label Status

E verificar a label: Informações
  resource_consmonitoraralarme.Verificar a label Informações

E verificar a label: Rec
  resource_consmonitoraralarme.Verificar a label Rec

E verificar a label: Tra
  resource_consmonitoraralarme.Verificar a label Tra

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
