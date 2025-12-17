*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsveiculosmarca_cad.robot
Resource        ../../../../resource/app/resource_frmmarcaveiculos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Marca (Filtro)
${SCREENNAME}  Marca
${APPNAME}     cnsveiculosmarca_cad

*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Marca (Filtro)
  [Tags]  VERIFY  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Cadastro | Marcas
  Quando visualizar a tela: Marca (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo visualizar a tela: Marca (Filtro)
  E verificar o campo: Marca
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Veículo | Cadastro | Marcas
  resource_mnu.Clicar No Menu Veículos | Cadastro | Marcas

Quando visualizar a tela: Marca (Consulta)
  resource_cnsveiculosmarca_cad.Acessar Tela Marcas de Veículos - Consulta

E clicar no botão: Pesquisar Registro
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Marca (Filtro)  
  resource_cnsveiculosmarca_cad.Acessar Tela Marcas de Veículos - Pesquisa

E verificar o campo: Marca
  resource_cnsveiculosmarca_cad.Verificar o campo: Marca

E verificar se existe o campo Teste na tela
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
