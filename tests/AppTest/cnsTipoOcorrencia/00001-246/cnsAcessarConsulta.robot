*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsTipoOcorrencia.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar tela: Tipo de Ocorrência (Consulta)

*** Test Cases ***
Testcase: Acessar tela: Tipo de Ocorrência (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Ocorrência | Tipos de Ocorrência
  Então devo visualizar a tela: Tipo de Ocorrência (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Registro | Ocorrência | Tipos de Ocorrência
  resource_mnu.Clicar No Menu Registro | Ocorrência | Tipos de Ocorrência

Então devo visualizar a tela: Tipo de Ocorrência (Consulta)
  resource_cnsTipoOcorrencia.Acessar Tela: Tipo de Ocorrência (Consulta)
