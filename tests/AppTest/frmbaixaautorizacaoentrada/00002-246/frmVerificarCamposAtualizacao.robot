*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsBaixaCracha.robot
Resource        ../../../../resource/app/resource_frmbaixaautorizacaoentrada.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Autorização de Entrada (Atualização)
${APPNAME}     frmbaixaautorizacaoentrada
${OBJETIVO}    Verificar todos os campos na tela Autorização de Entrada (Atualização)


*** Test Cases ***

Testcase: Verificar todos os campos na tela Autorização de Entrada (Atualização)
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Autorização | Baixa de Autorização
  Ao visualizar a tela: Consulta de Baixa Autorização Entrada
  E clicar no botão: Editar o Registro "1"
  Então devo visualizar a tela: Baixa de Autorização de Entrada (Atualização)
  E verificar a label Código do Colaborador *
  E verificar a label Empresa *
  E verificar a label Tipo do Colaborador *
  E verificar a label Matrícula *
  E verificar a label Nome *
  E verificar a label Data de Entrada *
  E verificar a label Hora de Entrada *
  E verificar a label Número do Crachá
  E verificar a label Permissão
  E verificar a label Data de Validade
  E verificar a label Hora de Validade
  E verificar o campo Data de Saída
  E verificar o campo Hora de Saída
  E verificar o campo Observações
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Autorização | Baixa de Autorização
  resource_mnu.Clicar No Menu Entrada | Autorização | Baixa de Autorização

Ao visualizar a tela: Consulta de Baixa Autorização Entrada
  resource_cnsBaixaCracha.Acessar Tela: Baixa Autorização Entrada (Consulta)

E clicar no botão: Editar o Registro "${NUM}"
  resource_btn.Clicar No Botão Editar o Registro "${NUM}"

Então devo visualizar a tela: Baixa de Autorização de Entrada (Atualização)
  resource_frmbaixaautorizacaoentrada.Acessar Tela Baixa de Autorização de Entrada (Atualização)

E verificar a label Código do Colaborador *
  resource_frmbaixaautorizacaoentrada.Verificar a label Código do Colaborador *

E verificar a label Empresa *
  resource_frmbaixaautorizacaoentrada.Verificar a label Empresa *

E verificar a label Tipo do Colaborador *
  resource_frmbaixaautorizacaoentrada.Verificar a label Tipo do Colaborador *

E verificar a label Matrícula *
  resource_frmbaixaautorizacaoentrada.Verificar a label Matrícula *

E verificar a label Nome *
  resource_frmbaixaautorizacaoentrada.Verificar a label Nome *

E verificar a label Data de Entrada *
  resource_frmbaixaautorizacaoentrada.Verificar a label Data de Entrada *

E verificar a label Hora de Entrada *
  resource_frmbaixaautorizacaoentrada.Verificar a label Hora de Entrada *

E verificar a label Número do Crachá
  resource_frmbaixaautorizacaoentrada.Verificar a label Número do Crachá

E verificar a label Permissão
  resource_frmbaixaautorizacaoentrada.Verificar a label Permissão

E verificar a label Data de Validade
  resource_frmbaixaautorizacaoentrada.Verificar a label Data de Validade

E verificar a label Hora de Validade
  resource_frmbaixaautorizacaoentrada.Verificar a label Hora de Validade

E verificar o campo Data de Saída
  resource_frmbaixaautorizacaoentrada.Verificar o campo Data de Saída

E verificar o campo Hora de Saída
  resource_frmbaixaautorizacaoentrada.Verificar o campo Hora de Saída

E verificar o campo Observações
  resource_frmbaixaautorizacaoentrada.Verificar o campo Observações

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
