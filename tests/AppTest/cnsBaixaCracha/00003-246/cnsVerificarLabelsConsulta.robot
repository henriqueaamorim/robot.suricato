*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsBaixaCracha.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta de Baixa Autorização Entrada
${APPNAME}     cnsBaixaCracha
${OBJETIVO}    Verificar todas as labels na tela: Baixa Autorização Entrada (Consulta)

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Baixa Autorização Entrada (Consulta)
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Autorização | Baixa de Autorização
  Quando visualizar a tela: Baixa Autorização Entrada (Consulta)
  Então devo verificar a label: Crachá
  E verificar a label: Empresa
  E verificar a label: Tipo do Colaborador
  E verificar a label: Matrícula
  E verificar a label: Nome
  E verificar a label: Data de Entrada
  E verificar a label: Hora de Entrada
  E verificar a label: Data de Saída
  E verificar a label: Hora de Saída
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Autorização | Baixa de Autorização
  resource_mnu.Clicar No Menu Entrada | Autorização | Baixa de Autorização

Quando visualizar a tela: Baixa Autorização Entrada (Consulta)
  resource_cnsBaixaCracha.Acessar Tela: Baixa Autorização Entrada (Consulta)

Então devo verificar a label: Crachá
  resource_cnsBaixaCracha.Verificar a label Crachá

E verificar a label: Empresa
  resource_cnsBaixaCracha.Verificar a label Empresa

E verificar a label: Tipo do Colaborador
  resource_cnsBaixaCracha.Verificar a label Tipo do Colaborador

E verificar a label: Matrícula
  resource_cnsBaixaCracha.Verificar a label Matrícula

E verificar a label: Nome
  resource_cnsBaixaCracha.Verificar a label Nome

E verificar a label: Data de Entrada
  resource_cnsBaixaCracha.Verificar a label Data de Entrada

E verificar a label: Hora de Entrada
  resource_cnsBaixaCracha.Verificar a label Hora de Entrada

E verificar a label: Data de Saída
  resource_cnsBaixaCracha.Verificar a label Data de Saída

E verificar a label: Hora de Saída
  resource_cnsBaixaCracha.Verificar a label Hora de Saída

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
