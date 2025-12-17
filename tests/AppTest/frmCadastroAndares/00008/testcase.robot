*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmCadastroAndares.robot
Resource        ../../../../resource/app/resource_consAndares.robot
Resource        ../../../../resource/app/resource_consPesquisaTorres.robot
Resource        ../../../../resource/app/resource_frmCadastroTorres.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Alterar o Cadastro de um Andar.


*** Test Cases ***

Testcase: Alterar o Cadastro de um Andar
  [Tags]  ALTER 246
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Elevador
  Ao ver a tela: Consulta de Cadastro de Torres
  E clicar no botão: Editar o Registro "1"  
  Então Devo Visualizar a Tela Cadastro de Torres (Atualização)
  Clicar na aba Andar
  Clicar No Botão Editar Esta Linha
  E preencher o campo Descrição "Nova Descrição"
  Clicar No Botão Atualizar Esta Linha 
  E Clicar No Botão: Gravar o registro
  Então Devo Visualizar a Tela Cadastro de Torres (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Elevador
  resource_mnu.Clicar No Menu Estrutura | Elevador

Ao ver a tela: Consulta de Cadastro de Torres
  resource_consPesquisaTorres.Acessar Tela Consulta de Cadastro de Torres

E clicar no botão: Editar o Registro "${NUM}"
  resource_btn.Clicar No Botão Editar o Registro "${NUM}"

E clicar na aba Andar
  sleep  2s
  resource_frmCadastroAndares.Clicar na aba Andar  

Clicar No Botão Editar Esta Linha
  resource_btn.Clicar No Botão Editar Esta Linha

E preencher o campo Descrição "${DESCRICAO}"
  sleep  2s
  resource_frmCadastroAndares.Preencher o campo Descrição "${DESCRICAO}"

Clicar No Botão Atualizar Esta Linha 
  resource_btn.Clicar No Botão Atualizar Esta Linha 
  
E Clicar No Botão: Gravar o registro
  Mudar Frame Aplicação "mnu_iframe"
  resource_btn.Clicar No Botão Gravar o Registro

Então devo visualizar a tela: Cadastro de Andares
  resource_frmCadastroAndares.Acessar Tela Cadastro de Andares

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

E preencher o campo Código "${COD}"
  resource_consAndares.Preencher o campo Código "${COD}"

E clicar novamente no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior) 

E clicar no botão: Alterar o Registro
  resource_btn.Clicar No Botão Alterar o Registro (Inferior)

Então devo visualizar a tela: Cadastro de Torres
  resource_frmCadastroTorres.Acessar Tela Cadastro de Torres

Então Devo Visualizar a Tela Cadastro de Torres (Atualização)
  resource_frmCadastroTorres.Acessar Tela Cadastro de Torres (Atualização)