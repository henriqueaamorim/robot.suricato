*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consElevadores.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Cadastro de Elevadores
${APPNAME}     consElevadores
${OBJETIVO}    Verificar todos os campos na tela Consulta de Cadastro de Elevadores

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Cadastro de Elevadores
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Configuração Elevadores | Cadastro de Elevadores
  Então devo ver a tela: Consulta de Cadastro de Elevadores
  E verificar a label Código
  E verificar a label Descrição
  E verificar a segunda label Código
  E verificar a label Elevandor em Manutenção
  E verificar se existe o campo Teste


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Configuração Elevadores | Cadastro de Elevadores
  resource_mnu.Clicar No Menu Estrutura | Configuração Elevadores | Cadastro de Elevadores

Então devo ver a tela: Consulta de Cadastro de Elevadores
  resource_consElevadores.Acessar Tela Consulta de Cadastro de Elevadores

E verificar a label Código
  resource_consElevadores.Verificar a label Código

E verificar a label Descrição
  resource_consElevadores.Verificar a label Descrição

E verificar a segunda label Código
  resource_consElevadores.Verificar a segunda label Código

E verificar a label Elevandor em Manutenção
  resource_consElevadores.Verificar a label Elevandor em Manutenção

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
