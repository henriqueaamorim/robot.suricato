*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsHistoricoEPIColaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Histórico de EPI por Colaborador
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Histórico de EPI por Colaborador
  Ao ver a tela: Histórico de EPI por Colaborador - Filtro
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Histórico de EPI por Colaborador

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Histórico de EPI por Colaborador
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Histórico de EPI por Colaborador

Ao ver a tela: Histórico de EPI por Colaborador - Filtro
  resource_cnsHistoricoEPIColaborador.Acessar Tela Histórico de EPI por Colaborador - Filtro

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Histórico de EPI por Colaborador
  resource_cnsHistoricoEPIColaborador.Acessar Tela Histórico de EPI por Colaborador
