*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsEPICentroCusto.robot


Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${OBJETIVO}     Verificar todas as labels na tela: EPI por Centro de Custo (Consulta)
${SCREENNAME}   EPI por Centro de Custo
${APPNAME}      cnsEPICentroCusto

*** Test Cases ***
Testcase: Verificar todas as labels na tela: EPI por Centro de Custo (Consulta)
  [Tags]   VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI | EPI por Centro de Custo
  Quando ver a tela: EPI por Centro de Custo (Consulta)
  Então verificar a label Empresa
  E verificar a label Centro de Custo
  E verificar a label EPI
  E verificar a label Revisão (Dias)
  E verificar a label Validade (Dias)
  E verificar a label Uso
  E verificar se existe o campo Teste na tela



*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI | EPI por Centro de Custo
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Centro de Custo

Quando ver a tela: EPI por Centro de Custo (Consulta)
  resource_cnsEPICentroCusto.Acessar Tela Cadastro de EPI por Centro de Custo

Então verificar a label Empresa
    resource_cnsEPICentroCusto.Verificar a label Empresa

E verificar a label Centro de Custo
    resource_cnsEPICentroCusto.Verificar a label Centro de Custo

E verificar a label EPI
    resource_cnsEPICentroCusto.Verificar a label EPI

E verificar a label Revisão (Dias)
    resource_cnsEPICentroCusto.Verificar a label Revisão (Dias)

E verificar a label Validade (Dias)
    resource_cnsEPICentroCusto.Verificar a label Validade (Dias)

E verificar a label Uso
    resource_cnsEPICentroCusto.Verificar a label Uso

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"


