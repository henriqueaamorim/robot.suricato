*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmagendusofrota.robot
Resource        ../../../../resource/app/resource_cnsagendausofrotapass.robot
Resource        ../../../../resource/app/resource_frmagendausofrotapass.robot
Resource        ../../../../resource/app/resource_abaAgendamentoFrota.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Cadastro de Passageiros
${APPNAME}     frmagendausofrotapass
${OBJETIVO}    Verificar todos os campos na tela Cadastro de Passageiros.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Cadastro de Passageiros
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Utilização Veículos | Agendamentos de Veículo - Frota
  Quando eu visualizar a tela: Agendamento do Uso da Frota (Atualização)
  E clicar na aba: Passageiros
  Então devo visualizar a tela: Agendamento do Uso da Frota - Passageiros
  Ao clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Cadastro de Passageiros
  E verificar o campo Tipo do Passageiro
  E verificar a label Código do Colaborador
  E verificar a label Empresa do Colaborador
  E verificar a label Tipo do Colaborador
  E verificar a label Matricula do Colaborador
  E verificar a label Nome 
  E verificar o campo Centro de Custo
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Utilização Veículos | Agendamentos de Veículo - Frota
  resource_mnu.Clicar No Menu Veículos | Frota | Utilização Veículos | Agendamentos de Veículo - Frota

Quando eu visualizar a tela: Agendamento do Uso da Frota (Atualização)
  resource_frmagendusofrota.Acessar Tela Agendamento do Uso da Frota (Atualização)

E clicar na aba: Passageiros
  resource_abaAgendamentoFrota.Clicar Na Aba Passageiros

Então devo visualizar a tela: Agendamento do Uso da Frota - Passageiros
  resource_cnsagendausofrotapass.Acessar Tela Agendamento do Uso da Frota - Passageiros

Ao clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Cadastro de Passageiros
  resource_frmagendausofrotapass.Acessar Tela Cadastro de Passageiros

E verificar o campo Tipo do Passageiro
  resource_frmagendausofrotapass.Verificar o campo Tipo do Passageiro

E verificar a label Código do Colaborador
  resource_frmagendausofrotapass.Verificar a label Código do Colaborador

E verificar a label Empresa do Colaborador
  resource_frmagendausofrotapass.Verificar a label Empresa do Colaborador

E verificar a label Tipo do Colaborador
  resource_frmagendausofrotapass.Verificar a label Tipo do Colaborador

E verificar a label Matricula do Colaborador
  resource_frmagendausofrotapass.Verificar a label Matricula do Colaborador

E verificar a label Nome 
  resource_frmagendausofrotapass.Verificar a label Nome 

E verificar o campo Centro de Custo
  resource_frmagendausofrotapass.Verificar o campo Centro de Custo

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
