*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsRelatorioEPIVisitante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta Histórico de EPI por Visitante
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Relatórios | Histórico de EPI por Visitante
  Quando eu visualizar a tela: Filtro Histórico de EPI por Visitante
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Consulta Histórico de EPI por Visitante


*** Keywords ***

Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Relatórios | Histórico de EPI por Visitante
  resource_mnu.Clicar no Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Relatórios | Histórico de EPI por Visitante

Quando eu visualizar a tela: Filtro Histórico de EPI por Visitante
  resource_cnsRelatorioEPIVisitante.Acessar Tela Filtro Histórico de EPI por Visitante

E clicar no botão: Pesquisar registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Consulta Histórico de EPI por Visitante
  resource_cnsRelatorioEPIVisitante.Acessar Tela Consulta Histórico de EPI por Visitante
