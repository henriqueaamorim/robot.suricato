*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrautorizacaoacessoimprensa.robot
Resource        ../../../../resource/app/resource_frmautorizacaoacessoimprensa.robot
Resource        ../../../../resource/app/resource_cnscadastroimprensa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos da tela Consulta de Cadastro de Candidato (Busca Externa) através da tela Autorização de Acesso Candidato (Inclusão)

*** Test Cases ***

Testcase: Preencher todos os campos da tela Consulta de Cadastro de Candidato (Busca Externa) através da tela Autorização de Acesso Candidato (Inclusão)
  [Tags]  REGISTER  POLYVALENT 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Candidato | Autorização Acesso
  Quando eu visualiza a tela: Autorização de Acesso da Candidato
  E clicar no botão: Novo Item
  Então devo ver a tela: Autorização de Acesso Candidato (Inclusão)
  E clicar no botão: Buscar Dados Externos para Candidato
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Cadastro de Candidato (Busca Externa)
  E preencher o campo Matrícula "ok"
  E preencher o campo Nome "ok"

*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Autorização Acesso
  resource_mnu.Clicar No Menu Identificação | Candidato | Autorização Acesso

Quando eu visualiza a tela: Autorização de Acesso da Candidato
  resource_ctrautorizacaoacessoimprensa.Acessar Tela Autorização de Acesso da Candidato

E clicar no botão: Novo Item
  resource_btn.Clicar No Botão Novo Item

Então devo ver a tela: Autorização de Acesso Candidato (Inclusão)
  resource_frmautorizacaoacessoimprensa.Acessar Tela Autorização de Acesso Candidato (Inclusão)

E clicar no botão: Buscar Dados Externos para Candidato
  resource_frmautorizacaoacessoimprensa.Clicar No Botão Buscar Dados Externos Para Candidato

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Cadastro de Candidato (Busca Externa)
    resource_cnscadastroimprensa.Acessar Tela Consulta de Cadastro de Candidato (Busca Externa)

E preencher o campo Matrícula "${MATRÍCULA}"
  resource_cnscadastroimprensa.Preencher o campo Matrícula "${MATRÍCULA}"

E preencher o campo Nome "${NOME}"
  resource_cnscadastroimprensa.Preencher o campo Nome "${NOME}"
