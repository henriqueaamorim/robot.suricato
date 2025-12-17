*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmbeneficios.robot
Resource        ../../../../resource/app/resource_cnsbeneficioscad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Excluir um Benefício.


*** Test Cases ***

Testcase: Excluir um Benefício
  [Tags]  DELETE  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Benefício | Cadastro de Benefício
  Então devo visualizar a tela: Benefícios (Atualização)
  E clicar no botão: Pesquisar
  E clicar no botão: Pesquisar Registros
  E preencher o campo Código do Benefício "1"
  E novamente clicar no botão: Pesquisar Registros
  E então clicar no botão: Editar o Registro "1"
  E clicar no botão: Apagar
  Então devo visualizar a tela: Benefícios (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Registro | Benefício | Cadastro de Benefício
  resource_mnu.Clicar No Menu Registro | Benefício | Cadastro de Benefício

Então devo visualizar a tela: Benefícios (Atualização)
  resource_frmbeneficios.Acessar Tela Benefícios (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

E preencher o campo Código do Benefício "${COD}"
  resource_cnsbeneficioscad.Preencher o campo Código do Benefício "${COD}"

E novamente clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

E então clicar no botão: Editar o Registro "${NUM}"
  resource_btn.Clicar No Botão Editar o Registro "${NUM}"

E clicar no botão: Apagar
  resource_btn.Clicar No Botão Apagar