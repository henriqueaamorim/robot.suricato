*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctropcoesentradagrupo.robot
Resource        ../../../../resource/app/resource_ctrentradagrupo.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Entrada de Grupo de Visitante (Inclusão)
${APPNAME}     ctrentradagrupo
${OBJETIVO}    Verificar todos os campos na tela Entrada de Grupo de Visitante (Inclusão)


*** Test Cases ***

Testcase: Verificar todos os campos na tela Entrada de Grupo de Visitante (Inclusão)
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Entrada de Grupo
  Quando eu visualizar a tela: Opções de Entrada de Grupo de Visitantes
  E clicar no botão: Nova entrada
  Então devo visualizar a tela: Entrada de Grupo de Visitante
  E clicar no botão: Abrir um novo registro 
  E verificar o campo Portaria *
  E verificar o campo Data da Entrada
  E verificar o campo Hora da Entrada *
  E verificar o campo Visitado
  E verificar o campo Grupo de Visitante
  E verificar o campo Visitante Responsável
  E verificar o campo Veículo
  E verificar a label Dados Gerais
  E verificar o campo Crachá do Responsável
  E verificar o campo Grupo de Acesso
  E verificar o campo Tipo da Visita 
  E verificar o campo Data de Validade
  E verificar o campo Hora da Validade 
  E verificar o campo Observações
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Visitante | Entrada de Grupo
  resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Grupo

Quando eu visualizar a tela: Opções de Entrada de Grupo de Visitantes
  resource_ctropcoesentradagrupo.Acessar Tela Opções de Entrada de Grupo de Visitantes

E clicar no botão: Nova entrada
  resource_btn.Clicar No Botão Nova Entrada

Então devo visualizar a tela: Entrada de Grupo de Visitante
  resource_ctrentradagrupo.Acessar Tela Entrada de Grupo de Visitante

E clicar no botão: Abrir um novo registro 
  resource_btn.Clicar No Botão Abrir Um Novo Registro 

E verificar o campo Portaria *
  resource_ctrentradagrupo.Verificar o campo Portaria *

E verificar o campo Data da Entrada
  resource_ctrentradagrupo.Verificar o campo Data da Entrada

E verificar o campo Hora da Entrada *
  resource_ctrentradagrupo.Verificar o campo Hora da Entrada *

E verificar o campo Visitado
  resource_ctrentradagrupo.Verificar o campo Visitado

E verificar o campo Grupo de Visitante
  resource_ctrentradagrupo.Verificar o campo Grupo de Visitante

E verificar o campo Visitante Responsável
  resource_ctrentradagrupo.Verificar o campo Visitante Responsável

E verificar o campo Veículo
  resource_ctrentradagrupo.Verificar o campo Veículo

E verificar a label Dados Gerais
  resource_ctrentradagrupo.Verificar a label Dados Gerais

E verificar o campo Crachá do Responsável
  resource_ctrentradagrupo.Verificar o campo Crachá do Responsável

E verificar o campo Grupo de Acesso
  resource_ctrentradagrupo.Verificar o campo Grupo de Acesso

E verificar o campo Tipo da Visita
  resource_ctrentradagrupo.Verificar o campo Tipo da Visita

E verificar o campo Data de Validade
  resource_ctrentradagrupo.Verificar o campo Data de Validade

E verificar o campo Hora da Validade
  resource_ctrentradagrupo.Verificar o campo Hora da Validade

E verificar o campo Observações
  resource_ctrentradagrupo.Verificar o campo Observações

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
