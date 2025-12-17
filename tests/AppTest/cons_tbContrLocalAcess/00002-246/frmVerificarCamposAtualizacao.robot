*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cons_tbContrLocalAcesso.robot
Resource        ../../../../resource/app/resource_cons_tbContrLocalAcess.robot
Resource        ../../../../resource/app/resource_cons_tbContrLocalAcess.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador  
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.
${SCREENNAME}  Área de Risco - Painel de Controle
${APPNAME}  

*** Test Cases ***

Testcase: Acessar Tela Área de Risco - Painel de Controle
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Controle
  Ao ver a tela: Área de Risco - Painel de Controle
  E clicar no botão: Editar o registro "1"
  Então devo visualizar a tela: Área de Risco
  E verificar o campo Colaborador
  E verificar o campo Nome
  E verificar o campo Crachá
  E verificar o campo Endereço IP - Painel
  E verificar o campo Área de Risco
  E verificar o campo Entrada
  E verificar o campo Saída
  E verificar o campo Status
  E verificar se existe o campo Teste


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Controle
  resource_mnu.Clicar No Menu Estrutura | Empresa | Area de Risco | Controle

Ao ver a tela: Área de Risco - Painel de Controle
  resource_cons_tbContrLocalAcesso.Acessar Tela Área de Risco - Painel de Controle

E clicar no botão: Editar o registro "${NUM}"
  resource_btn.Clicar No Botão Editar o registro "${NUM}"

Então devo visualizar a tela: Área de Risco
  resource_cons_tbContrLocalAcess.Acessar Tela Área de Risco

E verificar o campo Colaborador
  resource_cons_tbContrLocalAcess.Verificar o campo Colaborador

E verificar o campo Nome
  resource_cons_tbContrLocalAcess.Verificar o campo Nome

E verificar o campo Crachá
  resource_cons_tbContrLocalAcess.Verificar o campo Crachá

E verificar o campo Endereço IP - Painel
  resource_cons_tbContrLocalAcess.Verificar o campo Endereço IP - Painel

E verificar o campo Área de Risco
  resource_cons_tbContrLocalAcess.Verificar o campo Área de Risco

E verificar o campo Entrada
  resource_cons_tbContrLocalAcess.Verificar o campo Entrada

E verificar o campo Saída
  resource_cons_tbContrLocalAcess.Verificar o campo Saída

E verificar o campo Status
  resource_cons_tbContrLocalAcess.Verificar o campo Status

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"

