*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrautorizacaoacessoimprensa.robot
Resource        ../../../../resource/app/resource_frmautorizacaoacessoimprensa.robot
Resource        ../../../../resource/app/resource_cnsEstruturaOrganograma.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Estrutura de Organograma (Busca Externa) através da tela Autorização de Acesso Candidato (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Candidato | Autorização Acesso
  Quando eu visualizar a tela: Autorização de Acesso da Candidato
  E clicar no botão: Novo Item
  Então devo ver a tela: Autorização de Acesso Candidato (Inclusão)
  E clicar no botão: Buscar Dados Externos para Tabela do Organograma
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Estrutura de Organograma (Busca Externa)


*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Autorização Acesso
  resource_mnu.Clicar No Menu Identificação | Candidato | Autorpização Acesso

Quando eu visualizar a tela: Autorização de Acesso da Candidato
  resource_ctrautorizacaoacessoimprensa.Acessar Tela Autorização de Acesso da Candidato

E clicar no botão: Novo Item
  resource_btn.Clicar No Botão Novo Item

Então devo ver a tela: Autorização de Acesso Candidato (Inclusão)
  resource_frmautorizacaoacessoimprensa.Acessar Tela Autorização de Acesso Candidato (Inclusão)

E clicar no botão: Buscar Dados Externos para Tabela do Organograma
  resource_frmautorizacaoacessoimprensa.Clicar No Botão Buscar Dados Externos Para Tabela do Organograma

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Estrutura de Organograma (Busca Externa)
  resource_cnsEstruturaOrganograma.Acessar Tela Consulta de Estrutura de Organograma (Busca Externa)
