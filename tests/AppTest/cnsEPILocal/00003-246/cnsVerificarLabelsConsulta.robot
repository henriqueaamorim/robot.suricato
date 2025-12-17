*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsEPILocal.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${OBJETIVO}     Verificar todos as labels na tela: EPI por Local (Consulta)
${SCREENNAME}   EPI por Local 
${APPNAME}      cnsEPILocal

*** Test Cases ***
Testcase: Verificar todos as labels na tela: EPI por Local (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI | EPI por Local 
  Quando ver a tela: EPI por Local (Consulta)
  Então devo verificar a label Empresa  
  E verificar a label Organograma
  E verificar a label Local
  E verificar a label EPI
  E verificar a label Revisão (Dias)
  E verificar a label Validade (Dias)
  E verificar a label Uso  
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI | EPI por Local 
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Local

Quando ver a tela: EPI por Local (Consulta)
  resource_cnsEPILocal.Acessar Tela Cadastro de EPI por Local

Então devo verificar a label Empresa  
    resource_cnsEPILocal.Verificar a label Empresa

E verificar a label Organograma
    resource_cnsEPILocal.Verificar a label Organograma

E verificar a label Local
    resource_cnsEPILocal.Verificar a label Local

E verificar a label EPI
    resource_cnsEPILocal.Verificar a label EPI

E verificar a label Revisão (Dias)
    resource_cnsEPILocal.Verificar a label Revisão (Dias)

E verificar a label Validade (Dias)
    resource_cnsEPILocal.Verificar a label Validade (Dias)

E verificar a label Uso  
    resource_cnsEPILocal.Verificar a label Uso

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
