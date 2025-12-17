*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsPlantas.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta de Plantas (Filtro)
${APPNAME}     cnsPlantas
${OBJETIVO}    Verificar todos os campos na tela Consulta de Plantas (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na tela Consulta de Plantas (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Planta
  Quando ver a tela: Planta (Consulta)
  E clicar no botão Pesquisar Registro
  Então devo ver a tela: Planta (Filtro)
  E verificar o campo Código da Empresa
  E verificar o campo Código da Filial	
  E verificar o campo Planta	
  E verificar o campo Código da Planta	
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Planta
  resource_mnu.Clicar No Menu Estrutura | Planta

Quando ver a tela: Planta (Consulta)
  resource_cnsPlantas.Acessar Tela Consulta de Plantas

E clicar no botão Pesquisar Registro
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo ver a tela: Planta (Filtro)
  resource_cnsPlantas.Acessar Tela Planta (Filtro)

E verificar o campo Código da Empresa
  resource_cnsPlantas.Verificar o campo Código da Empresa

E verificar o campo Código da Filial
  resource_cnsPlantas.Verificar o campo Código da Filial

E verificar o campo Planta
  resource_cnsPlantas.Verificar o campo Planta

E verificar o campo Código da Planta
  resource_cnsPlantas.Verificar o campo Código da Planta

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
