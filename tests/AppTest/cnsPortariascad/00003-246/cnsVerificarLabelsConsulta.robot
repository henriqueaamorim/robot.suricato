*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmPortarias.robot
Resource        ../../../../resource/app/resource_cnsPortariascad.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${SCREENNAME}  Consulta de Portarias
${APPNAME}     cnsPortariascad
${OBJETIVO}    Verificar todas as labels na tela: Portaria (Consulta)

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Portaria (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Portaria
  Quando visualizar a tela: Portaria (Consulta)
  Então verificar a label Portaria
  E verificar a label Descrição
  E verificar a label Planta
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Portaria
  resource_mnu.Clicar No Menu Estrutura | Portaria e Recepção

Quando visualizar a tela: Portaria (Consulta)
  resource_cnsPortariascad.Acessar Tela Consulta de Portarias

Então verificar a label Portaria
  resource_cnsPortariascad.Verificar a label Portaria

E verificar a label Descrição
  resource_cnsPortariascad.Verificar a label Descrição

E verificar a label Planta
  resource_cnsPortariascad.Verificar a label Planta

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
