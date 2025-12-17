*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnssaidafrota.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Entrega de Veículo
${APPNAME}     cnssaidafrota
${OBJETIVO}    Verificar todas as labels na tela: Entrega de Veículo (Consulta)

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Entrega de Veículo (Consulta)
  [Tags]  VERIFY   246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Utilização Veículos | Entrega
  Quando visualizar a tela: Entrega de Veículo (Consulta)
  Então devo verificar a label Veículo
  E verificar a label Modelo
  E verificar a label Data/Hora de Saída
  E verificar a label Empresa
  E verificar a label Tipo
  E verificar a label Matricula
  E verificar a label Nome
  E verificar a label Portaria de Saída
  E verificar a label Motivo
  E verificar a label Destino
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Utilização Veículos | Entrega
  resource_mnu.Clicar No Menu Veículos | Frota | Utilização Veículos | Entrega

Quando visualizar a tela: Entrega de Veículo (Consulta)
  resource_cnssaidafrota.Acessar Tela Entrega de Veículo

Então devo verificar a label Veículo
  resource_cnssaidafrota.Verificar a label Veículo

E verificar a label Modelo
  resource_cnssaidafrota.Verificar a label Modelo

E verificar a label Data/Hora de Saída
  resource_cnssaidafrota.Verificar a label Data/Hora de Saída

E verificar a label Empresa
  resource_cnssaidafrota.Verificar a label Empresa

E verificar a label Tipo
  resource_cnssaidafrota.Verificar a label Tipo

E verificar a label Matricula
  resource_cnssaidafrota.Verificar a label Matricula

E verificar a label Nome
  resource_cnssaidafrota.Verificar a label Nome

E verificar a label Portaria de Saída
  resource_cnssaidafrota.Verificar a label Portaria de Saída

E verificar a label Motivo
  resource_cnssaidafrota.Verificar a label Motivo

E verificar a label Destino
  resource_cnssaidafrota.Verificar a label Destino

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
