*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmAmbiente.robot
Resource        ../../../../resource/app/resource_cnsAmbiente.robot


Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Cadastrar um Ambiente.


*** Test Cases ***

Testcase: Cadastrar um Ambiente
  [Tags]  REGISTER  246
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Ambiente
  Quando eu visualizar a tela: Consulta de Ambiente
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Cadastro de Ambiente
  E preencher o campo Ambiente "abs"
  E preencher o campo Planta "1"
  E preencher o campo Código Ambiente Superior "1"
  E selecionar um codin no campo Codins 
  E preencher o campo Quantidade Min. de Pessoas "1"
  E preencher o campo Quantidade Max. de Pessoas "40"
  E clicar no botão: Incluir o Registro
  E visualizar a tela: Ambiente


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Ambiente
  resource_mnu.Clicar No Menu Estrutura | Empresa | Ambiente

Quando eu visualizar a tela: Consulta de Ambiente
  resource_cnsAmbiente.Acessar Tela Consulta de Ambiente

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Cadastro de Ambiente
  resource_frmAmbiente.Acessar Tela Cadastro de Ambiente

E preencher o campo Ambiente "${AMBIENTE}"
  resource_frmAmbiente.Preencher o campo Ambiente "${AMBIENTE}"

E preencher o campo Planta "${PLANTA}"
  resource_frmAmbiente.Preencher o campo Planta "${PLANTA}"

E preencher o campo Código Ambiente Superior "${AMBIENTE_SUP}"
  resource_frmAmbiente.Preencher o campo Código Ambiente Superior "${AMBIENTE_SUP}"

E selecionar um codin no campo Codins 
  sleep  2s
  resource_frmAmbiente.Selecionar um codin no campo Codins

E preencher o campo Quantidade Min. de Pessoas "${QUANT_MIN}"
  resource_frmAmbiente.Preencher o campo Quantidade Min. de Pessoas "${QUANT_MIN}"

E preencher o campo Quantidade Max. de Pessoas "${QUANT_MAX}"
  resource_frmAmbiente.Preencher o campo Quantidade Max. de Pessoas "${QUANT_MAX}"

E clicar no botão: Incluir o Registro
  resource_btn.Clicar No Botão Incluir o Registro

E visualizar a tela: Ambiente
  resource_frmAmbiente.Acessar Tela Cadastro de Ambiente