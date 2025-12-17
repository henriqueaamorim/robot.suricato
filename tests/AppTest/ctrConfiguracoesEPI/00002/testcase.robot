*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrConfiguracoesEPI.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Configurações de EPI
${APPNAME}     ctrConfiguracoesEPI
${OBJETIVO}    Verificar todos os campos na tela Configurações de EPI.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Configurações de EPI
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Configurações Gerais | Configurações de EPI
  Então devo visualizar a tela: Configurações de EPI
  E verificar o campo Controle de EPI por Organograma
  E verificar o campo Controle de EPI por Centro de Custo
  E verificar o campo Controle de EPI por Cargo
  E verificar o campo Tempo de Tolerância (dias)
  E verificar o campo Utiliza Codin de Beneficios para entrega de EPIs
  E verificar o campo Codin para entrega de EPIs
  E verificar a label Emails
  E verificar o campo Envio de Email antes do vencimento
  E verificar o campo Envio de Email no vencimento
  E verificar o campo Envio de Email após o vencimento
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Configurações | Configurações Gerais | Configurações de EPI
  resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Configurações de EPI

Então devo visualizar a tela: Configurações de EPI
  resource_ctrConfiguracoesEPI.Acessar Tela Configurações de EPI

E verificar o campo Controle de EPI por Organograma
  resource_ctrConfiguracoesEPI.Verificar o campo Controle de EPI por Organograma

E verificar o campo Controle de EPI por Centro de Custo
  resource_ctrConfiguracoesEPI.Verificar o campo Controle de EPI por Centro de Custo

E verificar o campo Controle de EPI por Cargo
  resource_ctrConfiguracoesEPI.Verificar o campo Controle de EPI por Cargo

E verificar o campo Tempo de Tolerância (dias)
  resource_ctrConfiguracoesEPI.Verificar o campo Tempo de Tolerância (dias)

E verificar o campo Utiliza Codin de Beneficios para entrega de EPIs
  resource_ctrConfiguracoesEPI.Verificar o campo Utiliza Codin de Beneficios para entrega de EPIs

E verificar o campo Codin para entrega de EPIs
  resource_ctrConfiguracoesEPI.Verificar o campo Codin para entrega de EPIs

E verificar a label Emails
  resource_ctrConfiguracoesEPI.Verificar a label Emails

E verificar o campo Envio de Email antes do vencimento
  resource_ctrConfiguracoesEPI.Verificar o campo Envio de Email antes do vencimento

E verificar o campo Envio de Email no vencimento
  resource_ctrConfiguracoesEPI.Verificar o campo Envio de Email no vencimento

E verificar o campo Envio de Email após o vencimento
  resource_ctrConfiguracoesEPI.Verificar o campo Envio de Email após o vencimento

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
