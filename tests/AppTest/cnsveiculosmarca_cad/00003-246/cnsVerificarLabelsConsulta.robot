*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsveiculosmarca_cad.robot
Resource        ../../../../resource/app/resource_frmmarcaveiculos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela:  Marca (Consulta)
${SCREENNAME}  Marca
${APPNAME}     cnsveiculosmarca_cad

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Marca (Consulta)
  [Tags]  VERIFY  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Cadastro | Marcas
  Quando visualizar a tela: Marca (Consulta)
  Então devo verificar a label: Id
  E verificar a label: Marca
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Veículo | Cadastro | Marcas
  resource_mnu.Clicar No Menu Veículos | Cadastro | Marcas

Quando visualizar a tela: Marca (Consulta)
  resource_cnsveiculosmarca_cad.Acessar Tela Marcas de Veículos - Consulta

Então devo verificar a label: Id
  resource_cnsveiculosmarca_cad.Verificar a label: Id

E verificar a label: Marca
  resource_cnsveiculosmarca_cad.Verificar a label: Marca

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"

