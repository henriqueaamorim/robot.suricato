*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_acesso.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_acesso_filtro.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos na tela Monitoramento Acesso - Grid - Filtro.

*** Test Cases ***

Testcase: Preencher todos os campos na tela Monitoramento Acesso - Grid - Filtro
  [Tags]  REGISTER  POLYVALENT
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Acesso - Grid
  Ao visualizar a tela: Monitoramento Acesso - Grid
  E clicar no botão: Filtro
  Então devo visualizar a tela: Monitoramento Acesso - Grid - Filtro
  E selecionar uma opção no campo Planta "Descrição"
  E selecionar uma opção no campo Codin "Catraca"
  E preencher o campo Crachá "123"
  E selecionar uma opção no campo Direção "Entrada"
  E selecionar uma opção no campo Tipo de Acesso "Acesso Liberado sob Coação"
  E preencher o campo Qtde Registros "10"

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Acesso - Grid
  resource_mnu.Clicar No Menu Controle | Monitoramento | Acesso - Grid

Ao visualizar a tela: Monitoramento Acesso - Grid
  resource_ctr_monitoramento_acesso.Acessar Tela Monitoramento Acesso - Grid

E clicar no botão: Filtro
  resource_btn.Clicar No Botão Filtro

Então devo visualizar a tela: Monitoramento Acesso - Grid - Filtro
  resource_ctr_monitoramento_acesso_filtro.Acessar Tela Monitoramento Acesso - Grid - Filtro

E selecionar uma opção no campo Planta "${PLANTA}"
  resource_ctr_monitoramento_acesso_filtro.Selecionar uma opção no campo Planta "${PLANTA}"

E selecionar uma opção no campo Codin "${CODIN}"
  resource_ctr_monitoramento_acesso_filtro.Selecionar uma opção no campo Codin "${CODIN}"

E preencher o campo Crachá "${CRACHÁ}"
  resource_ctr_monitoramento_acesso_filtro.Preencher o campo Crachá "${CRACHÁ}"

E selecionar uma opção no campo Direção "${DIREÇÃO}"
  resource_ctr_monitoramento_acesso_filtro.Selecionar uma opção no campo Direção "${DIREÇÃO}"

E selecionar uma opção no campo Tipo de Acesso "${TIPO_DE_ACESSO}"
  resource_ctr_monitoramento_acesso_filtro.Selecionar uma opção no campo Tipo de Acesso "${TIPO_DE_ACESSO}"

E preencher o campo Qtde Registros "${QTDE_REGISTROS}"
  resource_ctr_monitoramento_acesso_filtro.Preencher o campo Qtde Registros "${QTDE_REGISTROS}"
