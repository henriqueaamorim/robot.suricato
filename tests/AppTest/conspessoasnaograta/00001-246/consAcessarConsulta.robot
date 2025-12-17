*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmpessoasnaograta.robot
Resource        ../../../../resource/app/resource_conspessoasnaograta.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Pessoa não Grata (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Pessoa não Grata (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Pessoa Não Grata | Pessoa Não Grata
  Então devo visualizar a tela: Pessoa não Grata (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Pessoa Não Grata | Pessoa Não Grata
  resource_mnu.Clicar No Menu Identificação | Pessoa Não Grata | Cadastro de Pessoa Não Grata

Então devo visualizar a tela: Pessoa não Grata (Consulta)
  resource_conspessoasnaograta.Acessar Tela: Pessoa não Grata (Consulta)
