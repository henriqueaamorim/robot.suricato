*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcrachaprovisoriocolaborador.robot
Resource        ../../../../resource/app/resource_cnscolabCracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Colaboradores Crachá (Busca Externa) (Filtro) através da tela Provisório de Colaboradores (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Provisório | Colaborador
  Ao visualizar a tela: Provisório de Colaboradores (Inclusão)
  E clicar no botão: Buscar Dados Externos para Código do Colaborador
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Colaboradores Crachá (Busca Externa) (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Provisório | Colaborador
  resource_mnu.Clicar No Menu Entrada | Provisório | Colaborador

Ao visualizar a tela: Provisório de Colaboradores (Inclusão)
  resource_frmcrachaprovisoriocolaborador.Acessar Tela Provisório de Colaboradores (Inclusão)

E clicar no botão: Buscar Dados Externos para Código do Colaborador
  resource_frmcrachaprovisoriocolaborador.Clicar No Botão Buscar Dados Externos Para Código do Colaborador

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Colaboradores Crachá (Busca Externa) (Filtro)
  resource_cnscolabCracha.Acessar Tela Consulta de Colaboradores Crachá (Busca Externa) (Filtro)
