*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consmeuacesso.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Mi acceso    
${APPNAME}     consmeuacesso
${OBJETIVO}    Verificar todos os campos na tela Mi acceso.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Mi acceso
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Meu Acesso
  Então devo visualizar a tela: Mi acceso
  E verificar a label Pesquisa
  E verificar o campo Data
  E verificar o campo Hora
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Meu Acesso
  resource_mnu.Clicar No Menu Relatórios | Meu Acesso

Então devo visualizar a tela: Mi acceso
  resource_consmeuacesso.Acessar Tela Mi acceso

E verificar a label Pesquisa
  resource_consmeuacesso.Verificar a label Pesquisa

E verificar o campo Data
  resource_consmeuacesso.Verificar o campo Data

E verificar o campo Hora
  resource_consmeuacesso.Verificar o campo Hora

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
