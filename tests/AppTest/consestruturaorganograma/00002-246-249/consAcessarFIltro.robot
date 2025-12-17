*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consestruturaorganograma.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Estrutura de Organograma (Filtro)


*** Test Cases ***
Testcase: Acessar Tela: Estrutura de Organograma (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Estrutura | Empresa | Local | Organograma
  Quando visualizar a tela: Estrutura de Organograma (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Estrutura de Organograma (Filtro)

*** Keywords ***

Dado que eu acesse o menu: Estrutura | Empresa | Local | Organograma
  resource_mnu.Clicar No Menu Estrutura | Empresa | Local | Organograma 

Quando visualizar a tela: Estrutura de Organograma (Consulta)
  resource_consestruturaorganograma.Acessar Tela Consulta de Estrutura de Organograma

E clicar no botão: Pesquisar registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Estrutura de Organograma (Filtro)
  resource_consestruturaorganograma.Acessar Tela Consulta de Estrutura de Organograma (Filtro)