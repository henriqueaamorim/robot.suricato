*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcargadescargaentrada.robot
Resource        ../../../../resource/app/resource_cnscargadescargaentrada.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Movimentação de Veículos Entrada (Filtro)
${APPNAME}     cnscargadescargaentrada
${OBJETIVO}    Verificar todos os campos na tela Movimentação de Veículos Entrada (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na tela Movimentação de Veículos Entrada (Filtro)
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Veículo | Entrada
  Quando eu visualizar a tela: Movimentação de Veículos (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Movimentação de Veículos Entrada (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Placa
  E verificar o campo: Data Chegada
  E verificar o campo: Hora Chegada
  E verificar o campo: Motorista
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Veículo | Entrada
  resource_mnu.Clicar No Menu Entrada | Veículo | Entrada

Quando eu visualizar a tela: Movimentação de Veículos (Consulta)
  resource_cnscargadescargaentrada.Acessar Tela: Movimentação de Veículos Entrada (Consulta)

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Movimentação de Veículos Entrada (Filtro)
  resource_cnscargadescargaentrada.Acessar Tela: Movimentação de Veículos Entrada (Filtro)
  
E verificar a label: Pesquisa
  resource_cnscargadescargaentrada.Verificar a label Pesquisa

E verificar o campo: Placa
  resource_cnscargadescargaentrada.Verificar o campo Placa

E verificar o campo: Data Chegada
  resource_cnscargadescargaentrada.Verificar o campo Data Chegada

E verificar o campo: Hora Chegada
  resource_cnscargadescargaentrada.Verificar o campo Hora Chegada

E verificar o campo: Motorista
  resource_cnscargadescargaentrada.Verificar o campo Motorista

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
