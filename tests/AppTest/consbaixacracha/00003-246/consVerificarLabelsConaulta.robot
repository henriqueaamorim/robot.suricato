*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consbaixacracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Baixa de Crachá Titular (Consulta)
${SCREENNAME}  Baixa de Crachá
${APPNAME}     consbaixacracha

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Baixa de Crachá Titular (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Baixa de Crachá
  Quando visualizar a tela: Baixa de Crachá Titular (Consulta)
  Então devo verificar a label: Crachá
  E verificar a label: Empresa
  E verificar a label: Tipo do Colaborador
  E verificar a label: Matrícula
  E verificar a label: Nome
  E verificar a label: Início Uso do Crachá (primeiro)
  E verificar a label: Início Uso do Crachá (segundo)
  E verificar a label: Data Final
  E verificar a label: Hora Final
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Baixa de Crachá
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Baixa de Crachá

Quando visualizar a tela: Baixa de Crachá Titular (Consulta)
  resource_consbaixacracha.Acessar Tela Baixa de Crachá Titular

Então devo verificar a label: Crachá
    resource_consbaixacracha.E verificar a label Crachá 

E verificar a label: Empresa
    resource_consbaixacracha.E verificar a label Empresa

E verificar a label: Tipo do Colaborador
    resource_consbaixacracha.E verificar a label Tipo do Colaborador

E verificar a label: Matrícula
    resource_consbaixacracha.E verificar a label Matrícula 

E verificar a label: Nome
    resource_consbaixacracha.E verificar a label Nome 

E verificar a label: Início Uso do Crachá (primeiro)
    resource_consbaixacracha.E verificar a label Início Uso do Crachá 

E verificar a label: Início Uso do Crachá (segundo)
    resource_consbaixacracha.E verificar a segunda label Início Uso do Crachá 

E verificar a label: Data Final
    resource_consbaixacracha.Verificar a label Data Final

E verificar a label: Hora Final
    resource_consbaixacracha.Verificar a label Hora Final

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"