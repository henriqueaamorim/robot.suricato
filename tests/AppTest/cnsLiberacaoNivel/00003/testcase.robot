*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsLiberacaoNivel.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Histórico de Liberação de Nível - Filtro
${APPNAME}     cnsLiberacaoNivel
${OBJETIVO}    Verificar todos os campos na tela Consulta de Histórico de Liberação de Nível - Filtro

*** Test Cases ***

Testcase: Acessar Tela Consulta de Histórico de Liberação de Nível - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Liberação de Nível
  Então devo visualizar a tela: Consulta de Histórico de Liberação de Nível - Filtro
  E verificar o campo Empresa
  E verificar o campo Tipo do Colaborador
  E verificar o campo Nome
  E verificar o campo Apelido
  E verificar o campo Matrícula
  E verificar o campo PIS
  E verificar o campo Número do CPF
  E verificar o campo Ramal
  E verificar o campo Chave Externa
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Registro | Liberação de Nível
  resource_mnu.Clicar No Menu Registro | Liberação de Nível

Então devo visualizar a tela: Consulta de Histórico de Liberação de Nível - Filtro 
  resource_cnsLiberacaoNivel.Acessar Tela Consulta de Histórico de Liberação de Nível - Filtro

E verificar o campo Empresa
  resource_cnsLiberacaoNivel.Verificar o campo Empresa

E verificar o campo Tipo do Colaborador
  resource_cnsLiberacaoNivel.Verificar o campo Tipo do Colaborador

E verificar o campo Nome
  resource_cnsLiberacaoNivel.Verificar o campo Nome

E verificar o campo Apelido
  resource_cnsLiberacaoNivel.Verificar o campo Apelido

E verificar o campo Matrícula
  resource_cnsLiberacaoNivel.Verificar o campo Matrícula

E verificar o campo PIS
  resource_cnsLiberacaoNivel.Verificar o campo PIS

E verificar o campo Número do CPF
  resource_cnsLiberacaoNivel.Verificar o campo Número do CPF

E verificar o campo Ramal
  resource_cnsLiberacaoNivel.Verificar o campo Ramal

E verificar o campo Chave Externa
  resource_cnsLiberacaoNivel.Verificar o campo Chave Externa

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
