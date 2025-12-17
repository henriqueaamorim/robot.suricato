*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcrachaprovisoriocolaborador.robot
Resource        ../../../../resource/app/resource_cnscolabCracha.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Colaboradores Crachá (Busca Externa) (Filtro)
${APPNAME}     cnscolabCracha
${OBJETIVO}    Verificar todos os campos na tela Consulta de Colaboradores Crachá (Busca Externa) (Filtro)

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Colaboradores Crachá (Busca Externa) (Filtro)
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Provisório | Colaborador
  Ao visualizar a tela: Provisório de Colaboradores (Inclusão)
  E clicar no botão: Buscar Dados Externos para Código do Colaborador
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Colaboradores Crachá (Busca Externa) (Filtro)
  E verificar o campo Empresa
  E verificar o campo Tipo do Colaborador
  E verificar o campo Matrícula
  E verificar o campo Nome
  E verificar o campo CPF
  E verificar o campo Identidade
  E verificar o campo Organograma
  E verificar o campo Local
  E verificar o campo Ramal
  E verificar o campo Chave Externa
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Provisório | Colaborador
  resource_mnu.Clicar No Menu Entrada | Provisório | Colaborador

Ao visualizar a tela: Provisório de Colaboradores (Inclusão)
  resource_frmcrachaprovisoriocolaborador.Acessar Tela Provisório de Colaboradores (Inclusão)

E clicar no botão: Buscar Dados Externos para Código do Colaborador
  resource_frmcrachaprovisoriocolaborador.Clicar No Botão Buscar Dados Externos Para Código do Colaborador

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Colaboradores Crachá (Busca Externa) (Filtro)
  resource_cnscolabCracha.Acessar Tela Consulta de Colaboradores Crachá (Busca Externa) (Filtro)

E verificar o campo Empresa
  resource_cnscolabCracha.Verificar o campo Empresa

E verificar o campo Tipo do Colaborador
  resource_cnscolabCracha.Verificar o campo Tipo do Colaborador

E verificar o campo Matrícula
  resource_cnscolabCracha.Verificar o campo Matrícula

E verificar o campo Nome
  resource_cnscolabCracha.Verificar o campo Nome

E verificar o campo CPF
  resource_cnscolabCracha.Verificar o campo CPF

E verificar o campo Identidade
  resource_cnscolabCracha.Verificar o campo Identidade

E verificar o campo Organograma
  resource_cnscolabCracha.Verificar o campo Organograma

E verificar o campo Local
  resource_cnscolabCracha.Verificar o campo Local

E verificar o campo Ramal
  resource_cnscolabCracha.Verificar o campo Ramal

E verificar o campo Chave Externa
  resource_cnscolabCracha.Verificar o campo Chave Externa

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
