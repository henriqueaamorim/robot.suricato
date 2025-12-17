*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consIntegracaoTotvs.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Filtro Integração TOTVS
${APPNAME}     consIntegracaoTotvs
${OBJETIVO}    Verificar todos os campos na tela: Integração TOTVS (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Integração TOTVS (Filtro)
  [Tags]  VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Integração TOTVS
  Quando visualizar a tela: Integração TOTVS (Filtro)
  Então devo verificar o campo Tabela
  E verificar o campo Chave Externa
  E verificar o campo Ultima Execução
  E verificar o campo Data Última Execução
  E verificar o campo Chave Interna
  E verificar o campo Objeto
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Integração TOTVS
  resource_mnu.Clicar No Menu Estrutura | Integração TOTVS

Quando visualizar a tela: Integração TOTVS (Filtro)
  resource_consIntegracaoTotvs.Acessar Tela Filtro Integração TOTVS

Então devo verificar o campo Tabela
  resource_consIntegracaoTotvs.Verificar o campo Tabela

E verificar o campo Chave Externa
  resource_consIntegracaoTotvs.Verificar o campo Chave Externa

E verificar o campo Ultima Execução
  resource_consIntegracaoTotvs.Verificar o campo Ultima Execução

E verificar o campo Data Última Execução
  resource_consIntegracaoTotvs.Verificar o campo Data Última Execução

E verificar o campo Chave Interna
  resource_consIntegracaoTotvs.Verificar o campo Chave Interna

E verificar o campo Objeto
  resource_consIntegracaoTotvs.Verificar o campo Objeto

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
