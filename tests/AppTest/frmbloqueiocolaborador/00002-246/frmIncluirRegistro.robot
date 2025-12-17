*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consbloqueiocolaborador.robot
Resource        ../../../../resource/app/resource_frmbloqueiocolaborador.robot


Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Cadastrar um Bloqueio do Colaborador.


*** Test Cases ***

Testcase: Cadastrar um Bloqueio do Colaborador
  [Tags]  REGISTER  POLYVALENT  246  247
  #Teste funciona tanto em POPULATED quanto UNPOPULATED.
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Colaborador | Bloqueio
  Quando eu visualizar a tela: Consulta de Bloqueio de Colaborador
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Bloqueio de Colaborador (Inclusão)
  E preencher o campo Código do Colaborador "2"
  E selecionar uma opção no campo Código do Motivo do Bloquio "BLOQUEIO POR AFASTAMENTO"
  E preencher o campo Observação Bloqueio/Liberação "Descrição"
  E clicar no botão: Incluir o Botão
  Então devo visualizar a tela: Bloqueio de Colaborador (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Colaborador | Bloqueio
  resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Colaborador | Bloqueio

Quando eu visualizar a tela: Consulta de Bloqueio de Colaborador
  resource_consbloqueiocolaborador.Acessar Tela Consulta de Bloqueio de Colaborador

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Bloqueio de Colaborador (Inclusão)
  resource_frmbloqueiocolaborador.Acessar Tela Bloqueio de Colaborador (Inclusão)

E preencher o campo Código do Colaborador "${CODIGO}"
  resource_frmbloqueiocolaborador.Preencher o campo Código do Colaborador "${CODIGO}"

E selecionar uma opção no campo Código do Motivo do Bloquio "${CODIGO}"
  resource_frmbloqueiocolaborador.Selecionar uma opção no campo Código do Motivo do Bloquio "${CODIGO}"

E preencher o campo Observação Bloqueio/Liberação "${OBSERVACAO}"
  resource_frmbloqueiocolaborador.Preencher o campo Observação Bloqueio/Liberação "${OBSERVACAO}"

E clicar no botão: Incluir o Botão
  resource_btn.Clicar No Botão Incluir o Registro

Então devo visualizar a tela: Bloqueio de Colaborador (Atualização)
  resource_frmbloqueiocolaborador.Acessar Tela Bloqueio de Colaborador (Atualização)