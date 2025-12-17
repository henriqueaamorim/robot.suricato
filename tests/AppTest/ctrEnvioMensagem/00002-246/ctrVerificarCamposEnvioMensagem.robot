*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrEnvioMensagem.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: ENVIO DE MENSAGEM
${SCREENNAME}  ENVIO DE MENSAGEM
${APPNAME}     ctrEnvioMensagem

*** Test Cases ***
Testcase: Verificar todos os campos na tela: ENVIO DE MENSAGEM
  [Tags]   VERIFY   246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Envio de Mensagem
  Quando visualizar a tela: ENVIO DE MENSAGEM
  Então devo verificar o campo: Tipo
  E verificar o campo: Data de Início da Mensagem
  E verificar o campo: Data de Término da Mensagem
  E verificar o campo: Hora Inicial 
  E verificar o campo: Hora Final 
  E verificar o campo: Quantidade de Visualização
  E verificar o campo: Mensagem
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Registro | Envio de Mensagem
    resource_mnu.Clicar No Menu Registro | Envio de Mensagem

Quando visualizar a tela: ENVIO DE MENSAGEM
    resource_ctrEnvioMensagem.Acessar Tela: ENVIO DE MENSAGEM

Então devo verificar o campo: Tipo
    resource_ctrEnvioMensagem.Verificar o campo: Tipo

E verificar o campo: Data de Início da Mensagem
    resource_ctrEnvioMensagem.Verificar o campo: Data de Início da Mensagem 

E verificar o campo: Data de Término da Mensagem
    resource_ctrEnvioMensagem.Verificar o campo: Data de Término da Mensagem

E verificar o campo: Hora Inicial
    resource_ctrEnvioMensagem.Verificar o campo: Hora Inicial

E verificar o campo: Hora Final
    resource_ctrEnvioMensagem.Verificar o campo: Hora Final

E verificar o campo: Quantidade de Visualização
    resource_ctrEnvioMensagem.Verificar o campo: Quantidade de Visualização

E verificar o campo: Mensagem
    resource_ctrEnvioMensagem.Verificar o campo: Mensagem 

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"