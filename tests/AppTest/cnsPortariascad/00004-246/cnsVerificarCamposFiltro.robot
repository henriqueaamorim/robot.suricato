*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmPortarias.robot
Resource        ../../../../resource/app/resource_cnsPortariascad.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta de Portarias (Filtro)
${APPNAME}     cnsPortariascad
${OBJETIVO}    Verificar todos os campos na tela Consulta de Portarias (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na tela Consulta de Portarias (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Portaria
  Quando visualizar a tela: Portaria (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Portaria (Filtro)
  E verificar o campo Descrição
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Portaria
  resource_mnu.Clicar No Menu Estrutura | Portaria e Recepção

Quando visualizar a tela: Portaria (Consulta)
  resource_cnsPortariascad.Acessar Tela Consulta de Portarias

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Portaria (Filtro)
  resource_cnsPortariascad.Acessar Tela Portaria (Filtro)

E verificar o campo Descrição
  resource_cnsPortariascad.Verificar o campo Descrição

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
