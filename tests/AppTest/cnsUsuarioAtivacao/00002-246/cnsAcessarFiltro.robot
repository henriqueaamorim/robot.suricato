*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsUsuarioAtivacao.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela Ativar Relatório (Filtro)


*** Test Cases ***
Testcase: Acessar Tela Ativar Relatório (Filtro)
  [Tags]  PRINT  POPULATED  246  247  
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Relatório | Ativar
  Quando visualizar a tela: Ativar Relatório (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Ativar Relatório (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Relatório | Ativar
  resource_mnu.Clicar No Menu Relatório | Ativar

Quando visualizar a tela: Ativar Relatório (Consulta)
  resource_cnsUsuarioAtivacao.Acessar Tela Ativar Relatório

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Ativar Relatório (Filtro)
  resource_cnsUsuarioAtivacao.Acessar Tela Ativar Relatório - Filtro
