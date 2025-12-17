*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsHistoricoEPIColaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Histórico de EPI por Colaborador (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Histórico de EPI por Colaborador (Filtro)
  [Tags]  PRINT  POPULATED   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI | Histórico de EPI por Colaborador
  Quando ver a tela: Histórico de EPI por Colaborador (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Histórico de EPI por Colaborador (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI | Histórico de EPI por Colaborador
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Histórico de EPI por Colaborador

Quando ver a tela: Histórico de EPI por Colaborador (Consulta)
  resource_cnsHistoricoEPIColaborador.Acessar Tela Histórico de EPI por Colaborador

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Histórico de EPI por Colaborador (Filtro)
  resource_cnsHistoricoEPIColaborador.Acessar Tela Histórico de EPI por Colaborador (Filtro)
