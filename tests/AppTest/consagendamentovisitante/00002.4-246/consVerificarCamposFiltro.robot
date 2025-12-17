*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consagendamentovisitante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}     Verificar todos os campos na tela: Solicitação de Visita (Filtro)
${SCREENNAME}   Agendamento de Visitante
${APPNAME}      consagendamentovisitante

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Solicitação de Visita (Filtro)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Visitante | Solicitar Aprovação de Visita 
  Quando visualizar a tela: Solicitação de Visita (Consulta)
  E clicar no botão: Pesquisar registro
  Então devo visualizar a tela: Solicitação de Visita (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Data Prevista	
  E verificar o campo: Matrícula
  E verificar o campo: Código do Tipo de Documento do Visitante	
  E verificar o campo: Número Documento do Visitante	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Visitante | Solicitar Aprovação de Visita
  resource_mnu.Clicar No Menu Identificação | Visitante | Solicitar Aprovação de Visita 

Quando visualizar a tela: Solicitação de Visita (Consulta)
  resource_consagendamentovisitante.Acessar Tela: Solicitação de Visita (Consulta)

E clicar no botão: Pesquisar registro
    resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Solicitação de Visita (Filtro)  
    resource_consagendamentovisitante.Acessar Tela: Solicitação de Visita (Filtro)

E verificar a label: Pesquisa
    resource_consagendamentovisitante.Verificar a label Pesquisa

E verificar o campo: Data Prevista	
    resource_consagendamentovisitante.Verificar o campo Data Prevista

E verificar o campo: Matrícula
    resource_consagendamentovisitante.Verificar o campo Matrícula

E verificar o campo: Código do Tipo de Documento do Visitante	
    resource_consagendamentovisitante.Verificar o campo Código do Tipo de Documento do Visitante

E verificar o campo: Número Documento do Visitante	
    resource_consagendamentovisitante.Verificar o campo Número Documento do Visitante

E verificar se existe o campo Teste na tela    
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"