*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsBaixaCracha.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta de Baixa Autorização Entrada (Filtro)
${APPNAME}     cnsBaixaCracha
${OBJETIVO}    Verificar todos os campos na tela: Baixa Autorização Entrada (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Baixa Autorização Entrada (Filtro)
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Autorização | Baixa de Autorização
  Quando visualizar a tela: Baixa Autorização Entrada (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Baixa Autorização Entrada (Filtro)
  E verificar o campo: Empresa
  E verificar o campo: Tipo do Colaborador
  E verificar o campo: Matrícula
  E verificar o campo: Data de Entrada
  E verificar o campo: Hora de Entrada
  E verificar o campo: Crachá
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Autorização | Baixa de Autorização
  resource_mnu.Clicar No Menu Entrada | Autorização | Baixa de Autorização

Quando visualizar a tela: Baixa Autorização Entrada (Consulta)
  resource_cnsBaixaCracha.Acessar Tela: Baixa Autorização Entrada (Consulta)

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Baixa Autorização Entrada (Filtro)
  resource_cnsBaixaCracha.Acessar Tela: Baixa Autorização Entrada (Filtro)

E verificar o campo: Empresa
  resource_cnsBaixaCracha.Verificar o campo Empresa

E verificar o campo: Tipo do Colaborador
  resource_cnsBaixaCracha.Verificar o campo Tipo do Colaborador

E verificar o campo: Matrícula
  resource_cnsBaixaCracha.Verificar o campo Matrícula

E verificar o campo: Data de Entrada
  resource_cnsBaixaCracha.Verificar o campo Data de Entrada

E verificar o campo: Hora de Entrada
  resource_cnsBaixaCracha.Verificar o campo Hora de Entrada

E verificar o campo: Crachá
  resource_cnsBaixaCracha.Verificar o campo Crachá

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
