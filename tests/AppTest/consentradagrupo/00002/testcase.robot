*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctropcoesentradagrupo.robot
Resource        ../../../../resource/app/resource_consentradagrupo.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Entrada de Grupo (Consulta)
${APPNAME}     consentradagrupo
${OBJETIVO}    Verificar todos os campos na tela Entrada de Grupo (Consulta)


*** Test Cases ***

Testcase: Acessar Tela Entrada de Grupo (Consulta)
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Entrada de Grupo
  Quando eu visualizar a tela: Opções de Entrada de Grupo de Visitantes
  E clicar no botão: Últimas Visitas
  Então devo visualizar a tela: Entrada de Grupo (Consulta)
  E verificar a label Opções
  E verificar a label Grupo de Visitante
  E verificar a label Portaria
  E verificar a label Data/Hora de Entrada
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Visitante | Entrada de Grupo
  resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Grupo

Quando eu visualizar a tela: Opções de Entrada de Grupo de Visitantes
  resource_ctropcoesentradagrupo.Acessar Tela Opções de Entrada de Grupo de Visitantes

E clicar no botão: Últimas Visitas
  resource_btn.Clicar No Botão Últimas Visitas

Então devo visualizar a tela: Entrada de Grupo (Consulta)
  resource_consentradagrupo.Acessar Tela Entrada de Grupo (Consulta)

E verificar a label Opções
  resource_consentradagrupo.Verificar a label Opções

E verificar a label Grupo de Visitante
  resource_consentradagrupo.Verificar a label Grupo de Visitante

E verificar a label Portaria
  resource_consentradagrupo.Verificar a label Portaria

E verificar a label Data/Hora de Entrada
  resource_consentradagrupo.Verificar a label Data/Hora de Entrada

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
