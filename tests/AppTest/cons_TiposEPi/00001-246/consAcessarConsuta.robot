*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cons_TiposEPi.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Cadastro Tipos Equipamento de Proteção Individual (Consulta)


*** Test Cases ***
Testcase: Acessar Tela: Cadastro Tipos Equipamento de Proteção Individual (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI | Tipos de EPI
  Então devo ver a tela: Cadastro Tipos Equipamento de Proteção Individual (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI | Tipos de EPI
   resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de Tipos de EPI

Então devo ver a tela: Cadastro Tipos Equipamento de Proteção Individual (Consulta)
   resource_cons_TiposEPi.Acessar Tela Consulta Cadastro Tipos Equipamento de Proteção Individual
