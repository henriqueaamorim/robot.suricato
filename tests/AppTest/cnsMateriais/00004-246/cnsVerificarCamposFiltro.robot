*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsMateriais.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta de Materiais (Filtro)
${APPNAME}     cnsMateriais
${OBJETIVO}    Verificar todos os campos na tela: Material (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Material (Filtro)
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Material | Cadastro
  Quando visualizar a tela: Material (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Material (Filtro)
  E verificar o campo: Código do Material
  E verificar o campo: Descrição
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Material | Cadastro
  resource_mnu.Clicar No Menu Entrada | Material | Cadastro

Quando visualizar a tela: Material (Consulta)
  resource_cnsMateriais.Acessar Tela Consulta de Materiais

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Material (Filtro)
  resource_cnsMateriais.Acessar Tela Consulta de Materiais (Filtro)

E verificar o campo: Código do Material
  resource_cnsMateriais.Verificar o campo Código do Material

E verificar o campo: Descrição
  resource_cnsMateriais.Verificar o campo Descrição

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
