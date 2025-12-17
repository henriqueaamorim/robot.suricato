*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cons_TiposEPi.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta Cadastro Tipos Equipamento de Proteção Individual
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de Tipos de EPI
  Então devo ver a tela: Consulta Cadastro Tipos Equipamento de Proteção Individual


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de Tipos de EPI
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de Tipos de EPI

Então devo ver a tela: Consulta Cadastro Tipos Equipamento de Proteção Individual
  resource_cons_TiposEPi.Acessar Tela Consulta Cadastro Tipos Equipamento de Proteção Individual
