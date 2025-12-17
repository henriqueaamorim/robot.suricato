*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmprecadastrocracha69cra.robot
Resource        ../../../../resource/app/resource_consprecadastrocracha.robot
Resource    ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Pré-Cadastro de Crachá (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Pré-Cadastro de Crachá (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crachá | Pré-Cadastro de Crachá
  Quando visualizar a tela: Pré-Cadastro de Crachá (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Pré-Cadastro de Crachá (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Registro | Crachá | Pré-Cadastro de Crachá
  resource_mnu.Clicar No Menu Registro | Crachá | Pré-Cadastro de Crachá

Quando visualizar a tela: Pré-Cadastro de Crachá (Consulta)
  resource_consprecadastrocracha.Acessar Tela: Pré-Cadastro de Crachá (Consulta)

E clicar no botão: Pesquisar registros
    resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Pré-Cadastro de Crachá (Filtro)  
    resource_consprecadastrocracha.Acessar Tela: Pré-Cadastro de Crachá (Filtro)