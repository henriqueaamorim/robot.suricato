*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrConfiguracoesTOTVS.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Configurações Integração TOTVS
${APPNAME}     ctrConfiguracoesTOTVS
${OBJETIVO}    Verificar todos os campos na tela Configurações Integração TOTVS.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Configurações Integração TOTVS
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Configurações Gerais | Integração TOTVS
  Então devo visualizar a tela: Configurações Integração TOTVS
  E verificar o campo Integração TOTVS
  E verificar o campo Tempo de Tolerancia antes do acesso da faixa de entrada (Minutos)
  E verificar o campo Tempo de Tolerancia depois do acesso da faixa de entrada (Minutos)
  E verificar o campo Tempo de Tolerancia antes do acesso da faixa de saída (Minutos)
  E verificar o campo Tempo de Tolerancia depois do acesso da faixa de saída (Minutos)
  E verificar o campo Tag do Início da Escala
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Configurações | Configurações Gerais | Integração TOTVS
  resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Integração TOTVS

Então devo visualizar a tela: Configurações Integração TOTVS
  resource_ctrConfiguracoesTOTVS.Acessar Tela Configurações Integração TOTVS

E verificar o campo Integração TOTVS
  resource_ctrConfiguracoesTOTVS.Verificar o campo Integração TOTVS

E verificar o campo Tempo de Tolerancia antes do acesso da faixa de entrada (Minutos)
  resource_ctrConfiguracoesTOTVS.Verificar o campo Tempo de Tolerancia antes do acesso da faixa de entrada (Minutos)

E verificar o campo Tempo de Tolerancia depois do acesso da faixa de entrada (Minutos)
  resource_ctrConfiguracoesTOTVS.Verificar o campo Tempo de Tolerancia depois do acesso da faixa de entrada (Minutos)

E verificar o campo Tempo de Tolerancia antes do acesso da faixa de saída (Minutos)
  resource_ctrConfiguracoesTOTVS.Verificar o campo Tempo de Tolerancia antes do acesso da faixa de saída (Minutos)

E verificar o campo Tempo de Tolerancia depois do acesso da faixa de saída (Minutos)
  resource_ctrConfiguracoesTOTVS.Verificar o campo Tempo de Tolerancia depois do acesso da faixa de saída (Minutos)

E verificar o campo Tag do Início da Escala
  resource_ctrConfiguracoesTOTVS.Verificar o campo Tag do Início da Escala

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
