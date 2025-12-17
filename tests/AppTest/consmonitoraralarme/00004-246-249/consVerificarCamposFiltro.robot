*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consmonitoraralarme.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}   Monitorar Alarmes (Filtro)
${APPNAME}      consmonitoraralarme
${OBJETIVO}     Verificar todos os campos na tela: Monitorar Alarmes (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Monitorar Alarmes (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Alarme - Grid
  Quando visualizar a tela: Monitorar Alarmes (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Monitorar Alarmes (Filtro)
  E verificar o campo Planta
  E verificar o campo Codigo do Coletor
  E verificar o campo Situação
  E verificar o campo Sinal de Alarme
  E verificar o campo Equipamento
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Alarme - Grid
  resource_mnu.Clicar No Menu Controle | Monitoramento | Alarme - Grid

Quando visualizar a tela: Monitorar Alarmes (Consulta)
  resource_consmonitoraralarme.Acessar Tela Monitorar Alarmes

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Monitorar Alarmes (Filtro)
  resource_consmonitoraralarme.Acessar Tela Monitorar Alarmes (Filtro)

E verificar o campo Planta
  resource_consmonitoraralarme.Verificar o campo Planta

E verificar o campo Codigo do Coletor
  resource_consmonitoraralarme.Verificar o campo Codigo do Coletor

E verificar o campo Situação
  resource_consmonitoraralarme.Verificar o campo Situação

E verificar o campo Sinal de Alarme
  resource_consmonitoraralarme.Verificar o campo Sinal de Alarme

E verificar o campo Equipamento
  resource_consmonitoraralarme.Verificar o campo Equipamento

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"