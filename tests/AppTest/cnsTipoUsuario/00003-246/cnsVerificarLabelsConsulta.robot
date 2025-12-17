*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsTipoUsuario.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Tipo de Contrato (Consulta)
${SCREENNAME}  Tipo de Usuário
${APPNAME}     cnsTipoUsuario

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Tipo de Contrato (Consulta)
  [Tags]  VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Tipo de Usuário
  Quando visualizar a tela: Tipo de Usuário (Consulta)
  Então devo verificar a label: Id
  E verificar label: Tipo Usuário
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Tipo de Usuário
  resource_mnu.Clicar No Menu Identificação | Colaborador | Tipo de Usuário

Quando visualizar a tela: Tipo de Usuário (Consulta)
  resource_cnsTipoUsuario.Acessar Tela: Tipo de Usuário (Consulta)

Então devo verificar a label: Id
    resource_cnsTipoUsuario.Verificar a label Id

E verificar label: Tipo Usuário
    resource_cnsTipoUsuario.Verificar a label Tipo Usuário

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"