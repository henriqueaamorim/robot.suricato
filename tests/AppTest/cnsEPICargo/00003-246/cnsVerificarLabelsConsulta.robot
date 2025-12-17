*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsEPICargo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: EPI por Cargo (Consulta)
${SCREENNAME}  EPI por Cargo
${APPNAME}     cnsEPICargo

*** Test Cases ***
Testcase: Verificar todas as labels na tela: EPI por Cargo (Consulta)
  [Tags]   VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI por Cargo
  Quando ver a tela: EPI por Cargo (Consulta)
  Então devo verificar a label: Cargo
  E verificar a label EPI
  E verificar a label Revisão (Dias) 
  E verificar a label Validade (Dias)
  E verificar a label Uso
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI por Cargo
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Cargo

Quando ver a tela: EPI por Cargo (Consulta)
  resource_cnsEPICargo.Acessar Tela Cadastro de EPI por Cargo

Então devo verificar a label: Cargo
    resource_cnsEPICargo.Verificar a label Cargo

E verificar a label EPI
    resource_cnsEPICargo.Verificar a label EPI

E verificar a label Revisão (Dias) 
    resource_cnsEPICargo.Verificar a label Revisão (Dias)

E verificar a label Validade (Dias)
    resource_cnsEPICargo.Verificar a label Validade (Dias)

E verificar a label Uso
    resource_cnsEPICargo.Verificar a label Uso

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"