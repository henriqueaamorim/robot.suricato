*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsEPICargo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: EPI por Cargo (Filtro)
${SCREENNAME}  EPI por Cargo
${APPNAME}     cnsEPICargo

*** Test Cases ***
Testcase: Verificar todos os campos na tela: EPI por Cargo (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI por Cargo
  Quando ver a tela: EPI por Cargo (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo ver a tela: EPI por Cargo (Filtro)
  E verificar o campo EPI
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI por Cargo
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Cargo

Quando ver a tela: EPI por Cargo (Consulta)
  resource_cnsEPICargo.Acessar Tela Cadastro de EPI por Cargo

E clicar no botão: Pesquisar Registro
    resource_btn.Clicar no botão Pesquisar Registros

Então devo ver a tela: EPI por Cargo (Filtro)  
    resource_cnsEPICargo.Acessar Tela de EPI por Cargo (Filtro)

E verificar o campo EPI    
    resource_cnsEPICargo.Verificar o campo EPI

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"