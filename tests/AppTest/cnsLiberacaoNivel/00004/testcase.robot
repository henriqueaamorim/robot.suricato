*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsLiberacaoNivel.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Histórico de Liberação de Nível
${APPNAME}     cnsLiberacaoNivel
${OBJETIVO}    Verificar todos os campos na tela Consulta de Histórico de Liberação de Nível

*** Test Cases ***

Testcase: Acessar Tela Consulta de Histórico de Liberação de Nível
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Liberação de Nível
  Então devo visualizar a tela: Consulta de Histórico de Liberação de Nível - Filtro
  E selecionar uma opção no campo Empresa "Alfandega"
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Consulta de Histórico de Liberação de Nível
  E verificar a label Código do Colaborador
  E verificar a label Empresa
  E verificar a label Tipo do Colaborador
  E verificar a label Matrícula
  E verificar a label Nome
  E verificar a label Crachá
  E verificar a label Nível Anterior
  E verificar a label Nível Novo
  E verificar a label Justificativa
  E verificar a label Data Alteração
  E verificar a label Hora Alteração
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Registro | Liberação de Nível
  resource_mnu.Clicar No Menu Registro | Liberação de Nível

Então devo visualizar a tela: Consulta de Histórico de Liberação de Nível - Filtro
  resource_cnsLiberacaoNivel.Acessar Tela Consulta de Histórico de Liberação de Nível - Filtro

E selecionar uma opção no campo Empresa "${EMPRESA}"
  resource_cnsLiberacaoNivel.Selecionar uma opção no campo Empresa "${EMPRESA}"

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Consulta de Histórico de Liberação de Nível
  resource_cnsLiberacaoNivel.Acessar Tela Consulta de Histórico de Liberação de Nível

E verificar a label Código do Colaborador
  resource_cnsLiberacaoNivel.Verificar a label Código do Colaborador

E verificar a label Empresa
  resource_cnsLiberacaoNivel.Verificar a label Empresa

E verificar a label Tipo do Colaborador
  resource_cnsLiberacaoNivel.Verificar a label Tipo do Colaborador

E verificar a label Matrícula
  resource_cnsLiberacaoNivel.Verificar a label Matrícula

E verificar a label Nome
  resource_cnsLiberacaoNivel.Verificar a label Nome

E verificar a label Crachá
  resource_cnsLiberacaoNivel.Verificar a label Crachá

E verificar a label Nível Anterior
  resource_cnsLiberacaoNivel.Verificar a label Nível Anterior

E verificar a label Nível Novo
  resource_cnsLiberacaoNivel.Verificar a label Nível Novo

E verificar a label Justificativa
  resource_cnsLiberacaoNivel.Verificar a label Justificativa

E verificar a label Data Alteração
  resource_cnsLiberacaoNivel.Verificar a label Data Alteração

E verificar a label Hora Alteração
  resource_cnsLiberacaoNivel.Verificar a label Hora Alteração

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
