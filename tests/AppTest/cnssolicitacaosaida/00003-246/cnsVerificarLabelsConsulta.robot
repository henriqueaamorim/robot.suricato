*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmSolicitacaoSaida.robot
Resource        ../../../../resource/app/resource_cnssolicitacaosaida.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta de Solicitação de Saída
${APPNAME}     cnssolicitacaosaida
${OBJETIVO}    Verificar todas as labels na tela: Solicitação de Saída (Consulta)

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Solicitação de Saída (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Material | Solicitação de Saída
  Quando eu visualizar a tela: Solicitação de Saída (Consulta)
  Então devo verificar a label: Código
  E verificar a label: Data
  E verificar a label: Hora
  E verificar a label: Empresa
  E verificar a label: Tipo 
  E verificar a label: Matrícula
  E verificar a label: Tipo Documento
  E verificar a label: Número Documento
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Material | Solicitação de Saída
  resource_mnu.Clicar No Menu Entrada | Material | Solicitação de Saída

Quando eu visualizar a tela: Solicitação de Saída (Consulta)
  resource_cnssolicitacaosaida.Acessar Tela Consulta de Solicitação de Saída

Então devo verificar a label: Código
  resource_cnssolicitacaosaida.Verificar a label Código

E verificar a label: Data
  resource_cnssolicitacaosaida.Verificar a label Data

E verificar a label: Hora
  resource_cnssolicitacaosaida.Verificar a label Hora

E verificar a label: Empresa
  resource_cnssolicitacaosaida.Verificar a label Empresa

E verificar a label: Tipo 
  resource_cnssolicitacaosaida.Verificar a label Tipo 

E verificar a label: Matrícula
  resource_cnssolicitacaosaida.Verificar a label Matrícula

E verificar a label: Tipo Documento
  resource_cnssolicitacaosaida.Verificar a label Tipo Documento

E verificar a label: Número Documento
  resource_cnssolicitacaosaida.Verificar a label Número Documento

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
