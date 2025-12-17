*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrMarcacaoAcessoManual.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${SCREENNAME}  Marcação de Acesso Manual
${APPNAME}     ctrMarcacaoAcessoManual
${OBJETIVO}    Verificar todos os campos na tela: Marcação de Acesso Manual

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Marcação de Acesso Manual
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Marcação de Acesso Manual
  Quando visualizar a tela: Marcação de Acesso Manual
  Então devo verificar o campo Tipo de Acesso *
  E verificar o campo Planta *
  E verificar o campo Codin *
  E verificar o campo Tipo *
  E verificar o campo Data * 
  E verificar o campo Hora *
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Marcação de Acesso Manual
  resource_mnu.Clicar No Menu Entrada | Marcação de Acesso Manual

Quando visualizar a tela: Marcação de Acesso Manual
  resource_ctrMarcacaoAcessoManual.Acessar Tela Marcação de Acesso Manual

Então devo verificar o campo Tipo de Acesso *
  resource_ctrMarcacaoAcessoManual.Verificar o campo Tipo de Acesso *

E verificar o campo Planta *
  resource_ctrMarcacaoAcessoManual.Verificar o campo Planta *

E verificar o campo Codin *
  resource_ctrMarcacaoAcessoManual.Verificar o campo Codin *

E verificar o campo Tipo *
  resource_ctrMarcacaoAcessoManual.Verificar o campo Tipo *

E verificar o campo Data * 
  resource_ctrMarcacaoAcessoManual.Verificar o campo Data * 

E verificar o campo Hora *
  resource_ctrMarcacaoAcessoManual.Verificar o campo Hora *

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
