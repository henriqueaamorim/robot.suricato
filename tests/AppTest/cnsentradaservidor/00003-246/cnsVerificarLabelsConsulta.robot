*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsentradaservidor.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta de Autorização de Entrada
${APPNAME}     cnsentradaservidor
${OBJETIVO}    Verificar todas as labels na tela: Autorização de Entrada (Consulta)

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Autorização de Entrada (Consulta)
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Autorização | Entrada
  Quando visualizar a tela: Autorização de Entrada (Consulta)
  Então devo verificar a label Empresa
  E verificar a label: Tipo do Colaborador
  E verificar a label: Matrícula
  E verificar a label: Data de Entrada
  E verificar a label: Hora de Entrada
  E verificar a label: Crachá
  E verificar a label: Grupo de Acesso
  E verificar a label: Data de Validade
  E verificar a label: Observações
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Autorização | Entrada
  resource_mnu.Clicar No Menu Entrada | Autorização | Entrada

Quando visualizar a tela: Autorização de Entrada (Consulta)
  resource_cnsentradaservidor.Acessar Tela: Autorização de Entrada (Consulta)

Então devo verificar a label Empresa
  resource_cnsentradaservidor.Verificar a label Empresa

E verificar a label: Tipo do Colaborador
  resource_cnsentradaservidor.Verificar a label Tipo do Colaborador

E verificar a label: Matrícula
  resource_cnsentradaservidor.Verificar a label Matrícula

E verificar a label: Data de Entrada
  resource_cnsentradaservidor.Verificar a label Data de Entrada

E verificar a label: Hora de Entrada
  resource_cnsentradaservidor.Verificar a label Hora de Entrada

E verificar a label: Crachá
  resource_cnsentradaservidor.Verificar a label Crachá

E verificar a label: Grupo de Acesso
  resource_cnsentradaservidor.Verificar a label Grupo de Acesso

E verificar a label: Data de Validade
  resource_cnsentradaservidor.Verificar a label Data de Validade

E verificar a label: Observações
  resource_cnsentradaservidor.Verificar a label Observações

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
