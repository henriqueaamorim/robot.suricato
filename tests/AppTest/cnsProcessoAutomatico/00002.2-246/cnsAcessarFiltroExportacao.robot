*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmProcessoAutomatico.robot
Resource        ../../../../resource/app/resource_cnsProcessoAutomatico.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Processo de Exportação (Filtro)


*** Test Cases ***
Testcase: Acessar Tela: Processo de Exportação (Filtro)
# Exportação #
  [Tags]  PRINT  POPULATED   246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Exportação
  Quando eu visualizar a tela: Processo de Exportação (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Processo de Exportação (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Processo | Exportação
  resource_mnu.Clicar No Menu Processo | Exportação

Quando eu visualizar a tela: Processo de Exportação (Consulta)
  resource_cnsProcessoAutomatico.Acessar Tela Processo de Exportação

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Processo de Exportação (Filtro)
  resource_cnsProcessoAutomatico.Acessar Tela Processo de Exportação (Filtro)
