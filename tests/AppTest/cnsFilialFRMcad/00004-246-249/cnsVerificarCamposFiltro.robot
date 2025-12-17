*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsFilialFRMcad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Filial (Filtro)
${SCREENNAME}  Filial
${APPNAME}     cnsFilialFRMcad


*** Test Cases ***
Testcase: Verificar todos os campos na tela: Filial (Filtro)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Filial
  Quando visualizar a tela: Filial (Consulta)
  E clicar no botão Pesquisar Registro
  Então devo ver a tela: Filial (Filtro)
  E verificar o campo Empresa	
  E verificar o campo Código da Filial	
  E verificar o campo Nome Fantasia	
  E verificar o campo Chave Externa	
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Filial
  resource_mnu.Clicar No Menu Estrutura | Empresa | Filial

Quando visualizar a tela: Filial (Consulta)
  resource_cnsFilialFRMcad.Acessar Tela Consulta de Filial

E clicar no botão Pesquisar Registro
    resource_btn.Clicar No Botão Pesquisar

Então devo ver a tela: Filial (Filtro)
    resource_cnsFilialFRMcad.Acessar Tela Consulta de Empresas (Filtro)

E verificar o campo Empresa	
  resource_cnsFilialFRMcad.Verificar o campo Empresa

E verificar o campo Código da Filial	
  resource_cnsFilialFRMcad.Verificar o campo Código da Filial

E verificar o campo Nome Fantasia	
  resource_cnsFilialFRMcad.Verificar o campo Nome Fantasia

E verificar o campo Chave Externa	    
  resource_cnsFilialFRMcad.Verificar o campo Chave Externa

E verificar se existe o campo Teste na tela
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"  