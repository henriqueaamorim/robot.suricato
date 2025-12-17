*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnssaidaimprensa.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta de Crachás para Saída (Filtro)
${APPNAME}     cnssaidaimprensa
${OBJETIVO}    Verificar todos os campos na tela: Saída de Candidato (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Saída de Candidato (Filtro)
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Candidato | Saída
  Quando visualizar a tela: Saída de Candidato (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Saída de Candidato (Filtro)
  E verificar o campo: Data de Entrada
  E verificar o campo: Hora de Entrada
  E verificar o campo: Candidato
  E verificar o campo: Crachá
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Candidato | Saída
  resource_mnu.Clicar No Menu Entrada | Candidato | Saída

Quando visualizar a tela: Saída de Candidato (Consulta)
  resource_cnssaidaimprensa.Acessar Tela: Saída de Candidato (Consulta)

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Saída de Candidato (Filtro)
  resource_cnssaidaimprensa.Acessar Tela: Saída de Candidato (Filtro)

E verificar o campo: Data de Entrada
  resource_cnssaidaimprensa.Verificar o campo Data de Entrada

E verificar o campo: Hora de Entrada
  resource_cnssaidaimprensa.Verificar o campo Hora de Entrada

E verificar o campo: Candidato
  resource_cnssaidaimprensa.Verificar o campo Candidato

E verificar o campo: Crachá
  resource_cnssaidaimprensa.Verificar o campo Crachá

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
