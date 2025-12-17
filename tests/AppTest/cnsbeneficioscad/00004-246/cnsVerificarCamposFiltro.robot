*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmbeneficios.robot
Resource        ../../../../resource/app/resource_cnsbeneficioscad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Benefícios (Filtro)
${SCREENNAME}  Benefícios
${APPNAME}     cnsbeneficioscad

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Benefícios (Filtro)
  [Tags]   VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Benefício | Benefício
  Quando visualizar a tela: Benefícios (Consulta)
  E clicar no botão: Pesquisar registros 
  Então devo visualizar a tela: Benefícios (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Código do Benefício	
  E verificar o campo: Descrição
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Registro | Benefício | Benefício
  resource_mnu.Clicar No Menu Registro | Benefício | Cadastro de Benefício

Quando visualizar a tela: Benefícios (Consulta)
  resource_cnsbeneficioscad.Acessar Tela Consulta Benefícios

E clicar no botão: Pesquisar registros 
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Benefícios (Filtro)  
  resource_cnsbeneficioscad.Acessar Tela: Benefícios (Filtro)

E verificar a label: Pesquisa
    resource_cnsbeneficioscad.Verificar a label Pesquisa

E verificar o campo: Código do Benefício	
    resource_cnsbeneficioscad.Verificar o campo: Código do Benefício

E verificar o campo: Descrição
    resource_cnsbeneficioscad.Verificar o campo: Descrição

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"