*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctropcoesentrada.robot
Resource        ../../../../resource/app/resource_consultimasvisitas.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta de Últimas Visitas (Filtro)
${APPNAME}     consultimasvisitas
${OBJETIVO}    Verificar todos os campos na tela: Consulta de Últimas Visitas (Filtro).


*** Test Cases ***
Testcase: Verificar todos os campos na tela: Consulta de Últimas Visitas (Filtro)
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitante
  Quando eu visualizar a tela: Opções de Entrada de Visitante
  E clicar no botão: Acessar Visitas
  Então devo visualizar a tela: Última Visita (Filtro)
  E verificar a label Pesquisa
  E verificar o campo Nome
  E verificar o campo Empresa Terceira
  E verificar o campo Portaria
  E verificar o campo Tipo do Documento
  E verificar o campo Número do Documento
  E verificar o campo Data da Entrada
  E verificar o campo Crachá
  E verificar o campo Placa do Veículo
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitante
  resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Visitante

Quando eu visualizar a tela: Opções de Entrada de Visitante
  resource_ctropcoesentrada.Acessar Tela Opções de Entrada de Visitante

E clicar no botão: Acessar Visitas
  resource_btn.Clicar No Botão Últimas Visitas

Então devo visualizar a tela: Última Visita (Filtro)
  resource_consultimasvisitas.Acessar Tela Consulta de Últimas Visitas (Filtro)

E verificar a label Pesquisa
  resource_consultimasvisitas.Verificar a label Pesquisa

E verificar o campo Nome
  resource_consultimasvisitas.Verificar o campo Nome

E verificar o campo Empresa Terceira
  resource_consultimasvisitas.Verificar o campo Empresa Terceira

E verificar o campo Portaria
  resource_consultimasvisitas.Verificar o campo Portaria

E verificar o campo Tipo do Documento
  resource_consultimasvisitas.Verificar o campo Tipo do Documento

E verificar o campo Número do Documento
  resource_consultimasvisitas.Verificar o campo Número do Documento

E verificar o campo Data da Entrada
  resource_consultimasvisitas.Verificar o campo Data da Entrada

E verificar o campo Crachá
  resource_consultimasvisitas.Verificar o campo Crachá

E verificar o campo Placa do Veículo
  resource_consultimasvisitas.Verificar o campo Placa do Veículo

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
