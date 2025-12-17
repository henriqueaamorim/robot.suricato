*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmTipoAcesso.robot
Resource        ../../../../resource/app/resource_cnsTipoAcessocad.robot
Resource    ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Tipo de Acesso (Filtro)
${SCREENNAME}  Tipo de Acesso
${APPNAME}     cnsTipoAcessocad

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Tipo de Acesso (Filtro)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Tipo de Acesso
  Quando visualizar a tela: Tipo de Acesso (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Tipo de Acesso (Filtro)
  E verificar o campo: Tipo de Acesso
  E verificar o campo: Descrição
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Tipo de Acesso
  resource_mnu.Clicar No Menu Dispositivo | Tipo de Acesso

Quando visualizar a tela: Tipo de Acesso (Consulta)
  resource_cnsTipoAcessocad.Acessar Tela Consulta de Tipo de Acesso

E clicar no botão: Pesquisar Registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Tipo de Acesso (Filtro)
  resource_cnsTipoAcessocad.Acessar Tela Tipo de Acesso (Filtro)

E verificar o campo: Tipo de Acesso
  resource_cnsTipoAcessocad.Verificar o campo Tipo de Acesso

E verificar o campo: Descrição
  resource_cnsTipoAcessocad.Verificar o campo Descrição

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"