*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnssaidaimprensa.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta de Saída de Candidato
${APPNAME}     cnssaidaimprensa
${OBJETIVO}    Verificar todas as labels na tela: Saída de Candidato (Consulta)

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Saída de Candidato (Consulta)
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Candidato | Saída
  Quando visualizar a tela: Saída de Candidato (Consulta)
  Então devo verificar a label: Crachá
  E verificar a label: Candidato
  E verificar a label: Nome
  E verificar a label: Data/Hora de Entrada
  E verificar a label: Data/Hora de Validade
  E verificar a label: Data/Hora de Saída
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Candidato | Saída
  resource_mnu.Clicar No Menu Entrada | Candidato | Saída

Quando visualizar a tela: Saída de Candidato (Consulta)
  resource_cnssaidaimprensa.Acessar Tela: Saída de Candidato (Consulta)
  
Então devo verificar a label: Crachá
  resource_cnssaidaimprensa.Verificar a label Crachá

E verificar a label: Candidato
  resource_cnssaidaimprensa.Verificar a label Candidato

E verificar a label: Nome
  resource_cnssaidaimprensa.Verificar a label Nome

E verificar a label: Data/Hora de Entrada
  resource_cnssaidaimprensa.Verificar a label Data/Hora de Entrada

E verificar a label: Data/Hora de Validade
  resource_cnssaidaimprensa.Verificar a label Data/Hora de Validade

E verificar a label: Data/Hora de Saída
  resource_cnssaidaimprensa.Verificar a label Data/Hora de Saída

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
