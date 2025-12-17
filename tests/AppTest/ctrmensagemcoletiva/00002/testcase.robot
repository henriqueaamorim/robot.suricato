*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrmensagemcoletiva.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Mensagens Coletivas
${APPNAME}     ctrmensagemcoletiva
${OBJETIVO}    Verificar todos os campos na tela Mensagens Coletivas
	

*** Test Cases ***

Testcase: Verificar todos os campos na tela Mensagens Coletivas
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Envio de Mensagem | Coletiva
  Então devo visualizar a tela: Mensagens Coletivas
  E verificar o campo Data de Início da Mensagem: *
  E verificar o campo Hora de Início da Mensagem: *
  E verificar o campo Data de Término da Mensagem: * 
  E verificar o campo Hora de Término da Mensagem: * 
  E verificar o campo Quantidade de Visualizações: *
  E verificar o campo Mensagem: *
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Registro | Envio de Mensagem | Coletiva
  resource_mnu.Clicar No Menu Registro | Envio de Mensagem | Coletiva

Então devo visualizar a tela: Mensagens Coletivas
  resource_ctrmensagemcoletiva.Acessar Tela Mensagens Coletivas

E verificar o campo Data de Início da Mensagem: *
  resource_ctrmensagemcoletiva.E verificar o campo Data de Início da Mensagem

E verificar o campo Hora de Início da Mensagem: *
  resource_ctrmensagemcoletiva.E verificar o campo Hora de Início da Mensagem

E verificar o campo Data de Término da Mensagem: * 
  resource_ctrmensagemcoletiva.E verificar o campo Data de Término da Mensagem

E verificar o campo Hora de Término da Mensagem: * 
  resource_ctrmensagemcoletiva.E verificar o campo Hora de Término da Mensagem

E verificar o campo Quantidade de Visualizações: *
  resource_ctrmensagemcoletiva.E verificar o campo Quantidade de Visualizações

E verificar o campo Mensagem: *
  resource_ctrmensagemcoletiva.E verificar o campo Mensagem

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"