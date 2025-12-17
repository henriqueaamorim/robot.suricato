*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsEPICentroCusto.robot


Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${OBJETIVO}     Verificar todos os campos na tela: EPI por Centro de Custo (Filtro)
${SCREENNAME}   EPI por Centro de Custo
${APPNAME}      cnsEPICentroCusto

*** Test Cases ***
Testcase: Verificar todos os campos na tela: EPI por Centro de Custo (Filtro)
  [Tags]  VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI | EPI por Centro de Custo
  Quando ver a tela: EPI por Centro de Custo (Consulta)
  E clicar no botão Pesquisar Registro
  Então devo ver a tela: EPI por Centro de Custo (Filtro)
  E verifica o campo Empresa
  E verifica o campo Centro de Custo	
  E verifica o campo Uso	
  E verifica o campo EPI
  E verificar se existe o campo Teste na tela
 


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI | EPI por Centro de Custo
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Centro de Custo

Quando ver a tela: EPI por Centro de Custo (Consulta)
  resource_cnsEPICentroCusto.Acessar Tela Cadastro de EPI por Centro de Custo

E clicar no botão Pesquisar Registro
    resource_btn.Clicar No Botão Pesquisar Registros

Então devo ver a tela: EPI por Centro de Custo (Filtro)
     resource_cnsEPICentroCusto.Acessar tela: EPI por Centro de Custo (Filtro)

E verifica o campo Empresa
    resource_cnsEPICentroCusto.Verificar o campo Empresa

E verifica o campo Centro de Custo	
    resource_cnsEPICentroCusto.Verificar o campo Centro de Custo

E verifica o campo Uso	
    resource_cnsEPICentroCusto.Verificar o campo Uso

E verifica o campo EPI
    resource_cnsEPICentroCusto.Verificar o campo EPI

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"


