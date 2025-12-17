*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsRelatorioEPIVisitante.robot
Resource        ../../../../resource/resource_utils.robot


Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***


${SCREENNAME}  Filtro Histórico de EPI por Visitante
${APPNAME}     cnsRelatorioEPIVisitante
${OBJETIVO}    Verificar todos os campos na tela Filtro Histórico de EPI por Visitante


*** Test Cases ***

Testcase: Acessar Tela Filtro Histórico de EPI por Visitante
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Relatórios | Histórico de EPI por Visitante
  Então devo visualizar a tela: Filtro Histórico de EPI por Visitante
  E verificar o campo Empresa    
  E verificar o campo Visitante  
  E verificar o campo EPI  
  E verificar se existe o campo Teste    


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Relatórios | Histórico de EPI por Visitante
  resource_mnu.Clicar no Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Relatórios | Histórico de EPI por Visitante

Então devo visualizar a tela: Filtro Histórico de EPI por Visitante
  resource_cnsRelatorioEPIVisitante.Acessar Tela Filtro Histórico de EPI por Visitante

E verificar o campo Empresa    
  resource_cnsRelatorioEPIVisitante.E verificar o campo Empresa

E verificar o campo Visitante  
  resource_cnsRelatorioEPIVisitante.E verificar o campo Visitante  

E verificar o campo EPI  
  resource_cnsRelatorioEPIVisitante.E verificar o campo EPI  

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"