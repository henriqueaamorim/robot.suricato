*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consbaixacrachaprov.robot
Resource        ../../../../resource/app/resource_frmbaixacrachaprov.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Baixa de Crachá Provisório (Atualização)
${APPNAME}     frmbaixacrachaprovisorio
${OBJETIVO}    Verificar todos os campos na tela Baixa de Crachá Provisório (Atualização)

*** Test Cases ***

Testcase: Verificar todos os campos na tela Baixa de Crachá Provisório (Atualização)
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Entrada | Provisório | Baixa Provisório
  Ao visualizar a tela: Consulta para Realização das Baixas de Crachá Provisório
  E clicar no número de crachá desejado na coluna "Crachá"
  Então devo visualizar a tela: Baixa de Crachá Provisório (Atualização)
  E verificar a label Crachá
  E verificar a label Código do Colaborador *
  E verificar a label Empresa
  E verificar a label Tipo do Co laborador
  E verificar a label Matrícula
  E verificar a label Nome
  E verificar a label Data de Início do Uso do Crachá *
  E verificar a label Hora de Início do Uso do Crachá *
  E verificar o campo Data de Término do Uso do Crachá *
  E verificar o campo Hora de Término do Uso do Crachá *
  E verificar o campo Perda de Crachá Provisório
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Provisório | Baixa Provisório
  resource_mnu.Clicar No Menu Entrada | Provisório | Baixa Provisório

Ao visualizar a tela: Consulta para Realização das Baixas de Crachá Provisório
  resource_consbaixacrachaprov.Acessar Tela: Realização das Baixas de Crachá Provisório (Consulta)

E clicar no número de crachá desejado na coluna "Crachá"
  resource_consbaixacrachaprov.Selecionar Crachá

Então devo visualizar a tela: Baixa de Crachá Provisório (Atualização)
  resource_frmbaixacrachaprov.Acessar Tela Baixa de Crachá Provisório (Atualização)

E verificar a label Crachá
  resource_frmbaixacrachaprov.Verificar a label Crachá

E verificar a label Código do Colaborador *
  resource_frmbaixacrachaprov.Verificar a label Código do Colaborador *

E verificar a label Empresa
  resource_frmbaixacrachaprov.Verificar a label Empresa

E verificar a label Tipo do Colaborador
  resource_frmbaixacrachaprov.Verificar a label Tipo do Colaborador

E verificar a label Matrícula
  resource_frmbaixacrachaprov.Verificar a label Matrícula

E verificar a label Nome
  resource_frmbaixacrachaprov.Verificar a label Nome

E verificar a label Data de Início do Uso do Crachá *
  resource_frmbaixacrachaprov.Verificar a label Data de Início do Uso do Crachá *

E verificar a label Hora de Início do Uso do Crachá *
  resource_frmbaixacrachaprov.Verificar a label Hora de Início do Uso do Crachá *

E verificar o campo Data de Término do Uso do Crachá *
  resource_frmbaixacrachaprov.Verificar o campo Data de Término do Uso do Crachá *

E verificar o campo Hora de Término do Uso do Crachá *
  resource_frmbaixacrachaprov.Verificar o campo Hora de Término do Uso do Crachá *

E verificar o campo Perda de Crachá Provisório
  resource_frmbaixacrachaprov.Verificar o campo Perda de Crachá Provisório

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
