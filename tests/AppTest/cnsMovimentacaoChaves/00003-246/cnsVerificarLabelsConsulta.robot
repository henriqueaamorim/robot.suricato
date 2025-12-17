*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsMovimentacaoChaves.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Movimentação de Chave (Consulta)
${SCREENNAME}  Movimentação de Chave
${APPNAME}     cnsMovimentacaoChaves

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Movimentação de Chave (Consulta)
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Chave | Movimentação de Chave
  Quando visualizar a tela: Movimentação de Chave (Consulta)
  Então devo verificar a label: Chave
  E verificar a label: Data Retirada
  E verificar a label: Hora Retirada
  E verificar a label: Colaborador
  E verificar a label: Data Devolução
  E verificar a label: Hora Devolução
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Registro | Chave | Movimentação de Chave
  resource_mnu.Clicar No Menu Registro | Chave | Movimentação de Chave

Quando visualizar a tela: Movimentação de Chave (Consulta)
  resource_cnsMovimentacaoChaves.Acessar Tela Movimentação de Chave

Então devo verificar a label: Chave
  resource_cnsMovimentacaoChaves.Verificar a label: Chave

E verificar a label: Data Retirada
  resource_cnsMovimentacaoChaves.Verificar a label: Data Retirada

E verificar a label: Hora Retirada
  resource_cnsMovimentacaoChaves.Verificar a label: Hora Retirada

E verificar a label: Colaborador
  resource_cnsMovimentacaoChaves.Verificar a label: Colaborador

E verificar a label: Data Devolução
  resource_cnsMovimentacaoChaves.Verificar a label: Data Devolução

E verificar a label: Hora Devolução
  resource_cnsMovimentacaoChaves.Verificar a label: Hora Devolução

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"