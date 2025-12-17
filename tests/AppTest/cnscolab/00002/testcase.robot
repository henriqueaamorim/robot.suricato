*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcrachaempregado.robot
Resource        ../../../../resource/app/resource_cnscolab.robot
Resource    ../../cnsAcessosDosColaboradores/00005/testcase.robot
Resource    ../../../../resource/app/resource_cnsHistoricoCentroCusto.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos da tela Consulta de Colaboradores (Busca Externa) através da tela Crachá Titular (Inclusão)

*** Test Cases ***

Testcase: Preencher todos os campos da tela Consulta de Colaboradores (Busca Externa) através da tela Crachá Titular (Inclusão)
  [Tags]  REGISTER  POLYVALENT 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Crachá
  Quando eu visualizar a tela: Crachá Titular (Atualização)
  E clicar no botão: Abrir um novo registro
  Ao visualizar a tela: Crachá Titular (Inclusão)
  E clicar no botão: Buscar Dados Externos para Código do Colaborador
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Colaboradores (Busca Externa)
  E preencher o campo Pessoa "ok"    
  E selecionar uma opção no campo Empresa "Alfandega"
  E selecionar uma opção no campo Tipo do Colaborador "Parceiro"
  E preencher o campo Matrícula "ok"
  E preencher o campo Nome "ok"
  E preencher o campo Crachá "ok"
  E preencher o campo CPF "ok"
  E preencher o campo Identidade "ok"
  E preencher o campo OAB "ok"    
  E preencher o campo Centro de Custo "ok"      
  E preencher o campo Ramal "ok"
  E preencher o campo Chave Externa "ok" 

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Crachá
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Crachá

Quando eu visualizar a tela: Crachá Titular (Atualização)
  resource_frmcrachaempregado.Acessar Tela Crachá Titular (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Ao visualizar a tela: Crachá Titular (Inclusão)
  resource_frmcrachaempregado.Acessar Tela Crachá Titular (Inclusão)

E clicar no botão: Buscar Dados Externos para Código do Colaborador
  resource_frmcrachaempregado.Clicar No Botão Buscar Dados Externos Para Código do Colaborador

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Colaboradores (Busca Externa)
  resource_cnscolab.Acessar Tela Consulta de Colaboradores (Busca Externa)

E preencher o campo Pessoa "${PESSOA}"
  resource_cnscolab.Preencher o campo Pessoa "${PESSOA}"

E selecionar uma opção no campo Empresa "${EMPRESA}"
  resource_cnscolab.Selecionar uma opção no campo Empresa "${EMPRESA}"

E selecionar uma opção no campo Tipo do Colaborador "${TIPO_DO_COLABORADOR}"
  resource_cnscolab.Selecionar uma opção no campo Tipo do Colaborador "${TIPO_DO_COLABORADOR}"

E preencher o campo Matrícula "${MATRÍCULA}"
  resource_cnscolab.Preencher o campo Matrícula "${MATRÍCULA}"

E preencher o campo Nome "${NOME}"
  resource_cnscolab.Preencher o campo Nome "${NOME}"

E preencher o campo Crachá "${CRACHÁ}"
  resource_cnscolab.Preencher o campo Crachá "${CRACHÁ}"

E preencher o campo CPF "${CPF}"
  resource_cnscolab.Preencher o campo CPF "${CPF}"

E preencher o campo Identidade "${IDENTIDADE}"
  resource_cnscolab.Preencher o campo Identidade "${IDENTIDADE}"

E preencher o campo OAB "${OAB}"
  resource_cnscolab.Preencher o campo OAB "${OAB}"

E preencher o campo Centro de Custo "${CENTRO_DE_CUSTO}"
  resource_cnscolab.Preencher o campo Centro de Custo "${CENTRO_DE_CUSTO}"

E preencher o campo Ramal "${RAMAL}"
  resource_cnscolab.Preencher o campo Ramal "${RAMAL}"

E preencher o campo Chave Externa "${CHAVE_EXTERNA}"
  resource_cnscolab.Preencher o campo Chave Externa "${CHAVE_EXTERNA}"
