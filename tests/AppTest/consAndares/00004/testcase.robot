*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consAndares.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Cadastro de Andares (Filtro)
${APPNAME}     consAndares
${OBJETIVO}    Verificar todos os campos na tela Consulta de Cadastro de Andares (Filtro)


*** Test Cases ***

Testcase: Acessar Tela Consulta de Cadastro de Andares (Filtro)
  [Tags]  VERIFY  246
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Configuração Elevadores | Cadastro de Andares
  Então devo ver a tela: Consulta de Cadastro de Andares
  E clicar no botão: Pesquisar
  Então devo ver a tela: Consulta de Cadastro de Andares (Filtro)
  E verificar o campo Código
  E verificar o campo Descrição
  E verificar o segundo campo Código
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Configuração Elevadores | Cadastro de Andares
  resource_mnu.Clicar No Menu Estrutura | Configuração Elevadores | Cadastro de Andares

Então devo ver a tela: Consulta de Cadastro de Andares
  resource_consAndares.Acessar Tela Consulta de Cadastro de Andares

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo ver a tela: Consulta de Cadastro de Andares (Filtro)
  resource_consAndares.Acessar Tela Consulta de Cadastro de Andares (Filtro)
  
E verificar o campo Código
  resource_consAndares.Verificar o campo Código

E verificar o campo Descrição
  resource_consAndares.Verificar o campo Descrição

E verificar o segundo campo Código
  resource_consAndares.Verificar o segundo campo Código

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
