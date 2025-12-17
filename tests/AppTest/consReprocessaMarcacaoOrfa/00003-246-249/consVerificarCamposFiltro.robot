*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consReprocessaMarcacaoOrfa.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}   Reprocessamento de Marcações Orfãs REP
${APPNAME}      consReprocessaMarcacaoOrfa
${OBJETIVO}     Verificar todos os campos na tela: Reprocessamento de Marcações Orfãs REP (Filtro)


*** Test Cases ***
Testcase: Verificar todos os campos na tela: Reprocessamento de Marcações Orfãs REP (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Comando | Reprocessamento de Marcações Orfãs REP
  Quando visualizar a tela: Reprocessamento de Marcações Orfãs REP (Filtro)
  Então devo verificar o campo Nome
  E verificar o campo Matricula
  E verificar o campo Crachá
  E verificar o campo PIS
  E verificar o campo Endereço IP
  E verificar o campo Indelével
  E verificar o campo Data
  E verificar o campo Hora
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Controle | Comando | Reprocessamento de Marcações Orfãs REP
  resource_mnu.Clicar No Menu Controle | Comando | Reprocessamento de Marcações Orfãs REP

Quando visualizar a tela: Reprocessamento de Marcações Orfãs REP (FIltro)
  resource_consReprocessaMarcacaoOrfa.Acessar Tela Reprocessamento de Marcações Orfãs REP

Então devo verificar o campo Nome
  resource_consReprocessaMarcacaoOrfa.Verificar o campo Nome

E verificar o campo Matricula
  resource_consReprocessaMarcacaoOrfa.Verificar o campo Matricula

E verificar o campo Crachá
  resource_consReprocessaMarcacaoOrfa.Verificar o campo Crachá

E verificar o campo PIS
  resource_consReprocessaMarcacaoOrfa.Verificar o campo PIS

E verificar o campo Endereço IP
  resource_consReprocessaMarcacaoOrfa.Verificar o campo Endereço IP

E verificar o campo Indelével
  resource_consReprocessaMarcacaoOrfa.Verificar o campo Indelével

E verificar o campo Data
  resource_consReprocessaMarcacaoOrfa.Verificar o campo Data

E verificar o campo Hora
  resource_consReprocessaMarcacaoOrfa.Verificar o campo Hora

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"