*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAprovacaoAgendamentoFrota.robot
Resource        ../../../../resource/app/resource_frmAprovacaoSaidaAgendada.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Autorização de Saída de Veículos Agendados
${APPNAME}     frmAprovacaoSaidaAgendada
${OBJETIVO}    Verificar todos os campos na tela Autorização de Saída de Veículos Agendados.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Autorização de Saída de Veículos Agendados
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Utilização Veículos | Aprovação de Agendamentos - Frota
  Ao visualizar a tela: Aprovação de Agendamentos - Frota
  E clicar no botão: Editar o Registro "1"
  Então devo visualizar a tela: Autorização de Saída de Veículos Agendados
  E verificar a label Condutor
  E verificar a segunda label Condutor
  E verificar a label Empresa
  E verificar a label Tipo Colab.
  E verificar a label Matrícula
  E verificar a label Nome
  E verificar a label CNH
  E verificar a label Categoria
  E verificar a label Vencimento
  E verificar a label Veículo
  E verificar a segunda label Veículo 
  E verificar a label Placa
  E verificar a label Marca
  E verificar a label Modelo
  E verificar a label Cor
  E verificar a label Data Saída
  E verificar a label Hora Saída
  E verificar a label Data Retorno
  E verificar a label Hora Retorno
  E verificar a label Aprovação
  E verificar o campo Aprovação
  E verificar a label Data
  E verificar a label Hora
  E verificar a label Aprovador
  E verificar o campo Autorizante
  E verificar a segunda label Empresa
  E verificar a segunda label Tipo Colab.
  E verificar a label Matricula
  E verificar a label Nome
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Utilização Veículos | Aprovação de Agendamentos - Frota
  resource_mnu.Clicar No Menu Veículos | Frota | Utilização Veículos | Aprovação de Agendamentos - Frota

Ao visualizar a tela: Aprovação de Agendamentos - Frota
  resource_cnsAprovacaoAgendamentoFrota.Acessar Tela Aprovação de Agendamentos - Frota

E clicar no botão: Editar o Registro "${NUM}"
  resource_btn.Clicar No Botão Editar o Registro "${NUM}"

Então devo visualizar a tela: Autorização de Saída de Veículos Agendados
  resource_frmAprovacaoSaidaAgendada.Acessar Tela Autorização de Saída de Veículos Agendados

E verificar a label Condutor
  resource_frmAprovacaoSaidaAgendada.Verificar a label Condutor

E verificar a segunda label Condutor
  resource_frmAprovacaoSaidaAgendada.Verificar a segunda label Condutor

E verificar a label Empresa
  resource_frmAprovacaoSaidaAgendada.Verificar a label Empresa

E verificar a label Tipo Colab.
  resource_frmAprovacaoSaidaAgendada.Verificar a label Tipo Colab.

E verificar a label Matrícula
  resource_frmAprovacaoSaidaAgendada.Verificar a label Matrícula

E verificar a label Nome
  resource_frmAprovacaoSaidaAgendada.Verificar a label Nome

E verificar a label CNH
  resource_frmAprovacaoSaidaAgendada.Verificar a label CNH

E verificar a label Categoria
  resource_frmAprovacaoSaidaAgendada.Verificar a label Categoria

E verificar a label Vencimento
  resource_frmAprovacaoSaidaAgendada.Verificar a label Vencimento

E verificar a label Veículo
  resource_frmAprovacaoSaidaAgendada.Verificar a label Veículo

E verificar a segunda label Veículo 
  resource_frmAprovacaoSaidaAgendada.Verificar a segunda label Veículo 

E verificar a label Placa
  resource_frmAprovacaoSaidaAgendada.Verificar a label Placa

E verificar a label Marca
  resource_frmAprovacaoSaidaAgendada.Verificar a label Marca

E verificar a label Modelo
  resource_frmAprovacaoSaidaAgendada.Verificar a label Modelo

E verificar a label Cor
  resource_frmAprovacaoSaidaAgendada.Verificar a label Cor

E verificar a label Data Saída
  resource_frmAprovacaoSaidaAgendada.Verificar a label Data Saída

E verificar a label Hora Saída
  resource_frmAprovacaoSaidaAgendada.Verificar a label Hora Saída

E verificar a label Data Retorno
  resource_frmAprovacaoSaidaAgendada.Verificar a label Data Retorno

E verificar a label Hora Retorno
  resource_frmAprovacaoSaidaAgendada.Verificar a label Hora Retorno

E verificar a label Aprovação
  resource_frmAprovacaoSaidaAgendada.Verificar a label Aprovação

E verificar o campo Aprovação
  resource_frmAprovacaoSaidaAgendada.Verificar o campo Aprovação

E verificar a label Data
  resource_frmAprovacaoSaidaAgendada.Verificar a label Data

E verificar a label Hora
  resource_frmAprovacaoSaidaAgendada.Verificar a label Hora

E verificar a label Aprovador
  resource_frmAprovacaoSaidaAgendada.Verificar a label Aprovador

E verificar o campo Autorizante
  resource_frmAprovacaoSaidaAgendada.Verificar o campo Autorizante

E verificar a segunda label Empresa
  resource_frmAprovacaoSaidaAgendada.Verificar a segunda label Empresa

E verificar a segunda label Tipo Colab.
  resource_frmAprovacaoSaidaAgendada.Verificar a segunda label Tipo Colab.

E verificar a label Matricula
  resource_frmAprovacaoSaidaAgendada.Verificar a label Matricula

E verificar a segunda label Nome
  resource_frmAprovacaoSaidaAgendada.Verificar a segunda label Nome

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
