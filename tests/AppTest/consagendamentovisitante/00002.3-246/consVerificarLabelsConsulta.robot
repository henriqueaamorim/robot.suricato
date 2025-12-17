*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consagendamentovisitante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}     Verificar todas as labels na tela: Solicitação de Visita (Consulta)
${SCREENNAME}   Agendamento de Visitante
${APPNAME}      consagendamentovisitante

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Solicitação de Visita (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Visitante | Solicitar Aprovação de Visita
  Quando visualizar a tela: Solicitação de Visita (Consulta)
  Então devo verificar a label: Código da Empresa do Visitado
  E verificar a label: Empresa do Visitado
  E verificar a label: Código do Tipo do Visitado
  E verificar a label: Tipo do Visitado
  E verificar a label: Matrícula
  E verificar a label: Visitado
  E verificar a label: Código do Visitante
  E verificar a label: Código do Tipo de Documento do Visitante
  E verificar a label: Tipo de Documento do Visitante
  E verificar a label: Número Documento do Visitante
  E verificar a label: Visitante
  E verificar a label: Ramal
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Visitante | Solicitar Aprovação de Visita
  resource_mnu.Clicar No Menu Identificação | Visitante | Solicitar Aprovação de Visita

Quando visualizar a tela: Solicitação de Visita (Consulta)
  resource_consagendamentovisitante.Acessar Tela: Solicitação de Visita (Consulta)

Então devo verificar a label: Código da Empresa do Visitado
  resource_consagendamentovisitante.Verificar a label Código da Empresa do Visitado

E verificar a label: Empresa do Visitado
  resource_consagendamentovisitante.Verificar a label Empresa do Visitado

E verificar a label: Código do Tipo do Visitado
  resource_consagendamentovisitante.Verificar a label Código do Tipo do Visitado

E verificar a label: Tipo do Visitado
  resource_consagendamentovisitante.Verificar a label Tipo do Visitado

E verificar a label: Matrícula
  resource_consagendamentovisitante.Verificar a label Matrícula

E verificar a label: Visitado
  resource_consagendamentovisitante.Verificar a label Visitado

E verificar a label: Código do Visitante
  resource_consagendamentovisitante.Verificar a label Código do Visitado

E verificar a label: Código do Tipo de Documento do Visitante
  resource_consagendamentovisitante.Verificar a label Código do Tipo de Documento do Visitante

E verificar a label: Tipo de Documento do Visitante
  resource_consagendamentovisitante.Verificar a label Tipo de Documento do Visitante

E verificar a label: Número Documento do Visitante
  resource_consagendamentovisitante.Verificar a label Número Documento do Visitante

E verificar a label: Visitante
  resource_consagendamentovisitante.Verificar a label Visitante

E verificar a label: Ramal
  resource_consagendamentovisitante.Verificar a label Ramal

E verificar se existe o campo Teste na tela
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
