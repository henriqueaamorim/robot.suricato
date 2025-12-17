*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAutorizacaoSaida.robot
Resource        ../../../../resource/app/resource_frmAutorizacaoSaida.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${SCREENNAME}  Autorização de Saída (Atualização)
${APPNAME}     frmAutorizacaoSaida
${OBJETIVO}    Verificar todos os campos na tela Autorização de Saída (Atualização)

*** Test Cases ***
Testcase: Verificar todos os campos na tela Autorização de Saída (Atualização)
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Material | Autorização
  Ao visualizar a tela: Consulta de Autorizações de Saída
  E clicar no botão: Editar o Registro "1"
  Então devo visualizar a tela: Autorização de Saída (Atualização)
  E verificar a label Solicitação *
  E verificar a label Colaborador
  E verificar a label Código do Colaborador
  E verificar a label Empresa do Colaborador
  E verificar a label Tipo do Colaborador
  E verificar a label Matrícula do Colaborador
  E verificar a label Nome do Colaborador
  E verificar a label Autorizador
  E verificar o campo Código do Autorizador
  E verificar a label Empresa do Autorizador
  E verificar a label Tipo do Autorizador
  E verificar a label Matrícula do Autorizador
  E verificar a label Nome do Autorizador
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Material | Autorização
  resource_mnu.Clicar No Menu Entrada | Material | Autorização

Ao visualizar a tela: Consulta de Autorizações de Saída
  resource_cnsAutorizacaoSaida.Acessar Tela Consulta de Autorizações de Saída

E clicar no botão: Editar o Registro "${NUM}"
  resource_btn.Clicar No Botão Editar o Registro "${NUM}"

Então devo visualizar a tela: Autorização de Saída (Atualização)
  resource_frmAutorizacaoSaida.Acessar Tela Autorização de Saída (Atualização)

E verificar a label Solicitação *
  resource_frmAutorizacaoSaida.Verificar a label Solicitação *

E verificar a label Colaborador
  resource_frmAutorizacaoSaida.Verificar a label Colaborador

E verificar a label Código do Colaborador
  resource_frmAutorizacaoSaida.Verificar a label Código do Colaborador

E verificar a label Empresa do Colaborador
  resource_frmAutorizacaoSaida.Verificar a label Empresa do Colaborador

E verificar a label Tipo do Colaborador
  resource_frmAutorizacaoSaida.Verificar a label Tipo do Colaborador

E verificar a label Matrícula do Colaborador
  resource_frmAutorizacaoSaida.Verificar a label Matrícula do Colaborador

E verificar a label Nome do Colaborador
  resource_frmAutorizacaoSaida.Verificar a label Nome do Colaborador

E verificar a label Autorizador
  resource_frmAutorizacaoSaida.Verificar a label Autorizador

E verificar o campo Código do Autorizador
  resource_frmAutorizacaoSaida.Verificar o campo Código do Autorizador

E verificar a label Empresa do Autorizador
  resource_frmAutorizacaoSaida.Verificar a label Empresa do Autorizador

E verificar a label Tipo do Autorizador
  resource_frmAutorizacaoSaida.Verificar a label Tipo do Autorizador

E verificar a label Matrícula do Autorizador
  resource_frmAutorizacaoSaida.Verificar a label Matrícula do Autorizador

E verificar a label Nome do Autorizador
  resource_frmAutorizacaoSaida.Verificar a label Nome do Autorizador

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
