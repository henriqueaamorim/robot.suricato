*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consReprocessaMarcacaoOrfa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}  Acessar Tela Reprocessamento de Marcações Orfãs REP (Consulta)

*** Test Cases ***
Testcase: Acessar Tela Reprocessamento de Marcações Orfãs REP (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Controle | Comando | Reprocessamento de Marcações Orfãs REP
  Quando visualizar a tela: Reprocessamento de Marcações Orfãs REP (Filtro)
  Então devo preencher o campo Data "25/02/2022"
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Reprocessamento de Marcações Orfãs REP (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Controle | Comando | Reprocessamento de Marcações Orfãs REP
  resource_mnu.Clicar No Menu Controle | Comando | Reprocessamento de Marcações Orfãs REP

Quando visualizar a tela: Reprocessamento de Marcações Orfãs REP (Filtro)
  resource_consReprocessaMarcacaoOrfa.Acessar Tela Reprocessamento de Marcações Orfãs REP

Então devo preencher o campo Data "${DIA}/${MES}/${ANO}"
  resource_consReprocessaMarcacaoOrfa.Preencher o campo Data Inicial "${DIA}/${MES}/${ANO}"

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Reprocessamento de Marcações Orfãs REP (Consulta)
  resource_consReprocessaMarcacaoOrfa.Acessar Tela Reprocessamento de Marcações Orfãs REP (Resultado)
