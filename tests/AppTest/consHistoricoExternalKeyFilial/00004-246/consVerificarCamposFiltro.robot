*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consHistoricoExternalKeyFilial.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${OBJETIVO}    Verificar todas os campos na tela: Histórico de Codin por Filial (Filtro)
${SCREENNAME}  Histórico de Codin por Filial
${APPNAME}     consHistoricoExternalKeyFilial

*** Test Cases ***
Testcase: Verificar todas os campos na tela: Histórico de Codin por Filial (Filtro)
  [Tags]  VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Histórico de Codin por Filial
  Quando visualizar a tela: Histórico de Codin por Filial (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo visualizar a tela: Histórico de Codin por Filial (Filtro)
  E verficar o campo: Código da Filial	
  E verficar o campo: Razão Social	
  E verficar o campo: Codin
  E verficar o campo: Descrição	
  E verficar o campo: Chave Externa	
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Histórico de Codin por Filial
  resource_mnu.Clicar No Menu Dispositivo | Codin | Histórico de Codin por Filial

Quando visualizar a tela: Histórico de Codin por Filial (Consulta)
  resource_consHistoricoExternalKeyFilial.Acessar Tela Consulta de Histórico de Codin por Filial

E clicar no botão: Pesquisar Registro
    resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Histórico de Codin por Filial (Filtro)
    resource_consHistoricoExternalKeyFilial.Acessar Tela Consulta de Histórico de Codin por Filial - Filtro  

E verficar o campo: Código da Filial	
    resource_consHistoricoExternalKeyFilial.Verificar o campo Código da Filial

E verficar o campo: Razão Social	
    resource_consHistoricoExternalKeyFilial.Verificar o campo Razão Social

E verficar o campo: Codin
    resource_consHistoricoExternalKeyFilial.Verificar o campo Codin

E verficar o campo: Descrição	
    resource_consHistoricoExternalKeyFilial.Verificar o campo Descrição

E verficar o campo: Chave Externa	
    resource_consHistoricoExternalKeyFilial.Verificar o campo Chave Externa

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
