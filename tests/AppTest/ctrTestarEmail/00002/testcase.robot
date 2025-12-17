*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmconfiguraremail.robot
Resource        ../../../../resource/app/resource_ctrTestarEmail.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Testar Email
${APPNAME}     ctrTestarEmail
${OBJETIVO}    Verificar todos os campos na tela Testar Email.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Testar Email
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Configurações | Email
  Ao visualizar a tela: Configuração do E-mail (Atualização)
  E clicar no botão: Testar Email
  Então devo visualizar a tela: Testar Email
  E verificar o campo Destinatario
  E verificar o campo Mensagem
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Configurações | Email
  resource_mnu.Clicar No Menu Configurações | Email

Ao visualizar a tela: Configuração do E-mail (Atualização)
  resource_frmconfiguraremail.Acessar Tela Configuração do E-mail (Atualização)

E clicar no botão: Testar Email
  resource_btn.Clicar No Botão Testar Email

Então devo visualizar a tela: Testar Email
  resource_ctrTestarEmail.Acessar Tela Testar Email

E verificar o campo Destinatario
  resource_ctrTestarEmail.Verificar o campo Destinatario

E verificar o campo Mensagem
  resource_ctrTestarEmail.Verificar o campo Mensagem

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"