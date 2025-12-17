*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrautorizacaoacessoimprensa.robot
Resource        ../../../../resource/app/resource_frmautorizacaoacessoimprensa.robot
Resource        ../../../../resource/app/resource_cnsmotivoacessoimprensa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Consulta de Motivos de Acesso de Candidato (Busca Externa) através da tela Autorização de Acesso Candidato (Inclusão)

*** Test Cases ***
Testcase: Acessar Tela: Consulta de Motivos de Acesso de Candidato (Busca Externa) através da tela Autorização de Acesso Candidato (Inclusão)
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Candidato | Autorização Acesso
  Quando eu visualizar a tela: Autorização de Acesso da Candidato
  E clicar no botão: Novo Item
  Então devo ver a tela: Autorização de Acesso Candidato (Inclusão)
  Ao clicar no botão: Buscar Dados Externos para Código do Acesso
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Motivos de Acesso de Candidato (Busca Externa)


*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Autorização Acesso
  resource_mnu.Clicar No Menu Identificação | Candidato | Autorização Acesso

Quando eu visualizar a tela: Autorização de Acesso da Candidato
  resource_ctrautorizacaoacessoimprensa.Acessar Tela Autorização de Acesso da Candidato

E clicar no botão: Novo Item
  resource_btn.Clicar No Botão Novo Item

Então devo ver a tela: Autorização de Acesso Candidato (Inclusão)
  resource_frmautorizacaoacessoimprensa.Acessar Tela Autorização de Acesso Candidato (Inclusão)

Ao clicar no botão: Buscar Dados Externos para Código do Acesso
  resource_frmautorizacaoacessoimprensa.Clicar No Botão Buscar Dados Externos Para Código do Acesso

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Motivos de Acesso de Candidato (Busca Externa)
  resource_cnsmotivoacessoimprensa.Acessar Tela Consulta de Motivos de Acesso de Candidato (Busca Externa)
