*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frm_tbLocal_Acess.robot
Resource    ../../../../resource/app/resource_frmPortarias.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Alterar uma Área de Risco.


*** Test Cases ***

Testcase: Alterar o Cadastro de uma Área de Risco
  [Tags]  ALTER  249
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Cadastro
  Então devo ver a tela: Área de Risco - Cadastro
  E preencher o campo Descrição "Aréa interditada"
  E preencher o campo Tempo Limite Dentro "30"
  E preencher o campo Time-Out Saída "20"
  E preencher o campo Endereço IP - Painel "192.168.000.056"
  #E preencher o campo Pré Mensagem de Exibição ""
  #E preencher o campo Pós Mensagem de Exibição ""
  #E preencher o campo Tempo de Visualização (Segundos) ""
  E clicar no botão: Alterar o Registro
  Então devo ver a tela: Área de Risco - Cadastro



*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Cadastro
  resource_mnu.Clicar No Menu Estrutura | Empresa | Area de Risco | Cadastro

Então devo ver a tela: Área de Risco - Cadastro
  resource_frm_tbLocal_Acess.Acessar Tela Área de Risco - Cadastro

E preencher o campo Descrição "${DESCRICAO}"
  resource_frm_tbLocal_Acess.Preencher o campo Descrição "${DESCRICAO}"

E preencher o campo Tempo Limite Dentro "${TEMPO}"
  resource_frm_tbLocal_Acess.Preencher o campo Tempo Limite Dentro "${TEMPO}"

E preencher o campo Time-Out Saída "${TIME_OUT}"
  resource_frm_tbLocal_Acess.Preencher o campo Time-Out Saída "${TIME_OUT}"

E preencher o campo Endereço IP - Painel "${IP}"
  resource_frm_tbLocal_Acess.Preencher o campo Endereço IP - Painel "${IP}"

E preencher o campo Pré Mensagem de Exibição "${MENSAGEM}"
  resource_frm_tbLocal_Acess.Preencher o campo Pré Mensagem de Exibição "${MENSAGEM}"

E preencher o campo Pós Mensagem de Exibição "${MENSAGEM}"
  resource_frm_tbLocal_Acess.Preencher o campo Pós Mensagem de Exibição "${MENSAGEM}"

E preencher o campo Tempo de Visualização (Segundos) "${TEMPO}"
  resource_frm_tbLocal_Acess.Preencher o campo Tempo de Visualização (Segundos) "${TEMPO}"

E clicar no botão: Alterar o Registro
  resource_btn.Clicar no Botão Alterar o Registro

