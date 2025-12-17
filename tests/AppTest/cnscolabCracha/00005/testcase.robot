*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcrachaprovisoriocolaborador.robot
Resource        ../../../../resource/app/resource_cnscolabCracha.robot
Resource    ../../../../resource/app/resource_cnsHistoricoCentroCusto.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos da tela Consulta de Colaboradores Crachá (Busca Externa) (Filtro) através da tela Provisório de Colaboradores (Inclusão)

*** Test Cases ***

Testcase: Preencher todos os campos da tela Consulta de Colaboradores Crachá (Busca Externa) (Filtro) através da tela Provisório de Colaboradores (Inclusão)
  [Tags]  REGISTER  POLYVALENT 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Provisório | Colaborador
  Ao visualizar a tela: Provisório de Colaboradores (Inclusão)
  E clicar no botão: Buscar Dados Externos para Código do Colaborador
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Colaboradores Crachá (Busca Externa) (Filtro)
  E selecionar uma opção no campo Empresa "Alfandega"
  E selecionar uma opção no campo Tipo do Colaborador "Parceiro" 
  E preencher o campo Matrícula "ok"    
  E preencher o campo Nome "ok"    
  E preencher o campo CPF "ok"
  E preencher o campo Identidade "ok"
  E selecionar uma opção no campo Organograma "Presidencia 1" 
  E selecionar uma opção no campo Local "ok"
  E preencher o campo Ramal "ok"
  E preencher o campo Chave Externa "ok" 
  
   
*** Keywords ***
Dado que eu acesse o menu: Entrada | Provisório | Colaborador
  resource_mnu.Clicar No Menu Entrada | Provisório | Colaborador

Ao visualizar a tela: Provisório de Colaboradores (Inclusão)
  resource_frmcrachaprovisoriocolaborador.Acessar Tela Provisório de Colaboradores (Inclusão)

E clicar no botão: Buscar Dados Externos para Código do Colaborador
  resource_frmcrachaprovisoriocolaborador.Clicar No Botão Buscar Dados Externos Para Código do Colaborador

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Colaboradores Crachá (Busca Externa) (Filtro)
  resource_cnscolabCracha.Acessar Tela Consulta de Colaboradores Crachá (Busca Externa) (Filtro)

E selecionar uma opção no campo Empresa "${EMPRESA}"
  resource_cnscolabCracha.Selecionar uma opção no campo Empresa "${EMPRESA}"

E selecionar uma opção no campo Tipo do Colaborador "${TIPO_DO_COLABORADOR}"
  resource_cnscolabCracha.Selecionar uma opção no campo Tipo do Colaborador "${TIPO_DO_COLABORADOR}"

E preencher o campo Matrícula "${MATRÍCULA}"
  resource_cnscolabCracha.Preencher o campo Matrícula "${MATRÍCULA}"

E preencher o campo Nome "${NOME}"
  resource_cnscolabCracha.Preencher o campo Nome "${NOME}"

E preencher o campo CPF "${CPF}"
  resource_cnscolabCracha.Preencher o campo CPF "${CPF}"

E preencher o campo Identidade "${IDENTIDADE}"
  resource_cnscolabCracha.Preencher o campo Identidade "${IDENTIDADE}"

E selecionar uma opção no campo Organograma "${ORGANOGRAMA}"
  resource_cnscolabCracha.Selecionar uma opção no campo Organograma "${ORGANOGRAMA}"

E selecionar uma opção no campo Local "${LOCAL}"
  resource_cnscolabCracha.Selecionar uma opção no campo Local "${LOCAL}"

E preencher o campo Ramal "${RAMAL}"
  resource_cnscolabCracha.Preencher o campo Ramal "${RAMAL}"

E preencher o campo Chave Externa "${CHAVE_EXTERNA}"
  resource_cnscolabCracha.Preencher o campo Chave Externa "${CHAVE_EXTERNA}"
