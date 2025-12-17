*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsMateriais.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta de Materiais
${APPNAME}     cnsMateriais
${OBJETIVO}    Verificar todas as labels na tela: Material (Consulta)

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Material (Consulta)
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Material | Cadastro
  Quando visualizar a tela: Material (Consulta)
  Então devo verificar a label: Código do Material
  E verificar a label: Descrição 
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Material | Cadastro
  resource_mnu.Clicar No Menu Entrada | Material | Cadastro

Quando visualizar a tela: Material (Consulta)
  resource_cnsMateriais.Acessar Tela Consulta de Materiais

Então devo verificar a label: Código do Material
  resource_cnsMateriais.Verificar a label Código do Material

E verificar a label: Descrição 
  resource_cnsMateriais.Verificar a label Descrição 

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
