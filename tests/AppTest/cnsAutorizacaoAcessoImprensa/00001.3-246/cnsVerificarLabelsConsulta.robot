*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAutorizacaoAcessoImprensa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Autorização de Acesso de Candidato (Consulta)
${SCREENNAME}  Autorização de Acesso de Candidato
${APPNAME}     cnsAutorizacaoAcessoImprensa

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Autorização de Acesso de Candidato (Consulta)
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Candidato | Autorização Acesso
  Quando visualizar a tela: Autorização de Acesso de Candidato (Consulta)
  Então devo verificar a label: Nome
  E verificar a label: CPF
  E verificar a label: Carteira de Identidade
  E verificar a label: Data
  E verificar a label: Hora
  E verificar a label: Motivo
  E verificar a label: Data do Agendamento
  E verificar a label: Hora do Agendamento
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Autorização Acesso
  resource_mnu.Clicar No Menu Identificação | Candidato | Autorização Acesso

Quando visualizar a tela: Autorização de Acesso de Candidato (Consulta)
  resource_cnsAutorizacaoAcessoImprensa.Acessar Tela: Autorização de Acesso de Candidato (Consulta)

Então devo verificar a label: Nome
    resource_cnsAutorizacaoAcessoImprensa.Verificar a label: Nome na tela: Autorização de Acesso de Candidato (Consulta)

E verificar a label: CPF
    resource_cnsAutorizacaoAcessoImprensa.Verificar a label: CPF na tela: Autorização de Acesso de Candidato (Consulta)

E verificar a label: Carteira de Identidade
    resource_cnsAutorizacaoAcessoImprensa.Verificar a label: Carteira de Identidade na tela: Autorização de Acesso de Candidato (Consulta)

E verificar a label: Data
    resource_cnsAutorizacaoAcessoImprensa.Verificar a label: Data na tela: Autorização de Acesso de Candidato (Consulta)

E verificar a label: Hora
    resource_cnsAutorizacaoAcessoImprensa.Verificar a label: Hora na tela: Autorização de Acesso de Candidato (Consulta)

E verificar a label: Motivo
    resource_cnsAutorizacaoAcessoImprensa.Verificar a label: Motivo na tela: Autorização de Acesso de Candidato (Consulta)

E verificar a label: Data do Agendamento
    resource_cnsAutorizacaoAcessoImprensa.Verificar a label: Data do Agendamento na tela: Autorização de Acesso de Candidato (Consulta)

E verificar a label: Hora do Agendamento
    resource_cnsAutorizacaoAcessoImprensa.Verificar a label: Hora do Agendamento na tela: Autorização de Acesso de Candidato (Consulta)

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
