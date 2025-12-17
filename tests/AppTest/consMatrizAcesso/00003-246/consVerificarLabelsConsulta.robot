*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consMatrizAcesso.robot
Resource        ../../../../resource/app/resource_frmMatrizAcesso.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Matriz de Acesso (Consulta)
${SCREENNAME}  Matriz de Acesso (Consulta)
${APPNAME}     consMatrizAcesso

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Matriz de Acesso (Consulta)
  [Tags]   VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Matriz de Acesso
  Quando visualizar a tela: Matriz de Acesso (Consulta)
  Então devo verificar a label: Código
  E verificar a label: Descrição
  E verificar a label: Data de Início
  E verificar a label: Data de Término
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Matriz de Acesso
  resource_mnu.Clicar No Menu Identificação | Colaborador | Matriz de Acesso

Quando visualizar a tela: Matriz de Acesso (Consulta)
  resource_consMatrizAcesso.Acessar Tela de Matriz de Acesso (Consulta)

Então devo verificar a label: Código
    resource_consMatrizAcesso.Verificar a label Código

E verificar a label: Descrição
    resource_consMatrizAcesso.Verificar a label Descrição

E verificar a label: Data de Início
    resource_consMatrizAcesso.Verificar a label Data de Início

E verificar a label: Data de Término
    resource_consMatrizAcesso.Verificar a label Data de Término

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"



