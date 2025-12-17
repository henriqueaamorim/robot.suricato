*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmCadastroAndares.robot
Resource        ../../../../resource/app/resource_consAndares.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Alterar o Cadastro de um Andar.


*** Test Cases ***

Testcase: Alterar o Cadastro de um Andar
  [Tags]  ALTER
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Configuração Elevadores | Cadastro de Andares
  Quando eu visualizar a tela: Consulta de Cadastro de Andares
  E clicar no botão: Pesquisar Registros
  E preencher o campo Código "1"
  E clicar novamente no botão: Pesquisar Registros
  E clicar no botão: Editar o Registro "1" 
  Então devo visualizar a tela: Cadastro de Andares
  E preencher o campo Descrição "Nova Descrição"
  E clicar no botão: Alterar o Registro
  Então devo visualizar a tela: Cadastro de Andares

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Configuração Elevadores | Cadastro de Andares
  resource_mnu.Clicar No Menu Estrutura | Configuração Elevadores | Cadastro de Andares

Quando eu visualizar a tela: Consulta de Cadastro de Andares
  resource_consAndares.Acessar Tela Consulta de Cadastro de Andares

E clicar no botão: Editar o Registro "${NUM}"
  resource_btn.Clicar No Botão Editar o Registro "${NUM}"

Então devo visualizar a tela: Cadastro de Andares
  resource_frmCadastroAndares.Acessar Tela Cadastro de Andares

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

E preencher o campo Código "${COD}"
  resource_consAndares.Preencher o campo Código "${COD}"

E clicar novamente no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior) 

E preencher o campo Descrição "${ALTERAR}"
  resource_frmCadastroAndares.Preencher o campo Descrição "${ALTERAR}"

E clicar no botão: Alterar o Registro
  resource_btn.Clicar No Botão Alterar o Registro (Inferior)