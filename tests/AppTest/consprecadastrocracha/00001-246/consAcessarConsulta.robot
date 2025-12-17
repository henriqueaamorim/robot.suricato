*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmprecadastrocracha69cra.robot
Resource        ../../../../resource/app/resource_consprecadastrocracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Pré-Cadastro de Crachá (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Pré-Cadastro de Crachá (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crachá | Pré-Cadastro de Crachá
  Então devo visualizar a tela: Pré-Cadastro de Crachá (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Registro | Crachá | Pré-Cadastro de Crachá
  resource_mnu.Clicar No Menu Registro | Crachá | Pré-Cadastro de Crachá

Então devo visualizar a tela: Pré-Cadastro de Crachá (Consulta)
  resource_consprecadastrocracha.Acessar Tela: Pré-Cadastro de Crachá (Consulta)