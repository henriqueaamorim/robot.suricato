*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAutorizacaoSaida.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${SCREENNAME}  Consulta de Autorizações de Saída
${APPNAME}     cnsAutorizacaoSaida
${OBJETIVO}    Verificar todos os campos na tela Consulta de Autorizações de Saída

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Autorizações de Saída (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Material | Autorização
  Quando visualizar a tela: Autorizações de Saída (Consulta)
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
Dado que eu acesse o menu: Entrada | Material | Autorização
  resource_mnu.Clicar No Menu Entrada | Material | Autorização

Quando visualizar a tela: Autorizações de Saída (Consulta)
  resource_cnsAutorizacaoSaida.Acessar Tela Consulta de Autorizações de Saída

Então devo verificar a label: Código 
  resource_cnsAutorizacaoSaida.Verificar a label Código 

E verificar a label: Data
  resource_cnsAutorizacaoSaida.Verificar a label Data

E verificar a label: Hora
  resource_cnsAutorizacaoSaida.Verificar a label Hora

E verificar a label: Empresa
  resource_cnsAutorizacaoSaida.Verificar a label Empresa

E verificar a label: Tipo
  resource_cnsAutorizacaoSaida.Verificar a label Tipo

E verificar a label: Matrícula
  resource_cnsAutorizacaoSaida.Verificar a label Matrícula

E verificar a label: Tipo Documento
  resource_cnsAutorizacaoSaida.Verificar a label Tipo Documento

E verificar a label: Número Documento
  resource_cnsAutorizacaoSaida.Verificar a label Número Documento

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
