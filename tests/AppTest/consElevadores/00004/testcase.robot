*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consElevadores.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Cadastro de Elevadores (Filtro)
${APPNAME}     consElevadores
${OBJETIVO}    Verificar todos os campos na tela Consulta de Cadastro de Elevadores (Filtro)

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Cadastro de Elevadores (Filtro)
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Configuração Elevadores | Cadastro de Elevadores
  Então devo ver a tela: Consulta de Cadastro de Elevadores
  E clicar no botão: Pesquisar
  Então devo ver a tela: Consulta de Cadastro de Elevadores (Filtro)
  E verificar o campo Código
  E verificar o segundo campo Código
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Configuração Elevadores | Cadastro de Elevadores
  resource_mnu.Clicar No Menu Estrutura | Configuração Elevadores | Cadastro de Elevadores

Então devo ver a tela: Consulta de Cadastro de Elevadores
  resource_consElevadores.Acessar Tela Consulta de Cadastro de Elevadores

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo ver a tela: Consulta de Cadastro de Elevadores (Filtro)
  resource_consElevadores.Acessar Tela Consulta de Cadastro de Elevadores (Filtro)
  
E verificar o campo Código
  resource_consElevadores.Verificar o campo Código

E verificar o segundo campo Código
  resource_consElevadores.Verificar o segundo campo Código

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
