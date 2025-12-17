*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcargadescargaentrada.robot
Resource        ../../../../resource/app/resource_cnscargadescargaentrada.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Movimentação de Veículos Entrada (Busca)
${APPNAME}     cnscargadescargaentrada
${OBJETIVO}    Verificar todas as labels na tela: Movimentação de Veículos Entrada (Consulta)

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Movimentação de Veículos Entrada (Consulta)
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Veículo | Entrada
  Quando eu visualizar a tela: Movimentação de Veículos Entrada (Consulta)
  Então devo verificar a label: Placa
  E verificar a label: Data Chegada
  E verificar a label: Hora Chegada
  E verificar a label: Motorista
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Veículo | Entrada
  resource_mnu.Clicar No Menu Entrada | Veículo | Entrada

Quando eu visualizar a tela: Movimentação de Veículos Entrada (Consulta)
  resource_cnscargadescargaentrada.Acessar Tela: Movimentação de Veículos Entrada (Consulta)

Então devo verificar a label: Placa
  resource_cnscargadescargaentrada.Verificar a label Placa

E verificar a label: Data Chegada
  resource_cnscargadescargaentrada.Verificar a label Data Chegada

E verificar a label: Hora Chegada
  resource_cnscargadescargaentrada.Verificar a label Hora Chegada

E verificar a label: Motorista
  resource_cnscargadescargaentrada.Verificar a label Motorista

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
