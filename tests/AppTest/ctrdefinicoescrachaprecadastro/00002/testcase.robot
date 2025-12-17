*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrDefinicoesAcesso.robot
Resource        ../../../../resource/app/resource_ctrdefinicoescrachaprecadastro.robot
Resource        ../../../../resource/app/resource_abadefinicoescracha.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Definições do Crachá - Pré Cadastro
${APPNAME}     ctrdefinicoescrachaprecadastro
${OBJETIVO}    Verificar todos os campos na tela Definições do Crachá - Pré Cadastro.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Definições do Crachá - Pré Cadastro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Crachá
  Quando eu visualizar a tela: Definições de Acesso
  E clicar na aba: Pré-Cadastro
  Então devo visualizar a tela: Definições do Crachá - Pré Cadastro
  E verificar o campo Tipo do Crachá *
  E verificar a label Utilizar o Pré-Cadastro Somente Para:
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Configurações | Crachá
  resource_mnu.Clicar No Menu Configurações | Crachá

Quando eu visualizar a tela: Definições de Acesso
  resource_ctrDefinicoesAcesso.Acessar Tela Definições de Acesso

E clicar na aba: Pré-Cadastro
  resource_abadefinicoescracha.Clicar Na Aba Pré-Cadastro

Então devo visualizar a tela: Definições do Crachá - Pré Cadastro
  resource_ctrdefinicoescrachaprecadastro.Acessar Tela Definições do Crachá - Pré Cadastro

E verificar o campo Tipo do Crachá *
  resource_ctrdefinicoescrachaprecadastro.Verificar o campo Tipo do Crachá *

E verificar a label Utilizar o Pré-Cadastro Somente Para:
  resource_ctrdefinicoescrachaprecadastro.Verificar a label Utilizar o Pré-Cadastro Somente Para:

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"