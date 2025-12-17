*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consAprovacacaoVisitasSolicitadas.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Aprovação de Visita (Filtro)
${SCREENNAME}  Aprovação de Visita 
${APPNAME}     consAprovacacaoVisitasSolicitadas

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Aprovação de Visita (Filtro)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Visitante | Aprovar Solicitação de Visita
  Quando visualizar a tela: Aprovação de Visita (Consulta)
  E clicar no botão: Pesquisar registro
  Então devo visualizar a tela: Aprovação de Visita (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Data Prevista	
  E verificar o campo: Tipo de Documento	
  E verificar o campo: Número do Documento	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Visitante | Aprovar Solicitação de Visita
  resource_mnu.Clicar No Menu Identificação | Visitante | Aprovar Solicitação de Visita

Quando visualizar a tela: Aprovação de Visita (Consulta)
  resource_consAprovacacaoVisitasSolicitadas.Acessar Tela: Aprovação de Visita 

E clicar no botão: Pesquisar registro
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Aprovação de Visita (Filtro)
    resource_consAprovacacaoVisitasSolicitadas.Acessar Tela: Aprovação de Visita (Filtro)

E verificar a label: Pesquisa
    resource_consAprovacacaoVisitasSolicitadas.Verificar a label Pesquisa

E verificar o campo: Data Prevista	
    resource_consAprovacacaoVisitasSolicitadas.Verificar campo: Data Prevista

E verificar o campo: Tipo de Documento	
    resource_consAprovacacaoVisitasSolicitadas.Verificar o campo: Tipo de Documento

E verificar o campo: Número do Documento	
    resource_consAprovacacaoVisitasSolicitadas.Verificar o campo: Número do Documento

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"