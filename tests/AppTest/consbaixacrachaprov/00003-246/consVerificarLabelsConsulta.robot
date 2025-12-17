*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consbaixacrachaprov.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta para Realização das Baixas de Crachá Provisório
${APPNAME}     consbaixacrachaprov
${OBJETIVO}   Verificar todas as labels na tela: Realização das Baixas de Crachá Provisório (Consulta)

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Realização das Baixas de Crachá Provisório (Consulta)
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Provisório | Baixa Provisório
  Quando visualizar a tela: Realização das Baixas de Crachá Provisório (Consulta)
  Então devo verificar a label: Crachá
  E verificar a label: Empresa
  E verificar a label: Tipo de Colaborador
  E verificar a label: Matrícula
  E verificar a label: Nome
  E verificar a label: Início Uso do Crachá
  E verificar a segunda label: Início Uso do Crachá
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Provisório | Baixa Provisório
  resource_mnu.Clicar No Menu Entrada | Provisório | Baixa Provisório

Quando visualizar a tela: Realização das Baixas de Crachá Provisório (Consulta)
  resource_consbaixacrachaprov.Acessar Tela: Realização das Baixas de Crachá Provisório (Consulta)

Então devo verificar a label: Crachá
  resource_consbaixacrachaprov.Verificar a label Crachá

E verificar a label: Empresa
  resource_consbaixacrachaprov.Verificar a label Empresa

E verificar a label: Tipo de Colaborador
  resource_consbaixacrachaprov.Verificar a label Tipo de Colaborador

E verificar a label: Matrícula
  resource_consbaixacrachaprov.Verificar a label Matrícula

E verificar a label: Nome
  resource_consbaixacrachaprov.Verificar a label Nome

E verificar a label: Início Uso do Crachá
  resource_consbaixacrachaprov.Verificar a label Início Uso do Crachá

E verificar a segunda label: Início Uso do Crachá
  resource_consbaixacrachaprov.Verificar a segunda label Início Uso do Crachá

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
