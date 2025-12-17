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
${OBJETIVO}    Verificar todos os campos na tela: Movimentação de Veículos Saída (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Movimentação de Veículos Saída (Filtro)
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Veículo | Saída
  Quando visualizar a tela: Movimentação de Veículos Saída (Consulta)
  E clicar no botão: Pesquisar Registros 
  Então devo vizualizar a tela: Movimentação de Veículos Saída (Filtro)
  E verificar o campo: Placa
  E verificar o campo: Data Chegada
  E verificar o campo: Hora Chegada
  E verificar o campo: Motorista
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Veículo | Saída
  resource_mnu.Clicar No Menu Entrada | Veículo | Saída

Quando visualizar a tela: Movimentação de Veículos Saída (Consulta)
  resource_cnscargadescargasaida.Acessar Tela Movimentação de Veículos Saída (Consulta)

E clicar no botão: Pesquisar Registros 
    resource_btn.Clicar no botão Pesquisar Registros

Então devo vizualizar a tela: Movimentação de Veículos Saída (Filtro) 
    resource_cnscargadescargasaida.Acessar Tela Movimentação de Veículos Saída (Filtro)

E verificar o campo: Placa
  resource_cnscargadescargasaida.Verificar o campo Placa

E verificar o campo: Data Chegada
  resource_cnscargadescargasaida.Verificar o campo Data Chegada

E verificar o campo: Hora Chegada
  resource_cnscargadescargasaida.Verificar o campo Hora Chegada

E verificar o campo: Motorista
  resource_cnscargadescargasaida.Verificar o campo Motorista

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
