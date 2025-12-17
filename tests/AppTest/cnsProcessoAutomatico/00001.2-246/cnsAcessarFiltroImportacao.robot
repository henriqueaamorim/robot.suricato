*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmProcessoAutomatico.robot
Resource        ../../../../resource/app/resource_cnsProcessoAutomatico.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Processo de Importação (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Processo de Importação (Filtro)
#Importação #
  [Tags]  PRINT  POPULATED  246  247 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Importação
  Quando eu visualizar a tela: Processo de Importação (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Processo de Importação (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Processo | Importação
  resource_mnu.Clicar No Menu Processo | Importação

Quando eu visualizar a tela: Processo de Importação (Consulta)
  resource_cnsProcessoAutomatico.Acessar Tela Processo de Importação

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Processo de Importação (Filtro)
  resource_cnsProcessoAutomatico.Acessar Tela Processo de Importação (Filtro)
