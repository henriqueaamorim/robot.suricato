*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cns_log_grid.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Log de Aplicação
${APPNAME}     cns_log_grid
${OBJETIVO}    Verificar todos os campos na tela: Log de Aplicação (Filtro)


*** Test Cases ***
Testcase: Verificar todos os campos na tela: Log de Aplicação (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configuração | Aplicação | Log de Aplicação | Consulta
  Então devo visualizar a tela: Log de Aplicação (Filtro)
  E verificar o campo Data
  E verificar o campo Usuário
  E verificar o campo Evento
  E verificar o campo IP
  E verificar o campo Aplicação
  E verificar o campo Campo
  E verificar o campo Valor
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Configuração | Aplicação | Log de Aplicação | Consulta
  resource_mnu.Clicar No Menu Configurações | Log de Aplicação | Consulta

Então devo visualizar a tela: Log de Aplicação (Filtro)
  resource_cns_log_grid.Acessar Tela Log de Aplicação (Filtro)

E verificar o campo Data
  resource_cns_log_grid.Verificar o campo Data

E verificar o campo Usuário
  resource_cns_log_grid.Verificar o campo Usuário

E verificar o campo Evento
  resource_cns_log_grid.Verificar o campo Evento

E verificar o campo IP
  resource_cns_log_grid.Verificar o campo IP

E verificar o campo Aplicação
  resource_cns_log_grid.Verificar o campo Aplicação

E verificar o campo Campo
  resource_cns_log_grid.Verificar o campo Campo

E verificar o campo Valor
  resource_cns_log_grid.Verificar o campo Valor

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
