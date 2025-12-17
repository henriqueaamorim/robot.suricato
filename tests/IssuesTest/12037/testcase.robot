*** Settings ***
Resource        ../../../resource/resource_login.robot
Resource        ../../../resource/app/resource_frmColetores.robot
Resource        ../../../resource/app/resource_cnsColetorescad.robot
Resource        ../../../resource/app/resource_frmcargos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Reproduzir o erro da tarefa #12037 do Redmine


*** Test Cases ***

Testcase: Reproduzir o erro da tarefa #12037 do Redmine
  [Tags]  ISSUES  REGISTER  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Cadastro de Codin
  Quando eu visualizar a tela: Consulta de Codins
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Cadastro de Codins (Inclusão)
  E preencher o campo Código da Planta "1"
  E preencher o campo Código do Codin "667"
  E preencher o campo Descrição "Codin Control Face"
  E preencher o campo Modelo do Codin "40"
  E preencher o campo Código da Portaria "1"
  E preencher o campo Gateway "1"
  E preencher o campo Endereço IP "172.006.004.004"
  E então clicar no botão: Incluir o Registro
  Então eu devo visualizar o erro

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Cadastro de Codin
  resource_mnu.Clicar No Menu Dispositivo | Codin | Cadastro de Codin

Quando eu visualizar a tela: Consulta de Codins
  resource_cnsColetorescad.Acessar Tela Consulta de Codins

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Cadastro de Codins (Inclusão)
  resource_frmColetores.Acessar Tela Cadastro de Codins (Inclusão)

E preencher o campo Código da Planta "${COD_PLANTA}"
  resource_frmColetores.Preencher o campo Código da Planta "${COD_PLANTA}"

E preencher o campo Código do Codin "${COD_CODIN}"
  resource_frmColetores.Preencher o campo Código do Codin "${COD_CODIN}"

E preencher o campo Descrição "${DESCRICAO}"
  resource_frmColetores.Preencher o campo Descrição "${DESCRICAO}"

E preencher o campo Modelo do Codin "${CODIN}"
  resource_frmColetores.Preencher o campo Modelo do Codin "${CODIN}"

E preencher o campo Código da Portaria "${COD_PORTARIA}"
  resource_frmColetores.Preencher o campo Código da Portaria "${COD_PORTARIA}"

E preencher o campo Gateway "${GATEWAY}"
  resource_frmColetores.Preencher o campo Gateway "${GATEWAY}"

E preencher o campo Endereço IP "${IP}"
  resource_frmColetores.Preencher o campo Endereço IP "${IP}"

E então clicar no botão: Incluir o Registro
  resource_btn.Clicar No Botão Incluir o Registro

Então eu devo visualizar o erro
  resource_frmColetores.Registrar erro
