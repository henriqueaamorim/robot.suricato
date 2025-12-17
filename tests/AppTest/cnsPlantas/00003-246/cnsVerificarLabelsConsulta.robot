*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsPlantas.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Planta
${APPNAME}     cnsPlantas
${OBJETIVO}    Verificar todas as labels na tela: Planta (Consulta)

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Planta (Consulta)
  [Tags]  VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Planta
  Quando ver a tela: Planta (Consulta)
  Então devo verificar a label Código da Planta
  E verificar a label Planta
  E verificar a label Código da Empresa
  E verificar a label Empresa
  E verificar a label Código da Filial
  E verificar a label Filial
  E verificar se existe o campo Teste


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Planta
  resource_mnu.Clicar No Menu Estrutura | Planta

Quando ver a tela: Planta (Consulta)
  resource_cnsPlantas.Acessar Tela Consulta de Plantas

Então devo verificar a label Código da Planta
  resource_cnsPlantas.Verificar a label Código da Planta

E verificar a label Planta
  resource_cnsPlantas.Verificar a label Planta

E verificar a label Código da Empresa
  resource_cnsPlantas.Verificar a label Código da Empresa

E verificar a label Empresa
  resource_cnsPlantas.Verificar a label Empresa

E verificar a label Código da Filial
  resource_cnsPlantas.Verificar a label Código da Filial

E verificar a label Filial
  resource_cnsPlantas.Verificar a label Filial

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
