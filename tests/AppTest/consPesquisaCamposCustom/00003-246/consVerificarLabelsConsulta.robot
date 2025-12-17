*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmCamposCustomizaveis.robot
Resource        ../../../../resource/app/resource_consPesquisaCamposCustom.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Campo não Customizavel (Consulta)
${SCREENNAME}  Campo não Customizavel
${APPNAME}     consPesquisaCamposCustom

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Campo não Customizavel (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configuração | Aplicação | Campos Customizáveis
  Quando visualizar a tela: Campo não Customizavel (Consulta)
  Então devo verifiar a label: id
  E verificar a label: Nome
  E verificar a label: Tipo
  E verificar a label: Tamanho do Campo
  E verificar a label: Aplicação
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Configuração | Aplicação | Campos Customizáveis
  resource_mnu.Clicar No Menu Configurações | Campos Customizáveis

Quando visualizar a tela: Campo não Customizavel (Consulta)
  resource_frmCamposCustomizaveis.Acessar Tela: Campo não Customizavel - Consulta 

Então devo verifiar a label: id
  resource_frmCamposCustomizaveis.Verificar a label: id

E verificar a label: Nome
  resource_frmCamposCustomizaveis.Verificar a label: Nome

E verificar a label: Tipo
  resource_frmCamposCustomizaveis.Verificar a label: Tipo

E verificar a label: Tamanho do Campo
  resource_frmCamposCustomizaveis.Verificar a label: Tamanho do Campo

E verificar a label: Aplicação
  resource_frmCamposCustomizaveis.Verificar a label: Aplicação

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"

