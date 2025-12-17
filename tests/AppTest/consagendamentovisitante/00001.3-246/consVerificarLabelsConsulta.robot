*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consagendamentovisitante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}     Verificar todas as labels na tela: Agendamento de Visitante (Consulta)
${SCREENNAME}   Agendamento de Visitante
${APPNAME}      consagendamentovisitante

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Agendamento de Visitante (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Visitante | Agendamento Visitante
  Quando visualizar a tela: Agendamento de Visitante (Consulta)
  Então devo verificar a label: Data Prevista
  Então devo verificar a label: Hora Prevista
  Então devo verificar a label: Código do Visitado
  Então devo verificar a label: Código da Empresa do Visitado
  Então devo verificar a label: Empresa do Visitado
  Então devo verificar a label: Código do Tipo do Visitado
  Então devo verificar a label: Tipo do Visitado
  Então devo verificar a label: Matrícula
  Então devo verificar a label: Visitado
  Então devo verificar a label: Código do Visitante
  Então devo verificar a label: Código do Tipo de Documento do Visitante
  Então devo verificar a label: Tipo de Documento do Visitante
  Então devo verificar a label: Número Documento do Visitante
  Então devo verificar a label: Visitante
  Então devo verificar a label: Ramal
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Visitante | Agendamento Visitante
  resource_mnu.Clicar No Menu Identificação | Visitante | Agendamento Visitante

Quando visualizar a tela: Agendamento de Visitante (Consulta)
  resource_consagendamentovisitante.Acessar Tela Consulta de Agendamento de Visitantes

Então devo verificar a label: Data Prevista
    resource_consagendamentovisitante.Verificar a label Data Prevista

Então devo verificar a label: Hora Prevista
    resource_consagendamentovisitante.Verificar a label Hora Prevista

Então devo verificar a label: Código do Visitado
    resource_consagendamentovisitante.Verificar a label Código do Visitado

Então devo verificar a label: Código da Empresa do Visitado
    resource_consagendamentovisitante.Verificar a label Código da Empresa do Visitado

Então devo verificar a label: Empresa do Visitado
    resource_consagendamentovisitante.Verificar a label Empresa do Visitado

Então devo verificar a label: Código do Tipo do Visitado
  resource_consagendamentovisitante.Verificar a label Código do Tipo do Visitado

Então devo verificar a label: Tipo do Visitado
  resource_consagendamentovisitante.Verificar a label Tipo do Visitado

Então devo verificar a label: Matrícula
  resource_consagendamentovisitante.Verificar a label Matrícula

Então devo verificar a label: Visitado
  resource_consagendamentovisitante.Verificar a label Visitado

Então devo verificar a label: Código do Visitante
  resource_consagendamentovisitante.Verificar a label Código do Visitante

Então devo verificar a label: Código do Tipo de Documento do Visitante
  resource_consagendamentovisitante.Verificar a label Código do Tipo de Documento do Visitante

Então devo verificar a label: Tipo de Documento do Visitante
  resource_consagendamentovisitante.Verificar a label Tipo de Documento do Visitante

Então devo verificar a label: Número Documento do Visitante
  resource_consagendamentovisitante.Verificar a label Número Documento do Visitante

Então devo verificar a label: Visitante
  resource_consagendamentovisitante.Verificar a label Visitante

Então devo verificar a label: Ramal
  resource_consagendamentovisitante.Verificar a label Ramal

E verificar se existe o campo Teste na tela
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
