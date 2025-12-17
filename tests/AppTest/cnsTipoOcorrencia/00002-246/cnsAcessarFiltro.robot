*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsTipoOcorrencia.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar tela: Tipo de Ocorrência (Filtro)

*** Test Cases ***
Testcase: Acessar tela: Tipo de Ocorrência (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Ocorrência | Tipos de Ocorrência
  Quando visualizar a tela: Tipo de Ocorrência (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo visualizar a tela: Tipo de Ocorrência (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Registro | Ocorrência | Tipos de Ocorrência
  resource_mnu.Clicar No Menu Registro | Ocorrência | Tipos de Ocorrência

Quando visualizar a tela: Tipo de Ocorrência (Consulta)
    resource_cnsTipoOcorrencia.Acessar Tela: Tipo de Ocorrência (Consulta)

E clicar no botão: Pesquisar Registro
    resource_btn.Clicar no Botão Pesquisar Registros

Então devo visualizar a tela: Tipo de Ocorrência (Filtro)  
    resource_cnsTipoOcorrencia.Acessar Tela: Tipo de Ocorrência (Filtro)