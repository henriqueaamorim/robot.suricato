*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnscadastroimprensa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Consulta de Cadastro de Candidato
${SCREENNAME}  Consulta de Cadastro de Candidato
${APPNAME}     cnscadastroimprensa

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Consulta de Cadastro de Candidato
  [Tags]    VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
    Dado que eu acesse o menu: Identificação | Candidato | Candidato
    Quando visualizar a tela: Consulta de Cadastro de Candidato
    Então devo verifiar a label: Matrícula
    E verificar a label: Nome
    E verificar a label: Carteira de Identidade
    E verificar a label: Número do CPF
    E verificar a label: Email
    E verificar a label: Observações
    E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Candidato
    resource_mnu.Clicar No Menu Identificação | Candidato | Cadastro de Candidato

Quando visualizar a tela: Consulta de Cadastro de Candidato
    resource_cnscadastroimprensa.Acessar Tela: Consulta de Cadastro de Candidato

Então devo verifiar a label: Matrícula
    resource_cnscadastroimprensa.Verificar a label Matrícula

E verificar a label: Nome
    resource_cnscadastroimprensa.Verificar a label Nome

E verificar a label: Carteira de Identidade
    resource_cnscadastroimprensa.Verificar a label Carteira de Identidade

E verificar a label: Número do CPF
    resource_cnscadastroimprensa.Verificar a label Número do CPF

E verificar a label: Email
    resource_cnscadastroimprensa.Verificar a label Email

E verificar a label: Observações
    resource_cnscadastroimprensa.Verificar a label Observações

E verificar se existe o campo Teste na tela    
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
    



