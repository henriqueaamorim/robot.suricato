*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmotivopessoasnaograta.robot
Resource        ../../../../resource/app/resource_consmotivopessoasnaogratacad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Motivo de Pessoa não Grata (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Motivo de Pessoa não Grata (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Pessoa Não Grata | Motivo
  Então devo visualizar a tela: Motivo de Pessoa não Grata (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Identificação | Pessoa Não Grata | Motivo
  resource_mnu.Clicar No Menu Identificação | Pessoa Não Grata | Motivo

Então devo visualizar a tela: Motivo de Pessoa não Grata (Consulta)
  resource_consmotivopessoasnaogratacad.Acessar Tela: Motivo de Pessoa não Grata (Consulta)


