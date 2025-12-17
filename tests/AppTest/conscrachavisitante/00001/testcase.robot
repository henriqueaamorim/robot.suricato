*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrEntradaVisitanteComCapFoto.robot
Resource        ../../../../resource/app/resource_conscrachavisitante.robot
Resource        ../../../../resource/app/resource_ctrentradavisitante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Crachás de Visitantes (Consulta) (Busca Externa) através da tela Entrada de Visitante
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitantes com Captura de Fotos
  Ao visualizar a tela: Entrada de Visitante
  E clicar no botão: Buscar Dados Externos para Crachá
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Crachás de Visitantes (Consulta) (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitantes com Captura de Fotos
  resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Visitantes com Captura de Fotos

Ao visualizar a tela: Entrada de Visitante
  resource_ctrentradavisitante.Acessar Tela Entrada de Visitante (Com Captura de Foto)

E clicar no botão: Buscar Dados Externos para Crachá
  resource_ctrentradavisitante.Clicar No Botão Buscar Dados Externos Para Crachá

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Crachás de Visitantes (Consulta) (Busca Externa)
  resource_conscrachavisitante.Acessar Tela Consulta de Crachás de Visitantes (Consulta) (Busca Externa)
