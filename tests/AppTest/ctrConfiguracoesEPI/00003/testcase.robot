*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrConfiguracoesEPI.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos na tela Configurações de EPI.


*** Test Cases ***

Testcase: Preencher todos os campos na tela Configurações de EPI
  [Tags]  REGISTER  POLYVALENT
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Configurações Gerais | Configurações de EPI
  Então devo visualizar a tela: Configurações de EPI
  E selecionar a opção Controle de EPI por Organograma
  E selecionar a opção Controle de EPI por Centro de Custo
  E selecionar a opção Controle de EPI por Cargo
  E preencher o campo Tempo de Tolerância (dias) "10"
  E selecionar a opção Utiliza Codin de Beneficios para entrega de EPIs
  E selecionar uma opção no campo Codin para entrega de EPIs "Teste Benefício"
  E selecionar uma opção no campo Envio de Email antes do vencimento "teste5@teste5.com"
  E selecionar uma opção no campo Envio de Email no vencimento "teste5@teste5.com"
  E selecionar uma opção no campo Envio de Email após o vencimento "teste5@teste5.com"

*** Keywords ***
Dado que eu acesse o menu: Configurações | Configurações Gerais | Configurações de EPI
  resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Configurações de EPI

Então devo visualizar a tela: Configurações de EPI
  resource_ctrConfiguracoesEPI.Acessar Tela Configurações de EPI

E selecionar a opção Controle de EPI por Organograma
  resource_ctrConfiguracoesEPI.Selecionar a opção Controle de EPI por Organograma

E selecionar a opção Controle de EPI por Centro de Custo
  resource_ctrConfiguracoesEPI.Selecionar a opção Controle de EPI por Centro de Custo

E selecionar a opção Controle de EPI por Cargo
  resource_ctrConfiguracoesEPI.Selecionar a opção Controle de EPI por Cargo

E preencher o campo Tempo de Tolerância (dias) "${TEMPO}"
  resource_ctrConfiguracoesEPI.Preencher o campo Tempo de Tolerância (dias) "${TEMPO}"

E selecionar a opção Utiliza Codin de Beneficios para entrega de EPIs
  resource_ctrConfiguracoesEPI.Selecionar a opção Utiliza Codin de Beneficios para entrega de EPIs

E selecionar uma opção no campo Codin para entrega de EPIs "${CODIN}"
  resource_ctrConfiguracoesEPI.Selecionar uma opção no campo Codin para entrega de EPIs "${CODIN}"

E selecionar uma opção no campo Envio de Email antes do vencimento "${ENVIO}"
  resource_ctrConfiguracoesEPI.Selecionar uma opção no campo Envio de Email antes do vencimento "${ENVIO}"

E selecionar uma opção no campo Envio de Email no vencimento "${ENVIO}"
  resource_ctrConfiguracoesEPI.Selecionar uma opção no campo Envio de Email no vencimento "${ENVIO}"

E selecionar uma opção no campo Envio de Email após o vencimento "${ENVIO}"
  resource_ctrConfiguracoesEPI.Selecionar uma opção no campo Envio de Email após o vencimento "${ENVIO}"
