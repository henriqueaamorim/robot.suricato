*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frm_tbcodinLocalAcess.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Alterar o Cadastro de uma Área de Risco - Codin.


*** Test Cases ***

Testcase: Alterar o Cadastro de uma Área de Risco - Codin
  [Tags]  ALTER
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Codin
  Então devo ver a tela: Área de Risco - Codin
  E preencher o campo Área de Risco "1"
  E preencher o campo Planta "1"
  E preencher o campo Codin "2"
  E clicar no botão: Alterar o Registro
  Então devo ver a tela: Área de Risco - Codin


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Codin
  resource_mnu.Clicar No Menu Estrutura | Empresa | Area de Risco | Codin

Então devo ver a tela: Área de Risco - Codin
  resource_frm_tbcodinLocalAcess.Acessar Tela Área de Risco - Codin

E clicar no botão: Abrir um Novo Registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

E preencher o campo Área de Risco "${AREA}"
  resource_frm_tbcodinLocalAcess.Preencher o campo Área de Risco "${AREA}"

E preencher o campo Planta "${PLANTA}"
  resource_frm_tbcodinLocalAcess.Preencher o campo Planta "${PLANTA}"

E preencher o campo Codin "${CODIN}"
  resource_frm_tbcodinLocalAcess.Preencher o campo Codin "${CODIN}"

E clicar no botão: Alterar o Registro
  resource_btn.Clicar no Botão Alterar o Registro