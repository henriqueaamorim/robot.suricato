*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsEPICCustoCargo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Cadastro de EPI por Centro de Custo e Cargo (Consulta)
${SCREENNAME}  EPI por Centro de Custo e Cargo
${APPNAME}     cnsEPICCustoCargo

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Cadastro de EPI por Centro de Custo e Cargo (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
   Dado que eu acesse o menu: Estrutura | Empresa | EPI | EPI por Centro de Custo e Cargo
   Quando ver a tela: Cadastro de EPI por Centro de Custo e Cargo (Consulta)
   Então devo verificar a label Empresa
   E verificar a label Centro de Custo
   E verificar a label Cargo
   E verificar a label EPI
   E verificar a label Revisão (Dias)
   E verificar a label Validade (Dias)
   E verificar a label Uso
   E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI | EPI por Centro de Custo e Cargo
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Centro de Custo e Cargo

Quando ver a tela: Cadastro de EPI por Centro de Custo e Cargo (Consulta)
  resource_cnsEPICCustoCargo.Acessar Tela Cadastro de EPI por Centro de Custo e Cargo

Então devo verificar a label Empresa
    resource_cnsEPICCustoCargo.Verificar a label Empresa

E verificar a label Centro de Custo
    resource_cnsEPICCustoCargo.Verificar a label Centro de Custo

E verificar a label Cargo
    resource_cnsEPICCustoCargo.Verificar a label Cargo

E verificar a label EPI
    resource_cnsEPICCustoCargo.Verificar a label EPI

E verificar a label Revisão (Dias)
    resource_cnsEPICCustoCargo.Verificar a label Revisão (Dias)

E verificar a label Validade (Dias)
    resource_cnsEPICCustoCargo.Verificar a label Validade (Dias)

E verificar a label Uso
    resource_cnsEPICCustoCargo.Verificar a label Uso

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
