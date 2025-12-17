*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consestruturaorganograma.robot
Resource        ../../../../resource/app/resource_blankorganograma.robot  

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}  

*** Test Cases ***

Testcase: Acessar Tela de Organograma
  [Tags]  PRINT  POPULATED  246
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Estrutura | Empresa | Local | Organograma 
  Então devo ver a tela: Consulta de Estrutura de Organograma
  E clicar no botão Editar o Registro "1"
  E clicar nos 3 pontinhos
  E clicar na opção Editar
  Então devo visualizar a tela: Estrutura Organograma
  
*** Keywords ***

Dado que eu acesse o menu: Estrutura | Empresa | Local | Organograma 
  resource_mnu.Clicar No Menu Estrutura | Empresa | Local | Organograma 

Então devo ver a tela: Consulta de Estrutura de Organograma
  resource_consestruturaorganograma.Acessar Tela Consulta de Estrutura de Organograma

E clicar no botão Editar o Registro "${NUM}"
    resource_btn.Clicar No Botão Editar o Registro "${NUM}"

E clicar nos 3 pontinhos
  resource_blankorganograma.Clicar nos 3 pontinhos

E clicar na opção Editar
  resource_blankorganograma.Clicar na opção Editar

Então devo visualizar a tela: Estrutura Organograma
  resource_blankorganograma.Acessar Tela Estrutura Organograma (Edição)