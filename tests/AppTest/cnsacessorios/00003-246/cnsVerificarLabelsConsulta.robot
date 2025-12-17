*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmacessorios.robot
Resource        ../../../../resource/app/resource_cnsacessorios.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Acessório (Consulta)
${SCREENNAME}  Acessório
${APPNAME}     cnsacessorios

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Acessório (Consulta)
  [Tags]   VERIFY  246  247 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Cadastro | Acessórios
  Quando visualizar a tela: Acessório (Consulta)
  Então devo verificar a label: Código
  E verificar a label: Descrição
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Veículo | Cadastro | Acessórios
  resource_mnu.Clicar No Menu Veículos | Cadastro | Acessórios

Quando visualizar a tela: Acessório (Consulta)
  resource_cnsacessorios.Acessar Tela Consulta de Acessórios

Então devo verificar a label: Código
  resource_cnsacessorios.Verificar a label Código

E verificar a label: Descrição
  resource_cnsacessorios.Verificar a label Descrição

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
