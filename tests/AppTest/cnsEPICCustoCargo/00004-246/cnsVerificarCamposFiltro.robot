*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsEPICCustoCargo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Cadastro de EPI por Centro de Custo e Cargo (Filtro)
${SCREENNAME}  EPI por Centro de Custo e Cargo
${APPNAME}     cnsEPICCustoCargo

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Cadastro de EPI por Centro de Custo e Cargo (Filtro)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
   Dado que eu acesse o menu: Estrutura | Empresa | EPI | EPI por Centro de Custo e Cargo
   Quando ver a tela: EPI por Centro de Custo e Cargo (Consulta)
   E clicar no botão: Pesquisar Registro
   Então devo ver a tela: EPI por Centro de Custo e Cargo (Filtro)
   E verificar o campo Empresa
   E verificar o campo EPI
   E verificar se existe o campo Teste na tela 

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI | EPI por Centro de Custo e Cargo
    resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Centro de Custo e Cargo

Quando ver a tela: EPI por Centro de Custo e Cargo (Consulta)
    resource_cnsEPICCustoCargo.Acessar Tela Cadastro de EPI por Centro de Custo e Cargo

E clicar no botão: Pesquisar Registro
    resource_btn.Clicar No Botão Pesquisar Registros

Então devo ver a tela: EPI por Centro de Custo e Cargo (Filtro)
    resource_cnsEPICCustoCargo.Acessar Tela Cadastro de EPI por Centro de Custo e Cargo (Filtro)

E verificar o campo Empresa
    resource_cnsEPICCustoCargo.Verificar o campo Empresa

E verificar o campo EPI
    resource_cnsEPICCustoCargo.Verificar o campo EPI

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"     
    