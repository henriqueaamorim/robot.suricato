*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcadastroocorrencia.robot
Resource        ../../../../resource/app/resource_consocorrencia.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Ocorrência (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Ocorrência (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Ocorrência | Cadastro
  Quando eu visualizar a tela: Ocorrência (Consulta)
  E clicar no botão: Pesquisar registro
  Então devo visualizar a tela: Ocorrência (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Registro | Ocorrência | Cadastro
  resource_mnu.Clicar No Menu Registro | Ocorrência | Cadastro

Quando eu visualizar a tela: Ocorrência (Consulta)
  resource_consocorrencia.Acessar Tela: Ocorrência (Consulta)

E clicar no botão: Pesquisar registro
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Ocorrência (Filtro)
  resource_consocorrencia.Acessar Tela: Ocorrência (Filtro)
