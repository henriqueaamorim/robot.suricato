*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrEspelhoAcesso.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Perfil de Acesso
${SCREENNAME}  Perfil de Acesso
${APPNAME}     ctrEspelhoAcesso

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Perfil de Acesso
  [Tags]  VERIFY   246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Perfil de Acesso
  Quando visualizar a tela: Perfil de Acesso
  Então devo verificar o campo: Empresa
  E verificar o campo: Tipo Colaborador
  E verificar o campo: Matrícula
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Registro | Perfil de Acesso
  resource_mnu.Clicar No Menu Registro | Perfil de Acesso

Quando visualizar a tela: Perfil de Acesso
  resource_ctrEspelhoAcesso.Acessar Tela Perfil de Acesso

Então devo verificar o campo: Empresa
    resource_ctrEspelhoAcesso.E verificar o campo: Empresa

E verificar o campo: Tipo Colaborador
    resource_ctrEspelhoAcesso.E verificar o campo Tipo Colaborador

E verificar o campo: Matrícula
    resource_ctrEspelhoAcesso.E verificar o campo Matrícula

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"