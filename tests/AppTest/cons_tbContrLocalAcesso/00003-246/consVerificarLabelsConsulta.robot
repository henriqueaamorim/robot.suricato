*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cons_tbContrLocalAcesso.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Área de Risco - Painel de Controle (Consulta)
${SCREENNAME}  Painel de Controle
${APPNAME}     cons_tbContrLocalAcesso


*** Test Cases ***
Testcase: Verificar todas as labels na tela: Área de Risco - Painel de Controle (Consulta)
  [Tags]  PRINT  POPULATED    246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Painel de Controle
  Quando ver a tela: Área de Risco - Painel de Controle (Consulta)
  Então devo verificar a label: Matricula
  E verifcar a label: Nome
  E verifcar a label: Área de Risco
  E verifcar a label: Entrada
  E verifcar a label: Saída
  E verifcar a label: Status
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Painel de Controle
  resource_mnu.Clicar No Menu Estrutura | Empresa | Area de Risco | Painel de Controle

Quando ver a tela: Área de Risco - Painel de Controle (Consulta)
  resource_cons_tbContrLocalAcesso.Acessar Tela Área de Risco - Painel de Controle

Então devo verificar a label: Matricula
    resource_cons_tbContrLocalAcesso.Verificar a label Matricula

E verifcar a label: Nome
    resource_cons_tbContrLocalAcesso.Verificar a label Nome

E verifcar a label: Área de Risco
    resource_cons_tbContrLocalAcesso.Verificar a label Área de Risco

E verifcar a label: Entrada
    resource_cons_tbContrLocalAcesso.Verificar a label Entrada

E verifcar a label: Saída
    resource_cons_tbContrLocalAcesso.Verificar a label Saída

E verifcar a label: Status
    resource_cons_tbContrLocalAcesso.Verificar a label Status

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"     