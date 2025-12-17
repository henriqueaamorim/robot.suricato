*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmagendamentoimprensa.robot
Resource        ../../../../resource/app/resource_cnsagendamentoimprensa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Consulta de Agendamento de Candidato (Filtro)
${SCREENNAME}  Consulta de Agendamento de Candidato
${APPNAME}     cnsagendamentoimprensa

*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Consulta de Agendamento de Candidato (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Candidato | Agendamento
  Quando eu visualizar a tela: Consulta de Agendamento de Candidato
  E clicar no botão: Pesquisar registro
  Então devo visualizar a tela: Consulta de Agendamento de Candidato (Filtro)
  E verificar o campo: Data
  E verificar o campo: Nome
  E verificar o campo: CPF
  E verificar o campo: Carteira de Identidade	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Agendamento
  resource_mnu.Clicar No Menu Identificação | Candidato | Agendamento

Quando eu visualizar a tela: Consulta de Agendamento de Candidato
  resource_cnsagendamentoimprensa.Acessar Tela: Consulta de Agendamento de Candidato

E clicar no botão: Pesquisar registro
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Agendamento de Candidato (Filtro)
  resource_cnsagendamentoimprensa.Acessar Tela: Consulta de Agendamento de Candidato (Filtro)

E verificar o campo: Data
    resource_cnsagendamentoimprensa.Verificar o campo: Data

E verificar o campo: Nome
    resource_cnsagendamentoimprensa.Verificar o campo: Nome

E verificar o campo: CPF
    resource_cnsagendamentoimprensa.Verificar o campo: CPF

E verificar o campo: Carteira de Identidade	
    resource_cnsagendamentoimprensa.Verificar o campo: Carteira de Identidade

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
