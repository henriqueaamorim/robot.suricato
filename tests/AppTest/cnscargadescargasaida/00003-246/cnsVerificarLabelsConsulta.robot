*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnscargadescargasaida.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Movimentação de Veículos Saída - Filtro
${APPNAME}     cnscargadescargasaida
${OBJETIVO}    Verificar todas as labels na tela Movimentação de Veículos Saída (Consulta)

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Movimentação de Veículos Saída (Consulta)
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Veículo | Saída
  Quando visualizar a tela: Movimentação de Veículos Saída (Consulta)
  Então devo verificar a label: Placa
  E verificar a label: Data Chegada
  E verificar a label: Hora Chegada
  E verificar a label: Motorista
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Veículo | Saída
  resource_mnu.Clicar No Menu Entrada | Veículo | Saída

Quando visualizar a tela: Movimentação de Veículos Saída (Consulta)
  resource_cnscargadescargasaida.Acessar Tela Movimentação de Veículos Saída (Consulta)

Então devo verificar a label: Placa
  resource_cnscargadescargasaida.Verificar a label Placa

E verificar a label: Data Chegada
  resource_cnscargadescargasaida.Verificar a label Data Chegada

E verificar a label: Hora Chegada
  resource_cnscargadescargasaida.Verificar a label Hora Chegada

E verificar a label: Motorista
  resource_cnscargadescargasaida.Verificar a label Motorista

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
