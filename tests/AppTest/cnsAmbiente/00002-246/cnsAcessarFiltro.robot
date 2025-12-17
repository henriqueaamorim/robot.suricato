*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAmbiente.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Ambiente (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Ambiente (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Ambiente
  Quando ver a tela: Ambiente (Consulta)
  E clicar no botão Pesquisar Registro
  Então devo ver a tela: Ambiente (Filtro)


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Ambiente
  resource_mnu.Clicar No Menu Estrutura | Empresa | Ambiente

Quando ver a tela: Ambiente (Consulta)
  resource_cnsAmbiente.Acessar Tela Consulta de Ambiente

E clicar no botão Pesquisar Registro
    resource_btn.clicar no Botão Pesquisar Registros

Então devo ver a tela: Ambiente (Filtro)  
    resource_cnsAmbiente.Acessar Tela Ambiente (Filtro)
