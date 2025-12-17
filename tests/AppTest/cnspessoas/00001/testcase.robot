*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcadastroocorrencia.robot
Resource        ../../../../resource/app/resource_cnspessoas.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Busca de Pessoas (Busca Externa) através da tela Cadastro de Ocorrências (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Ocorrência | Cadastro
  Ao visualizar a tela: Cadastro de Ocorrências (Atualização)
  E clicar no botão: Buscar Dados Externos para Cód. Pessoa
  Então o navegador deve exibir uma nova janela e devo clicar no botão Pesquisar
  Então devo visualizar a tela: Busca de Pessoas (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Registro | Ocorrência | Cadastro
  resource_mnu.Clicar No Menu Registro | Ocorrência | Cadastro

Ao visualizar a tela: Cadastro de Ocorrências (Atualização)
  resource_frmcadastroocorrencia.Acessar Tela Cadastro de Ocorrências (Atualização)

E clicar no botão: Buscar Dados Externos para Cód. Pessoa
  resource_frmcadastroocorrencia.Clicar No Botão Buscar Dados Externos Para Cód. Pessoa

Então o navegador deve exibir uma nova janela e devo clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Busca de Pessoas (Busca Externa)
  resource_cnspessoas.Acessar Tela Busca de Pessoas (Busca Externa)
