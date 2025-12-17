*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAutorizarAcessoColaboradores.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Autorizar Acesso de Colaboradores (Consulta)
${SCREENNAME}  Autorizar Acesso de Colaboradores
${APPNAME}     cnsAutorizarAcessoColaboradores

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Autorizar Acesso de Colaboradores (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Área Restrita | Autorizar Acesso
  Quando visualizar a tela: Autorizar Acesso de Colaboradores (Consulta)
  Então devo verificar a label: Empresa
  E verificar a label: Tipo do Colaborador
  E verificar a label: Nome
  E verificar a label: Data Inicial
  E verificar a label: Hora Inicial
  E verificar a label: Permissão
  E verificar a label: Data Final
  E verificar a label: Hora Final
  E verificar a label: Observações
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Registro | Área Restrita | Autorizar Acesso
  resource_mnu.Clicar No Menu Registro | Área Restrita | Autorizar Acesso

Quando visualizar a tela: Autorizar Acesso de Colaboradores (Consulta)
  resource_cnsAutorizarAcessoColaboradores.Acessar Tela Consulta Autorizar Acesso de Colaboradores

Então devo verificar a label: Empresa
    resource_cnsAutorizarAcessoColaboradores.Verificar a label: Empresa

E verificar a label: Tipo do Colaborador
    resource_cnsAutorizarAcessoColaboradores.Verificar a label: Tipo do Colaborador

E verificar a label: Nome
    resource_cnsAutorizarAcessoColaboradores.Verificar a label: Nome

E verificar a label: Data Inicial
    resource_cnsAutorizarAcessoColaboradores.Verificar a label: Data Inicial

E verificar a label: Hora Inicial
    resource_cnsAutorizarAcessoColaboradores.Verificar a label: Hora Inicial

E verificar a label: Permissão
    resource_cnsAutorizarAcessoColaboradores.Verificar a label: Permissão

E verificar a label: Data Final
    resource_cnsAutorizarAcessoColaboradores.Verificar a label: Data Final

E verificar a label: Hora Final
    resource_cnsAutorizarAcessoColaboradores.Verificar a label: Hora Final

E verificar a label: Observações
    resource_cnsAutorizarAcessoColaboradores.Verificar a label: Observações

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"