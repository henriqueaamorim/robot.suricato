*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmCamposCustomizaveis.robot
Resource        ../../../../resource/app/resource_consPesquisaCamposCustom.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Verificar todos os campos na tela: Campo não Customizavel (Filtro)
${SCREENNAME}  Campo não Customizavel
${APPNAME}     consPesquisaCamposCustom


*** Test Cases ***
Testcase: Verificar todos os campos na tela: Campo não Customizavel (Filtro)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configuração | Aplicação | Campos Customizáveis
  Quando eu visualizar a tela: Campo não Customizavel (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Campo não Customizavel (Filtro)
  E verificar o campo: Aplicação
  E verificar o campo: Nome
  E verificar o campo: Tipo
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Configuração | Aplicação | Campos Customizáveis
  resource_mnu.Clicar No Menu Configurações | Campos Customizáveis

Quando eu visualizar a tela: Campo não Customizavel (Consulta)
  resource_frmCamposCustomizaveis.Acessar Tela: Campo não Customizavel - Consulta 

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Campo não Customizavel (Filtro)
  resource_frmCamposCustomizaveis.Acessar Tela: Campo não Customizavel - Filtro 

E verificar o campo: Aplicação
  resource_frmCamposCustomizaveis.Verificar o campo Aplicação *

E verificar o campo: Nome
  resource_frmCamposCustomizaveis.Verificar o campo Nome *

E verificar o campo: Tipo
  resource_frmCamposCustomizaveis.Verificar o campo Tipo *

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"