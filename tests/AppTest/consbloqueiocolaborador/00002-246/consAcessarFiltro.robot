*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consbloqueiocolaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Bloqueio de Colaborador (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Bloqueio de Colaborador (Filtro)
  [Tags]  PRINT  POPULATED   246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Colaborador | Bloqueio
  Quando visualizar a tela: Bloqueio de Colaborador (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Bloqueio de Colaborador (Filtro)


*** Keywords ***
Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Colaborador | Bloqueio
  resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Colaborador | Bloqueio

Quando visualizar a tela: Bloqueio de Colaborador (Consulta)
  resource_consbloqueiocolaborador.Acessar Tela Consulta de Bloqueio de Colaborador

E clicar no botão: Pesquisar Registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Bloqueio de Colaborador (Filtro)  
    resource_consbloqueiocolaborador.Acessar Tela: Bloqueio de Colaborador (Filtro)