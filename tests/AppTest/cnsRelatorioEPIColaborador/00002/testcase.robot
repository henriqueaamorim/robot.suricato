*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsRelatorioEPIColaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Histórico de EPI por Colaborador
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Relatórios | Histórico de EPI por Colaborador
  Quando eu visualizar a tela: Filtro Histórico de EPI por Colaborador
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Consulta de Histórico de EPI por Colaborador



*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Relatórios | Histórico de EPI por Colaborador
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Relatórios | Histórico de EPI por Colaborador

Quando eu visualizar a tela: Filtro Histórico de EPI por Colaborador
  resource_cnsRelatorioEPIColaborador.Acessar Tela Filtro Histórico de EPI por Colaborador

E clicar no botão: Pesquisar registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Consulta de Histórico de EPI por Colaborador
  resource_cnsRelatorioEPIColaborador.Acessar Tela Consulta de Histórico de EPI por Colaborador
