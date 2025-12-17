*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frm_tbhoraextra.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Hora Extra
${APPNAME}     frm_tbhoraextra
${OBJETIVO}    Verificar todos os campos na tela Hora Extra.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Hora Extra
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Hora Extra
  Então devo visualizar a tela: Hora Extra
  E verificar a label Hora Extra - Grupo
  E verificar o campo ID Cadastro
  E verificar o campo Nome do Grupo *
  E verificar o campo Horário 1 *
  E verificar o campo Horário 2 *
  E verificar a label Email
  E verificar a label SMS
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Configurações | Hora Extra
  resource_mnu.Clicar No Menu Configurações | Hora Extra

Então devo visualizar a tela: Hora Extra
  resource_frm_tbhoraextra.Acessar Tela Hora Extra

E verificar a label Hora Extra - Grupo
  resource_frm_tbhoraextra.Verificar a label Hora Extra - Grupo

E verificar o campo ID Cadastro
  resource_frm_tbhoraextra.Verificar o campo ID Cadastro

E verificar o campo Nome do Grupo *
  resource_frm_tbhoraextra.Verificar o campo Nome do Grupo *

E verificar o campo Horário 1 *
  resource_frm_tbhoraextra.Verificar o campo Horário 1 *

E verificar o campo Horário 2 *
  resource_frm_tbhoraextra.Verificar o campo Horário 2 *

E verificar a label Email
  resource_frm_tbhoraextra.Verificar a label Email

E verificar a label SMS
  resource_frm_tbhoraextra.Verificar a label SMS

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
