*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsCadastroEPI.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos da tela Cadastro de EPI

*** Test Cases ***

Testcase: Preencher todos os campos da tela Cadastro de EPI
  [Tags]  REGISTER  POLYVALENT 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI
  Então devo ver a tela: Cadastro de EPI
  E preencher o campo Descrição "ok"
  E selecionar uma opção no campo Tipo "LUVAS" 


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI

Então devo ver a tela: Cadastro de EPI
  resource_cnsCadastroEPI.Acessar Tela Cadastro de EPI

E preencher o campo Descrição "${DESCRIÇÃO}"
  resource_cnsCadastroEPI.Preencher o campo Descrição "${DESCRIÇÃO}"

E selecionar uma opção no campo Tipo "${TIPO}"
  resource_cnsCadastroEPI.Selecionar uma opção no campo Tipo "${TIPO}"
