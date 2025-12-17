*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmAmbiente.robot
Resource        ../../../../resource/app/resource_cnsAmbiente.robot


Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Alterar o Cadastro de um Ambiente.


*** Test Cases ***

Testcase: Alterar o Cadastro de um Ambiente
  [Tags]  ALTER
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Ambiente
  Quando eu visualizar a tela: Consulta de Ambiente
  E clicar no botão: Pesquisar Registros
  E eu preencher o campo Ambiente "TESTE"
  E novamente clicar no botão: Pesquisar Registros
  E clicar no botão: Editar o Registro "1"
  Então devo visualizar a tela: Cadastro de Ambiente
  E preencher o campo Ambiente "abs"
  E preencher o campo Planta "1"
  E preencher o campo Código Ambiente Superior "1"
  #E selecionar um codin no campo Codins 
  E preencher o campo Quantidade Min. de Pessoas "1"
  E preencher o campo Quantidade Max. de Pessoas "40"
  E clicar no botão: Alterar o Registro
  Então devo visualizar a tela: Cadastro de Ambiente


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Ambiente
  resource_mnu.Clicar No Menu Estrutura | Empresa | Ambiente

Quando eu visualizar a tela: Consulta de Ambiente
  resource_cnsAmbiente.Acessar Tela Consulta de Ambiente

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

E eu preencher o campo Ambiente "${AMBIENTE}"
  resource_cnsAmbiente.Preencher o campo Ambiente "${AMBIENTE}"

E novamente clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

E clicar no botão: Editar o Registro "${NUM}"
  resource_btn.Clicar No Botão Editar o Registro "${NUM}"

Então devo visualizar a tela: Cadastro de Ambiente
  resource_frmAmbiente.Acessar Tela Cadastro de Ambiente

E preencher o campo Ambiente "${AMBIENTE}"
  resource_frmAmbiente.Preencher o campo Ambiente "${AMBIENTE}"

E preencher o campo Planta "${PLANTA}"
  resource_frmAmbiente.Preencher o campo Planta "${PLANTA}"

E preencher o campo Código Ambiente Superior "${AMBIENTE_SUP}"
  resource_frmAmbiente.Preencher o campo Código Ambiente Superior "${AMBIENTE_SUP}"

E selecionar um codin no campo Codins 
  resource_frmAmbiente.Selecionar um codin no campo Codins 

E preencher o campo Quantidade Min. de Pessoas "${QUANT_MIN}"
  resource_frmAmbiente.Preencher o campo Quantidade Min. de Pessoas "${QUANT_MIN}"

E preencher o campo Quantidade Max. de Pessoas "${QUANT_MAX}"
  resource_frmAmbiente.Preencher o campo Quantidade Max. de Pessoas "${QUANT_MAX}"

E clicar no botão: Alterar o Registro
  resource_btn.Clicar No Botão Alterar o Registro
