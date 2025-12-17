*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cns_log_grid.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Log de Aplicação (Filtro)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Log de Aplicação | Consulta
  Então devo visualizar a tela: Log de Aplicação (Filtro)
  E preencher o campo Data 1 "15/11/2000"
  E preencher o campo Data 2 "15/12/2015"
  E selecionar uma opção no campo Usuário "ADMIN"
  E selecionar uma opção no campo Evento "UPDATE"
  E preencher o campo IP "OK"
  E selecionar uma opção no campo Aplicação "abacftv"
  E selecionar uma opção no campo Campo "ok"
  E preencher o campo Valor "ok"

*** Keywords ***
Dado que eu acesse o menu: Configurações | Log de Aplicação | Consulta
  resource_mnu.Clicar No Menu Configurações | Log de Aplicação | Consulta

Então devo visualizar a tela: Log de Aplicação (Filtro)
  resource_cns_log_grid.Acessar Tela Log de Aplicação (Filtro)



E preencher o campo Data 1 "${DIA}/${MES}/${ANO}"
  resource_cns_log_grid.Preencher o campo Data 1 "${DIA}/${MES}/${ANO}"

E preencher o campo Data 2 "${DIA}/${MES}/${ANO}"
  resource_cns_log_grid.Preencher o campo Data 2 "${DIA}/${MES}/${ANO}"

E selecionar uma opção no campo Usuário "${USUÁRIO}"
  resource_cns_log_grid.Selecionar uma opção no campo Usuário "${USUÁRIO}"

E selecionar uma opção no campo Evento "${EVENTO}"
  resource_cns_log_grid.Selecionar uma opção no campo Evento "${EVENTO}"

E preencher o campo IP "${IP}"
  resource_cns_log_grid.Preencher o campo IP "${IP}"

E selecionar uma opção no campo Aplicação "${APLICAÇÃO}"
  resource_cns_log_grid.Selecionar uma opção no campo Aplicação "${APLICAÇÃO}"

E selecionar uma opção no campo Campo "${CAMPO}"
  resource_cns_log_grid.Selecionar uma opção no campo Campo "${CAMPO}"

E preencher o campo Valor "${VALOR}"
  resource_cns_log_grid.Preencher o campo Valor "${VALOR}"
