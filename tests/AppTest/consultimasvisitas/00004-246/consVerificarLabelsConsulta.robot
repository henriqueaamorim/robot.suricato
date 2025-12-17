*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctropcoesentrada.robot
Resource        ../../../../resource/app/resource_consultimasvisitas.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta de Últimas Visitas
${APPNAME}     consultimasvisitas
${OBJETIVO}    Verificar todas as labels na tela: Última Visita (Consulta)


*** Test Cases ***
Testcase: Verificar todas as labels na tela: Última Visita (Consulta)
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitante
  Quando eu visualizar a tela: Opções de Entrada de Visitante
  E clicar no botão: Acessar Visitas
  E visualizar a tela: Última Visita (Filtro)
  E clicar no botão: Pesquisa
  Então devo visualizar a tela: Última Visita (Consulta)
  E verificar a label Opções 
  E verificar a label Nome do Visitante
  E verificar a label Empresa
  E verificar a label Tipo do Documento
  E verificar a label Número do Documento
  E verificar a label Portaria
  E verificar a label Data/Hora da Entrada
  E verificar a label Crachá
  E verificar a label Placa do Veículo
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitante
  resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Visitante

Quando eu visualizar a tela: Opções de Entrada de Visitante
  resource_ctropcoesentrada.Acessar Tela Opções de Entrada de Visitante

E clicar no botão: Acessar Visitas
  resource_btn.Clicar No Botão Últimas Visitas

E visualizar a tela: Última Visita (Filtro)
  resource_consultimasvisitas.Acessar Tela Consulta de Últimas Visitas (Filtro)

E clicar no botão: Pesquisa
  resource_btn.Clicar No Botão Pesquisa

Então devo visualizar a tela: Última Visita (Consulta)
  resource_consultimasvisitas.Acessar Tela Consulta de Últimas Visitas

E verificar a label Opções 
  resource_consultimasvisitas.Verificar a label Opções 

E verificar a label Nome do Visitante
  resource_consultimasvisitas.Verificar a label Nome do Visitante

E verificar a label Empresa
  resource_consultimasvisitas.Verificar a label Empresa

E verificar a label Tipo do Documento
  resource_consultimasvisitas.Verificar a label Tipo do Documento

E verificar a label Número do Documento
  resource_consultimasvisitas.Verificar a label Número do Documento

E verificar a label Portaria
  resource_consultimasvisitas.Verificar a label Portaria

E verificar a label Data/Hora da Entrada
  resource_consultimasvisitas.Verificar a label Data/Hora da Entrada

E verificar a label Crachá
  resource_consultimasvisitas.Verificar a label Crachá

E verificar a label Placa do Veículo
  resource_consultimasvisitas.Verificar a label Placa do Veículo

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
