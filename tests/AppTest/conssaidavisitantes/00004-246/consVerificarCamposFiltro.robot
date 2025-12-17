*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_conssaidavisitantes.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta de Saída de Visitantes (Filtro)
${APPNAME}     conssaidavisitantes
${OBJETIVO}    Verificar todos os campos na tela: Saída de Visitante (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Saída de Visitante (Filtro)
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Saída de Visitante
  Quando visualizar a tela: Saída de Visitante (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Saída de Visitante (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Data de Entrada
  E verificar o campo: Hora de Entrada
  E verificar o campo: Crachá
  E verificar o campo: Grupo de Visitantes
  E verificar o campo: Nome do Visitante
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Visitante | Saída de Visitante
  resource_mnu.Clicar No Menu Entrada | Visitante | Saída de Visitante

Quando visualizar a tela: Saída de Visitante (Consulta)
  resource_conssaidavisitantes.Acessar Tela Consulta de Saída de Visitantes

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Saída de Visitante (Filtro)
  resource_conssaidavisitantes.Acessar Tela Consulta de Saída de Visitantes (Filtro)
  
E verificar a label: Pesquisa
  resource_conssaidavisitantes.Verificar a label Pesquisa

E verificar o campo: Data de Entrada
  resource_conssaidavisitantes.Verificar o campo Data de Entrada

E verificar o campo: Hora de Entrada
  resource_conssaidavisitantes.Verificar o campo Hora de Entrada

E verificar o campo: Crachá
  resource_conssaidavisitantes.Verificar o campo Crachá

E verificar o campo: Grupo de Visitantes
  resource_conssaidavisitantes.Verificar o campo Grupo de Visitantes

E verificar o campo: Nome do Visitante
  resource_conssaidavisitantes.Verificar o campo Nome do Visitante

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
