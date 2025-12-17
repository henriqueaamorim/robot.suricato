*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_abadefinicoescracha.robot
Resource        ../../../../resource/app/resource_ctrDefinicoesAcesso.robot
Resource        ../../../../resource/app/resource_ctrdefinicoescrachaprovisorios.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
  
${SCREENNAME}  Definições do Crachá - Provisórios
${APPNAME}     ctrdefinicoescrachaprovisorios
${OBJETIVO}    Verificar todos os campos na tela Definições do Crachá - Provisórios.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Definições do Crachá - Provisórios
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Crachá
  Quando eu visualizar a tela: Definições de Acesso
  E clicar na aba: Provisórios
  Então devo visualizar a tela: Definições do Crachá - Provisórios
  E verificar o campo Número de Provisório por Empregados (mês) *
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Configurações | Crachá
  resource_mnu.Clicar No Menu Configurações | Crachá

Quando eu visualizar a tela: Definições de Acesso
  resource_ctrDefinicoesAcesso.Acessar Tela Definições de Acesso

E clicar na aba: Provisórios
  resource_abadefinicoescracha.Clicar Na Aba Provisórios

Então devo visualizar a tela: Definições do Crachá - Provisórios
  resource_ctrdefinicoescrachaprovisorios.Acessar Tela Definições do Crachá - Provisórios

E verificar o campo Número de Provisório por Empregados (mês) *
  resource_ctrdefinicoescrachaprovisorios.Verificar o campo Número de Provisório por Empregados (mês) *

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"