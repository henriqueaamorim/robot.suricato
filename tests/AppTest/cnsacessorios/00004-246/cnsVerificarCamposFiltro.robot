*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmacessorios.robot
Resource        ../../../../resource/app/resource_cnsacessorios.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Acessório (Filtro)
${SCREENNAME}  Acessório
${APPNAME}     cnsacessorios

*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Acessório (Filtro)
  [Tags]   VERIFY  246  247 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Cadastro | Acessórios
  Quando visualizar a tela: Acessório (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Acessório (Filtro)
  E verificar o campo: Código
  E verificar o campo: Descrição	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Veículo | Cadastro | Acessórios
  resource_mnu.Clicar No Menu Veículos | Cadastro | Acessórios

Quando visualizar a tela: Acessório (Consulta)
  resource_cnsacessorios.Acessar Tela Consulta de Acessórios

E clicar no botão: Pesquisar registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Acessório (Filtro)  
  resource_cnsacessorios.Acessar Tela Consulta de Acessórios - Filtro

E verificar o campo: Código
  resource_cnsacessorios.Verificar o campo: Código

E verificar o campo: Descrição	
  resource_cnsacessorios.Verificar o campo: Descrição

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"