*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_conssaidavisitantes.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta de Saída de Visitantes
${APPNAME}     conssaidavisitantes
${OBJETIVO}    Verificar todas as labels na tela: Saída de Visitante (Consulta)

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Saída de Visitante (Consulta)
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Saída de Visitante
  Quando visualizar a tela: Saída de Visitante (Consulta)
  Então devo verificar a label: Sair
  E verificar a label: Data/Hora de Entrada
  E verificar a label: Código do Visitante
  E verificar a label: Nome do Visitante
  E verificar a label: Crachá
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Visitante | Saída de Visitante
  resource_mnu.Clicar No Menu Entrada | Visitante | Saída de Visitante

Quando visualizar a tela: Saída de Visitante (Consulta)
  resource_conssaidavisitantes.Acessar Tela Consulta de Saída de Visitantes

Então devo verificar a label: Sair
  resource_conssaidavisitantes.Verificar a label Sair

E verificar a label: Data/Hora de Entrada
  resource_conssaidavisitantes.Verificar a label Data/Hora de Entrada

E verificar a label: Código do Visitante
  resource_conssaidavisitantes.Verificar a label Código do Visitante

E verificar a label: Nome do Visitante
  resource_conssaidavisitantes.Verificar a label Nome do Visitante

E verificar a label: Crachá
  resource_conssaidavisitantes.Verificar a label Crachá

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
