*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consAndares.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Cadastro de Andares
${APPNAME}     consAndares
${OBJETIVO}    Verificar todos os campos na tela Consulta de Cadastro de Andares


*** Test Cases ***

Testcase: Acessar Tela Consulta de Cadastro de Andares
  [Tags]  VERIFY  246
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Configuração Elevadores | Cadastro de Andares
  Então devo ver a tela: Consulta de Cadastro de Andares
  E verificar a label Código 
  E verificar a label Descrição
  E verificar a segunda label Código
  E verificar se existe o campo Teste


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Configuração Elevadores | Cadastro de Andares
  resource_mnu.Clicar No Menu Estrutura | Configuração Elevadores | Cadastro de Andares

Então devo ver a tela: Consulta de Cadastro de Andares
  resource_consAndares.Acessar Tela Consulta de Cadastro de Andares

E verificar a label Código 
  resource_consAndares.Verificar a label Código 

E verificar a label Descrição
  resource_consAndares.Verificar a label Descrição

E verificar a segunda label Código
  resource_consAndares.Verificar a segunda label Código

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
