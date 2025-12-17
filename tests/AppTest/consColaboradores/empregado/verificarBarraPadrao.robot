*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_conscolaboradores.robot


Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar se os elementos padrão estão disponíveis na tela (Consulta)
${SCREENNAME}  Empregado
${APPNAME}     conscolaboradores

*** Test Cases ***
Testcase: Verificar se os elementos padrão estão disponíveis na tela (Consulta)
  [Tags]  VERIFY  246  247 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Empregado
  Quando visualizar a tela: Empregado (Consulta)
  Então devo visualizar a barra de navegação padrão
  E a barra de exportação padrão
  E a barra de paginação padrão


*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Empregado
  resource_mnu.Clicar No Menu Identificação | Colaborador | Empregado

Quando visualizar a tela: Empregado (Consulta)
  resource_conscolaboradores.Acessar Tela: Empregado (Consulta)

Então devo visualizar a barra de navegação padrão


E a barra de exportação padrão


E a barra de paginação padrão