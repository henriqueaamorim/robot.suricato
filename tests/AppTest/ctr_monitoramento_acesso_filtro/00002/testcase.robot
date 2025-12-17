*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_acesso.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_acesso_filtro.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}   Monitoramento Acesso - Grid - Filtro
${APPNAME}      ctr_monitoramento_acesso_filtro
${OBJETIVO}     Verificar todos os campos na tela Monitoramento Acesso - Grid - Filtro.

*** Test Cases ***

Testcase: Acessar Tela Verificar todos os campos na tela Monitoramento Acesso - Grid - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Acesso - Grid
  Ao visualizar a tela: Monitoramento Acesso - Grid
  E clicar no botão: Filtro
  Então devo visualizar a tela: Monitoramento Acesso - Grid - Filtro
  E verificar o campo Planta
  E verificar o campo Codin
  E verificar o campo Crachá
  E verificar o campo Direção
  E verificar o campo Tipo de Acesso
  E verificar o campo Qtde Registros
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Acesso - Grid
  resource_mnu.Clicar No Menu Controle | Monitoramento | Acesso - Grid

Ao visualizar a tela: Monitoramento Acesso - Grid
  resource_ctr_monitoramento_acesso.Acessar Tela Monitoramento Acesso - Grid

E clicar no botão: Filtro
  resource_btn.Clicar No Botão Filtro

Então devo visualizar a tela: Monitoramento Acesso - Grid - Filtro
  resource_ctr_monitoramento_acesso_filtro.Acessar Tela Monitoramento Acesso - Grid - Filtro

E verificar o campo Planta
  resource_ctr_monitoramento_acesso_filtro.Verificar o campo Planta

E verificar o campo Codin
  resource_ctr_monitoramento_acesso_filtro.Verificar o campo Codin

E verificar o campo Crachá
  resource_ctr_monitoramento_acesso_filtro.Verificar o campo Crachá

E verificar o campo Direção
  resource_ctr_monitoramento_acesso_filtro.Verificar o campo Direção

E verificar o campo Tipo de Acesso
  resource_ctr_monitoramento_acesso_filtro.Verificar o campo Tipo de Acesso

E verificar o campo Qtde Registros
  resource_ctr_monitoramento_acesso_filtro.Verificar o campo Qtde Registros

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"