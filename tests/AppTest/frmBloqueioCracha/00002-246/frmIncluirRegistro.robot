*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmBloqueioCracha.robot
Resource        ../../../../resource/app/resource_cnsBloqueioCracha.robot
Resource    ../../../../resource/app/resource_frmcargos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Cadastrar um Bloqueio de Crachá.


*** Test Cases ***

Testcase: Cadastrar um Bloqueio de Crachá
  [Tags]  REGISTER  POLYVALENT  246  247
  #Teste funciona tanto em POPULATED quanto UNPOPULATED.
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Crachá | Bloqueio
  Quando eu visualizar a tela: Consulta de Crachá Bloqueado
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Bloqueio de Crachá (Inclusão)
  E preencher o campo Crachá "1"
  E preencher o campo Motivo "1005"
  E preencher o campo Observações "Observações"
  E clicar no botão: Incluir o Registro
  Então devo visualizar a tela: Bloqueio de Crachá (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Crachá | Bloqueio
  resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Crachá | Bloqueio

Quando eu visualizar a tela: Consulta de Crachá Bloqueado
  resource_cnsBloqueioCracha.Acessar Tela Consulta de Crachá Bloqueado

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Bloqueio de Crachá (Inclusão)
  resource_frmBloqueioCracha.Acessar Tela Bloqueio de Crachá (Inclusão)

E preencher o campo Crachá "${CRACHA}"
  resource_frmBloqueioCracha.Preencher o campo Crachá "${CRACHA}"

E preencher o campo Motivo "${MOTIVO}"
  resource_frmBloqueioCracha.Preencher o campo Motivo "${MOTIVO}"

E preencher o campo Observações "${OBSERVACOES}"
  resource_frmBloqueioCracha.Preencher o campo Observações "${OBSERVACOES}"

E clicar no botão: Incluir o Registro
  resource_btn.Clicar No Botão Incluir o Registro

Então devo visualizar a tela: Bloqueio de Crachá (Atualização)
  resource_frmBloqueioCracha.Acessar Tela Bloqueio de Crachá (Atualização)