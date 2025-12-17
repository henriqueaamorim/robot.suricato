*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsContratos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Contrato (Filtro)


*** Test Cases ***
Testcase: Acessar Tela: Contrato (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa Terceira | Contrato
  Quando ver a tela: Contrato (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo ver a tela: Contrato (Filtro)


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa Terceira | Contrato
  resource_mnu.Clicar No Menu Estrutura | Empresa Terceira | Contratos

Quando ver a tela: Contrato (Consulta)
  resource_cnsContratos.Acessar Tela Consulta de Contratos

E clicar no botão: Pesquisar Registro
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo ver a tela: Contrato (Filtro)
  resource_cnsContratos.Acessar Tela Consulta de Contratos (Filtro)