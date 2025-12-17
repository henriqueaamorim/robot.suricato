*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsEPILocal.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${OBJETIVO}     Verificar todos os campos na tela: EPI por Local (Filtro)
${SCREENNAME}   EPI por Local 
${APPNAME}      cnsEPILocal

*** Test Cases ***
Testcase: Verificar todos os campos na tela: EPI por Local (Filtro)
  [Tags]  VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI | EPI por Local 
  Quando ver a tela: EPI por Local (Consulta)
  E clicar no botão Pesquisar Registro
  Então devo ver a tela: EPI por Local (Filtro)
  E verificar o campo Empresa
  E verificar o campo Organograma
  E verificar o campo Local
  E verificar o campo EPI
  E verificar se existe o campo Teste na tela  

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI | EPI por Local 
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Local

Quando ver a tela: EPI por Local (Consulta)
  resource_cnsEPILocal.Acessar Tela Cadastro de EPI por Local

E clicar no botão Pesquisar Registro
    resource_btn.Clicar no botão Pesquisar Registros

Então devo ver a tela: EPI por Local (Filtro)
    resource_cnsEPILocal.Acessar Tela Cadastro de EPI por Local (Filtro)

E verificar o campo Empresa
    resource_cnsEPILocal.Verificar o campo Empresa

E verificar o campo Organograma
    resource_cnsEPILocal.Verificar o campo Organograma

E verificar o campo Local
    resource_cnsEPILocal.Verificar o campo Local

E verificar o campo EPI
    resource_cnsEPILocal.Verificar o campo EPI

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
