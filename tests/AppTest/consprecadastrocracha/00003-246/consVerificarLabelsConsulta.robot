*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmprecadastrocracha69cra.robot
Resource        ../../../../resource/app/resource_consprecadastrocracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Pré-Cadastro de Crachá (Consulta)
${SCREENNAME}  Pré-Cadastro de Crachá
${APPNAME}     consprecadastrocracha

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Pré-Cadastro de Crachá (Consulta)
  [Tags]  VERIFY    246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crachá | Pré-Cadastro de Crachá
  Quando visualizar a tela: Pré-Cadastro de Crachá (Consulta)
  Então devo verificar a label: Crachá
  E verificar a label: Tipo do Crachá
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Registro | Crachá | Pré-Cadastro de Crachá
  resource_mnu.Clicar No Menu Registro | Crachá | Pré-Cadastro de Crachá

Quando visualizar a tela: Pré-Cadastro de Crachá (Consulta)
  resource_consprecadastrocracha.Acessar Tela: Pré-Cadastro de Crachá (Consulta)

Então devo verificar a label: Crachá
    resource_consprecadastrocracha.Verificar a label: Crachá

E verificar a label: Tipo do Crachá
    resource_consprecadastrocracha.Verificar a label: Tipo do Crachá

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"