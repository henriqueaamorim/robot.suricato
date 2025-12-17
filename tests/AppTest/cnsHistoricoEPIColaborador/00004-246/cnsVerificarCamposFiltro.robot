*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsHistoricoEPIColaborador.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Histórico de EPI por Colaborador - Filtro
${APPNAME}     cnsHistoricoEPIColaborador 
${OBJETIVO}   Verificar todos os campos na tela: Histórico de EPI por Colaborador (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Histórico de EPI por Colaborador (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI | Histórico de EPI por Colaborador
  Quando ver a tela: Histórico de EPI por Colaborador (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Histórico de EPI por Colaborador (Filtro)
  E verificar o campo Empresa
  E verificar o campo Tipo Colaborador	
  E verificar o campo Matricula	
  E verificar o campo Colaborador
  E verificar o campo Data Entrega	
  E verificar o campo EPI
  E verificar o campo Status Vencimento	
  E verificar se existe o campo Teste


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI | Histórico de EPI por Colaborador
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Histórico de EPI por Colaborador

Quando ver a tela: Histórico de EPI por Colaborador (Consulta)
  resource_cnsHistoricoEPIColaborador.Acessar Tela Histórico de EPI por Colaborador

E clicar no botão: Pesquisar Registros
    resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Histórico de EPI por Colaborador (Filtro)
    resource_cnsHistoricoEPIColaborador.Acessar Tela Histórico de EPI por Colaborador (Filtro)

E verificar o campo Empresa
    resource_cnsHistoricoEPIColaborador.E verificar o campo Empresa

E verificar o campo Tipo Colaborador
    resource_cnsHistoricoEPIColaborador.E verificar o campo Tipo Colaborador 

E verificar o campo Matricula	
    resource_cnsHistoricoEPIColaborador.E verificar o campo Matricula

E verificar o campo Colaborador
    resource_cnsHistoricoEPIColaborador.E verificar o campo Colaborador

E verificar o campo Data Entrega	
    resource_cnsHistoricoEPIColaborador.E verificar o campo Data Entrega 

E verificar o campo EPI
    resource_cnsHistoricoEPIColaborador.E verificar o campo EPI

E verificar o campo Status Vencimento	    
    resource_cnsHistoricoEPIColaborador.E verificar o campo Status Vencimento 

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
