*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrdefinicoesfrota.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Definições de Frota
${APPNAME}     ctrdefinicoesfrota
${OBJETIVO}    Verificar todos os campos na tela Definições de Frota.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Definições de Frota
  [Tags]  VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Definições
  Então devo visualizar a tela: Definições de Frota
  E verificar a label Geral
  E verificar o campo Utilizar Liberação para Carga e Descarga
  E verificar a label Condutores
  E verificar o campo Número Máximo de Pontos Carteira CNH
  E verificar o campo Utilizar Condutor que Excede o Máximo de Pontos na CNH
  E verificar a label Frota
  E verificar o campo Permite Saída de Veículo sem Agendamento
  E verificar o campo Utiliza Autorizador na Movimentação de Veículos
  E verificar o campo Autoriza Saída de Veículo sem Seguro ou com Seguro Vencido ?
  E verificar o campo Autoriza Saída de Veículo com Licenciamento Vencido ?
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Veículos | Definições
  resource_mnu.Clicar No Menu Veículos | Definições

Então devo visualizar a tela: Definições de Frota
  resource_ctrdefinicoesfrota.Acessar Tela Definições de Frota

E verificar a label Geral
  resource_ctrdefinicoesfrota.Verificar a label Geral

E verificar o campo Utilizar Liberação para Carga e Descarga
  resource_ctrdefinicoesfrota.Verificar o campo Utilizar Liberação para Carga e Descarga

E verificar a label Condutores
  resource_ctrdefinicoesfrota.Verificar a label Condutores

E verificar o campo Número Máximo de Pontos Carteira CNH
  resource_ctrdefinicoesfrota.Verificar o campo Número Máximo de Pontos Carteira CNH

E verificar o campo Utilizar Condutor que Excede o Máximo de Pontos na CNH
  resource_ctrdefinicoesfrota.Verificar o campo Utilizar Condutor que Excede o Máximo de Pontos na CNH

E verificar a label Frota
  resource_ctrdefinicoesfrota.Verificar a label Frota

E verificar o campo Permite Saída de Veículo sem Agendamento
  resource_ctrdefinicoesfrota.Verificar o campo Permite Saída de Veículo sem Agendamento

E verificar o campo Utiliza Autorizador na Movimentação de Veículos
  resource_ctrdefinicoesfrota.Verificar o campo Utiliza Autorizador na Movimentação de Veículos

E verificar o campo Autoriza Saída de Veículo sem Seguro ou com Seguro Vencido ?
  resource_ctrdefinicoesfrota.Verificar o campo Autoriza Saída de Veículo sem Seguro ou com Seguro Vencido ?

E verificar o campo Autoriza Saída de Veículo com Licenciamento Vencido ?
  resource_ctrdefinicoesfrota.Verificar o campo Autoriza Saída de Veículo com Licenciamento Vencido ?

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
