*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frm_tbColab_LocalAcess.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Cadastrar uma Área de Risco - Colaborador.


*** Test Cases ***

Testcase: Cadastrar uma Área de Risco - Colaborador
  [Tags]  REGISTER  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Colaborador
  Então devo ver a tela: Área de Risco - Colaborador
  E clicar no botão: Abrir um Novo Registro
  E preencher o campo Colaborador "1"
  E preencher o campo Área de Risco "1"
  E clicar no botão: Incluir o Registro
  Então devo ver a tela: Área de Risco - Colaborador

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Colaborador
  resource_mnu.Clicar No Menu Estrutura | Empresa | Area de Risco | Colaborador

Então devo ver a tela: Área de Risco - Colaborador
  resource_frm_tbColab_LocalAcess.Acessar Tela Área de Risco - Colaborador

E clicar no botão: Abrir um Novo Registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

E preencher o campo Colaborador "${COLAB}"
  resource_frm_tbColab_LocalAcess.Preencher o campo Colaborador "${COLAB}"

E preencher o campo Área de Risco "${AREA}"
  resource_frm_tbColab_LocalAcess.Preencher o campo Área de Risco "${AREA}"

E clicar no botão: Incluir o Registro
  resource_btn.Clicar no Botão Incluir o Registro