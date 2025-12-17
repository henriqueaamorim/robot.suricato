*** Settings ***
Resource        ../../../resource/resource_login.robot
Resource        ../../../resource/app/resource_frmPortarias.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Verificar se o campo "Termo de Consentimento" foi adicionado com sucesso na FRMPORATARIAS

*** Test Cases ***

Testcase: Acessar Tela Portarias E Verificar Melhoria De Termo De Consentimento
  [Tags]  PRINT  REGISTER  ISSUES
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu Estrutura | Portaria e Recepção
  Então devo visualizar a tela: Portarias (Atualização)
  E clicar no botão: Abrir um novo registro
  E preencher o campo Descrição "Portaria"
  E selecionar uma opção no campo Planta "2 - Teste Planta 2"
  E Preencher o Campo Termo de Consentimento "Teste Melhoria"  
  Então devo clicar no botão Incluir o Registro
  Então devo visualizar a tela: Portarias (Atualização)

*** Keywords ***

Dado que eu acesse o menu Estrutura | Portaria e Recepção
  resource_mnu.Clicar No Menu Estrutura | Portaria e Recepção

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

E preencher o campo Descrição "${DESCRICAO}"
  resource_frmPortarias.Preencher o campo Descrição "${DESCRICAO}"

E selecionar uma opção no campo Planta "${PLANTA}"
  resource_frmPortarias.Selecionar uma opção no campo Planta "${PLANTA}"

E Preencher o Campo Termo de Consentimento "${TERMO}"
  resource_frmPortarias.Preencher o campo Termo de Consentimento "${TERMO}"

Então devo clicar no botão Incluir o Registro
  resource_btn.Clicar No Botão Incluir o Registro

Então devo visualizar a tela: Portarias (Atualização)
  resource_frmPortarias.Acessar Tela Portarias (Atualização)
