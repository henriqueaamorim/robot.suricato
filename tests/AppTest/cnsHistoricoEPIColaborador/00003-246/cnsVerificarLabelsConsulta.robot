*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsHistoricoEPIColaborador.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Histórico de EPI por Colaborador (Filtro)
${APPNAME}     cnsHistoricoEPIColaborador 
${OBJETIVO}   Verificar todos as labesl na tela Histórico de EPI por Colaborador (Consulta)

*** Test Cases ***
Testcase: Verificar todos as labesl na tela Histórico de EPI por Colaborador (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI | Histórico de EPI por Colaborador
  Quando ver a tela: Histórico de EPI por Colaborador (Consulta)
  E verificar a label Empresa  
  E verificar a label Tipo Colaborador 
  E verificar a label Matricula   
  E verificar a label Colaborador    
  E verificar a label Data Entrega 
  E verificar a label EPI
  E verificar a label Quantidade
  E verificar a label Status Vencimento 
  E verificar a label Código confirmado
  E verificar se existe o campo Teste


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI | Histórico de EPI por Colaborador
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Histórico de EPI por Colaborador

Quando ver a tela: Histórico de EPI por Colaborador (Consulta)
  resource_cnsHistoricoEPIColaborador.Acessar Tela Histórico de EPI por Colaborador

E verificar a label Empresa  
  resource_cnsHistoricoEPIColaborador.Verificar a label Empresa

E verificar a label Tipo Colaborador 
  resource_cnsHistoricoEPIColaborador.Verificar a label Tipo Colaborador

E verificar a label Matricula   
  resource_cnsHistoricoEPIColaborador.Verificar a label Matricula

E verificar a label Colaborador    
  resource_cnsHistoricoEPIColaborador.Verificar a label Colaborador
  
E verificar a label Data Entrega 
  resource_cnsHistoricoEPIColaborador.Verificar a label Data Entrega

E verificar a label EPI   
  resource_cnsHistoricoEPIColaborador.Verificar a label EPI

E verificar a label Quantidade
  resource_cnsHistoricoEPIColaborador.Verificar a label Quantidade

E verificar a label Status Vencimento 
  resource_cnsHistoricoEPIColaborador.Verificar a label Status Vencimento

E verificar a label Código confirmado
  resource_cnsHistoricoEPIColaborador.Verificar a label Código confirmado

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
