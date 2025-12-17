*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmbeneficios.robot
Resource        ../../../../resource/app/resource_cnsbeneficioscad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Benefícios
${SCREENNAME}  Benefícios
${APPNAME}     cnsbeneficioscad

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Benefícios
  [Tags]   VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Benefício | Benefício
  Quando eu visualizar a tela: Benefícios (Consulta)
  Então devo verificar a label: Código do Benefício
  E verificar a label: Descrição
  E verificar a label: Máximo de Entregas sem Retirada
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Registro | Benefício | Benefício
  resource_mnu.Clicar No Menu Registro | Benefício | Cadastro de Benefício

Quando eu visualizar a tela: Benefícios (Consulta)
  resource_cnsbeneficioscad.Acessar Tela Consulta Benefícios

Então devo verificar a label: Código do Benefício
    resource_cnsbeneficioscad.Verificar a label: Código do Benefício

E verificar a label: Descrição
    resource_cnsbeneficioscad.Verificar a label: Descrição

E verificar a label: Máximo de Entregas sem Retirada
    resource_cnsbeneficioscad.Verificar a label: Máximo de Entregas sem Retirada

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
