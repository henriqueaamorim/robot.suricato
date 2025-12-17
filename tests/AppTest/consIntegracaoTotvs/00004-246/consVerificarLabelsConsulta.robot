*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consIntegracaoTotvs.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta Integração TOTVS
${APPNAME}     consIntegracaoTotvs
${OBJETIVO}    Verificar todas as labels na tela: Integração TOTVS (Consulta)

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Integração TOTVS (Consulta)
  [Tags]  VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Integração TOTVS
  Quando visualizar a tela: Integração TOTVS (Filtro)
  E clicar no botão: Pesquisa
  Então devo visualizar a tela: Integração TOTVS (Consulta)
  E verificar a label: Tabela
  E verificar a label: Chave Externa
  E verificar a label: Chave Interna
  E verificar a label: Ultima Execução
  E verificar a label: Data Última Execução
  E verificar a label: Objeto
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Integração TOTVS
  resource_mnu.Clicar No Menu Estrutura | Integração TOTVS

Quando visualizar a tela: Integração TOTVS (Filtro)
  resource_consIntegracaoTotvs.Acessar Tela Filtro Integração TOTVS

E clicar no botão: Pesquisa
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Integração TOTVS (Consulta)
  resource_consIntegracaoTotvs.Acessar Tela Consulta Integração TOTVS

E verificar a label: Tabela
  resource_consIntegracaoTotvs.Verificar a label Tabela

E verificar a label: Chave Externa
  resource_consIntegracaoTotvs.Verificar a label Chave Externa

E verificar a label: Chave Interna
  resource_consIntegracaoTotvs.Verificar a label Chave Interna

E verificar a label: Ultima Execução
  resource_consIntegracaoTotvs.Verificar a label Data Última Execução

E verificar a label: Data Última Execução
  resource_consIntegracaoTotvs.Verificar a label Data Última Execução

E verificar a label: Objeto
  resource_consIntegracaoTotvs.Verificar a label Objeto

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"