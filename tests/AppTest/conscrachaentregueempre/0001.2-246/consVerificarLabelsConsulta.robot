*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_conscrachaentregueempre.robot
Resource        ../../../../resource/app/resource_frmcrachaempregado.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Crachá Titular (Consulta)
${SCREENNAME}  Crachá
${APPNAME}     conscrachaentregueempre

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Crachá Titular (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Crachá
  Quando visualizar a tela: Crachá Titular (Consulta)
  Então devo verificar a label: Crachá
  E verificar a label: Código do Colaborador
  E verificar a label: Empresa
  E verificar a label: Tipo do Colaborador
  E verificar a label: Matrícula
  E verificar a label: Nome
  E verificar a label: Data Inicial do Uso
  E verificar a label: Hora Inicial do Uso
  E verificar a label: Data Final do Uso
  E verificar a label: Hora Final do Uso
  E verificar a label: Status Histórico
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Crachá
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Crachá

Quando visualizar a tela: Crachá Titular (Consulta)
  resource_conscrachaentregueempre.Acessar Tela Consulta de Crachá Titular

Então devo verificar a label: Crachá
    resource_conscrachaentregueempre.Verificar a label Crachá

E verificar a label: Código do Colaborador
    resource_conscrachaentregueempre.Verificar a label Código do Colaborador

E verificar a label: Empresa
    resource_conscrachaentregueempre.Verificar a label Empresa

E verificar a label: Tipo do Colaborador
    resource_conscrachaentregueempre.Verificar a label Tipo do Colaborador

E verificar a label: Matrícula
    resource_conscrachaentregueempre.Verificar a label Matrícula

E verificar a label: Nome
    resource_conscrachaentregueempre.Verificar a label Nome

E verificar a label: Data Inicial do Uso
    resource_conscrachaentregueempre.Verificar a label Data Inicial do Uso

E verificar a label: Hora Inicial do Uso
    resource_conscrachaentregueempre.Verificar a label Hora Inicial do Uso

E verificar a label: Data Final do Uso
    resource_conscrachaentregueempre.Verificar a label Data Final do Uso

E verificar a label: Hora Final do Uso
    resource_conscrachaentregueempre.Verificar a label Hora Final do Uso

E verificar a label: Status Histórico
    resource_conscrachaentregueempre.Verificar a label Status Histórico

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"