*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrGeracaoListas.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Geração de Listas
${APPNAME}     ctrGeracaoListas
${OBJETIVO}    Verificar todos os campos na tela: Geração de Listas.


*** Test Cases ***
Testcase: Verificar todos os campos na tela: Geração de Listas
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Geração de Lista
  Então devo visualizar a tela: Geração de Listas
  E verificar o campo Tipo de Lista
  E verificar a checkbox Acesso - Biometria
  E verificar a checkbox Acesso - Bloqueio
  E verificar a checkbox Acesso - Liberação
  E verificar a checkbox Acesso - Senha
  E verificar a checkbox Acesso - Supervisor
  E verificar a checkbox Acesso - Visitante
  E verificar a checkbox REP - Excluir Biometria
  E verificar a checkbox REP - Excluir Empregado
  E verificar a checkbox REP - Incluir Biometria
  E verificar a checkbox REP - Incluir Empregado
  E verificar o campo Planta
  E verificar o campo Codin(+)
  E verificar o campo Crachá
  E verificar o campo Condição de Pesquisa
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Processo | Geração de Lista
  resource_mnu.Clicar No Menu Processo | Geração de Lista

Então devo visualizar a tela: Geração de Listas
  resource_ctrGeracaoListas.Acessar Tela Geração de Listas

E verificar o campo Tipo de Lista
  resource_ctrGeracaoListas.Verificar o campo Tipo de Lista

E verificar a checkbox Acesso - Biometria
  resource_ctrGeracaoListas.Verificar a checkbox Acesso - Biometria

E verificar a checkbox Acesso - Bloqueio
  resource_ctrGeracaoListas.Verificar a checkbox Acesso - Bloqueio

E verificar a checkbox Acesso - Liberação
  resource_ctrGeracaoListas.Verificar a checkbox Acesso - Liberação

E verificar a checkbox Acesso - Senha
  resource_ctrGeracaoListas.Verificar a checkbox Acesso - Senha

E verificar a checkbox Acesso - Supervisor
  resource_ctrGeracaoListas.Verificar a checkbox Acesso - Supervisor

E verificar a checkbox Acesso - Visitante
  resource_ctrGeracaoListas.Verificar a checkbox Acesso - Visitante

E verificar a checkbox REP - Excluir Biometria
  resource_ctrGeracaoListas.Verificar a checkbox REP - Excluir Biometria

E verificar a checkbox REP - Excluir Empregado
  resource_ctrGeracaoListas.Verificar a checkbox REP - Excluir Empregado

E verificar a checkbox REP - Incluir Biometria
  resource_ctrGeracaoListas.Verificar a checkbox REP - Incluir Biometria

E verificar a checkbox REP - Incluir Empregado
  resource_ctrGeracaoListas.Verificar a checkbox REP - Incluir Empregado

E verificar o campo Planta
  resource_ctrGeracaoListas.Verificar o campo Planta

E verificar o campo Codin(+)
  resource_ctrGeracaoListas.Verificar o campo Codin(+)

E verificar o campo Crachá
  resource_ctrGeracaoListas.Verificar o campo Crachá

E verificar o campo Condição de Pesquisa
  resource_ctrGeracaoListas.Verificar o campo Condição de Pesquisa

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"