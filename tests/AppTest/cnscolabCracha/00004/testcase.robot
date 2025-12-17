*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcrachaprovisoriocolaborador.robot
Resource        ../../../../resource/app/resource_cnscolabCracha.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Colaboradores Crachá (Busca Externa) 
${APPNAME}     cnscolabCracha
${OBJETIVO}    Verificar todos os campos na tela Consulta de Colaboradores Crachá (Busca Externa)

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Colaboradores Crachá (Busca Externa)
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Provisório | Colaborador
  Ao visualizar a tela: Provisório de Colaboradores (Inclusão)
  E clicar no botão: Buscar Dados Externos para Código do Colaborador
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Colaboradores Crachá (Busca Externa) (Filtro)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Consulta de Colaboradores Crachá (Busca Externa)
  E verificar a label Chave Externa
  E verificar a label Código do Colaborador
  E verificar a label Empresa
  E verificar a label Tipo do Colaborador
  E verificar a label Matrícula
  E verificar a label Nome
  E verificar a label CPF
  E verificar a label Identidade
  E verificar a label Ramal
  E verificar a label Local
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

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Consulta de Colaboradores Crachá (Busca Externa)
  resource_cnscolabCracha.Acessar Tela Consulta de Colaboradores Crachá (Busca Externa)
  
E verificar a label Chave Externa
  resource_cnscolabCracha.Verificar a label Chave Externa

E verificar a label Código do Colaborador
  resource_cnscolabCracha.Verificar a label Código do Colaborador

E verificar a label Empresa
  resource_cnscolabCracha.Verificar a label Empresa

E verificar a label Tipo do Colaborador
  resource_cnscolabCracha.Verificar a label Tipo do Colaborador

E verificar a label Matrícula
  resource_cnscolabCracha.Verificar a label Matrícula

E verificar a label Nome
  resource_cnscolabCracha.Verificar a label Nome

E verificar a label CPF
  resource_cnscolabCracha.Verificar a label CPF

E verificar a label Identidade
  resource_cnscolabCracha.Verificar a label Identidade

E verificar a label Ramal
  resource_cnscolabCracha.Verificar a label Ramal

E verificar a label Local
  resource_cnscolabCracha.Verificar a label Local

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
