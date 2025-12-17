*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsHistoricoEscala.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Histórico de Escala (Consulta)
${SCREENNAME}  Escala
${APPNAME}     cnsHistoricoEscala

*** Test Cases ***

Testcase: Verificar todas as labels na Tela: Histórico de Escala (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Escala
  Quando visualizar a tela: Histórico de Escala (Consulta)
  Então devo verificar a label: Chave Externa
  E verificar a label: Empresa
  E verificar a label: Tipo do Colaborador
  E verificar a label: Matrícula
  E verificar a label: Nome
  E verificar a label: Data da Alteração
  E verificar a label: Código da Escala
  E verificar a label: Escala
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Escala
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Escala

Quando visualizar a tela: Histórico de Escala (Consulta)
  resource_cnsHistoricoEscala.Acessar Tela Consulta de Histórico de Escalas

Então devo verificar a label: Chave Externa
    resource_cnsHistoricoEscala.Verificar a label Chave Externa

E verificar a label: Empresa
    resource_cnsHistoricoEscala.Verificar a label Empresa

E verificar a label: Tipo do Colaborador
    resource_cnsHistoricoEscala.Verificar a label Tipo do Colaborador

E verificar a label: Matrícula
    resource_cnsHistoricoEscala.Verificar a label Matrícula

E verificar a label: Nome
    resource_cnsHistoricoEscala.Verificar a label Nome

E verificar a label: Data da Alteração
    resource_cnsHistoricoEscala.Verificar a label Data da Alteração

E verificar a label: Código da Escala
    resource_cnsHistoricoEscala.Verificar a label Código da Escala

E verificar a label: Escala
    resource_cnsHistoricoEscala.Verificar a label Escala

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
