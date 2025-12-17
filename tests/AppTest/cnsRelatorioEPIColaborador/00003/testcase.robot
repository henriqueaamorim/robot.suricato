*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsRelatorioEPIColaborador.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Filtro Histórico de EPI por Colaborador
${APPNAME}  cnsRelatorioEPIColaborador
${OBJETIVO}   Verificar todos os campos na tela Filtro Histórico de EPI por Colaborador

*** Test Cases ***

Testcase: Verificar todos os campos na tela Filtro Histórico de EPI por Colaborador
  [Tags]  VERIFY 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Relatórios | Histórico de EPI por Colaborador
  Então devo visualizar a tela: Filtro Histórico de EPI por Colaborador
  E verificar o campo Empresa
  E verificar o campo Colaborador       
  E verificar o campo Matricula    
  E verificar o campo Pessoa 
  E verificar o campo EPI      
  E verificar o campo Centro de Custo     
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Relatórios | Histórico de EPI por Colaborador
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Relatórios | Histórico de EPI por Colaborador

Então devo visualizar a tela: Filtro Histórico de EPI por Colaborador
  resource_cnsRelatorioEPIColaborador.Acessar Tela Filtro Histórico de EPI por Colaborador

E verificar o campo Empresa
  resource_cnsRelatorioEPIColaborador.E verificar o campo Empresa

E verificar o campo Colaborador       
  resource_cnsRelatorioEPIColaborador.E verificar o campo Colaborador       

E verificar o campo Matricula    
  resource_cnsRelatorioEPIColaborador.E verificar o campo Matricula 

E verificar o campo Pessoa 
  resource_cnsRelatorioEPIColaborador.E verificar o campo Pessoa 

E verificar o campo EPI      
  resource_cnsRelatorioEPIColaborador.E verificar o campo EPI    


E verificar o campo Centro de Custo
  resource_cnsRelatorioEPIColaborador.E verificar o campo Centro de Custo

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
