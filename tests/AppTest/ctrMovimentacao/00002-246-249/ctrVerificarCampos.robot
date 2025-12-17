*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrMovimentacao.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${SCREENNAME}  Cadastro de Movimentações
${APPNAME}     ctrMovimentacao
${OBJETIVO}    Verificar todos os campos na te de Movimentações

*** Test Cases ***
Testcase: Verificar todos os campos na tela Cadastro de Movimentações
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Material | Movimentação
  Quando visualizar a tela: Movimentaçâo
  Então devo verificar o campo Movimentação *
  E verificar o campo Tipo de Pessoa *
  E verificar a label Data (Movimentaçâo)
  E verificar a label Hora (Movimentaçâo)
  E verificar a label * Campos obrigatórios
  E quando selecionar a opção C - "C - Colaborador" no campo Tipo de Pessoa
  Então devo verificar a label Colaborador
  E verificar o campo Código do Colaborador
  E verificar a label Empresa
  E verificar a label Tipo do Colaborador
  E verificar a label Cadastro
  E verificar a label Nome do Colaborador
  E verificar a label Data (Colaborador)
  E verificar a label Hora (Colaborador)
  E verificar a label * Campos Obrigatórios (Colaborador)
  E quando selecionar a opção V - "V - Visitante" no campo Tipo de Pessoa
  Então devo verificar a label Visitante
  E verificar o campo Código do Visitante
  E verificar a label Tipo de Documento
  E verificar a label Número do Documento
  E verificar a label Nome do Visitante
  E verificar a label Data (Visitante)
  E verificar a label Hora (Visitante)
  E verificar a label * Campos Obrigatórios (Visitante)
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Material | Movimentação
  resource_mnu.Clicar No Menu Entrada | Material | Movimentação

Quando visualizar a tela: Movimentaçâo
  resource_ctrMovimentacao.Acessar Tela Cadastro de Movimentações

Então devo verificar o campo Movimentação *
  resource_ctrMovimentacao.Verificar o campo Movimentação *

E verificar o campo Tipo de Pessoa *
  resource_ctrMovimentacao.Verificar o campo Tipo de Pessoa *

E verificar a label Data (Movimentaçâo)
  resource_ctrMovimentacao.Verificar a label Data

E verificar a label Hora (Movimentaçâo)
  resource_ctrMovimentacao.Verificar a label Hora

E verificar a label * Campos obrigatórios
    resource_ctrMovimentacao.Verificar a label * Campos Obrigatórios

E quando selecionar a opção C - "${TIPO}" no campo Tipo de Pessoa
  resource_ctrMovimentacao.Selecionar uma opção no campo Tipo de Pessoa "${TIPO}"

Então devo verificar a label Colaborador
  resource_ctrMovimentacao.Verificar a label Colaborador

E verificar o campo Código do Colaborador
  resource_ctrMovimentacao.Verificar o campo Código do Colaborador

E verificar a label Empresa
  resource_ctrMovimentacao.Verificar a label Empresa

E verificar a label Tipo do Colaborador
  resource_ctrMovimentacao.Verificar a label Tipo do Colaborador

E verificar a label Cadastro
  resource_ctrMovimentacao.Verificar a label Cadastro

E verificar a label Nome do Colaborador
  resource_ctrMovimentacao.Verificar a label Nome do Colaborador

E verificar a label Data (Colaborador)
    resource_ctrMovimentacao.Verificar a label Data

E verificar a label Hora (Colaborador)
    resource_ctrMovimentacao.Verificar a label Hora

E verificar a label * Campos Obrigatórios (Colaborador)
    resource_ctrMovimentacao.Verificar a label * Campos Obrigatórios

E quando selecionar a opção V - "${TIPO}" no campo Tipo de Pessoa
    resource_ctrMovimentacao.Selecionar uma opção no campo Tipo de Pessoa "${TIPO}"    
  
Então devo verificar a label Visitante
  resource_ctrMovimentacao.Verificar a label Visitante

E verificar o campo Código do Visitante
  resource_ctrMovimentacao.Verificar o campo Código do Visitante

E verificar a label Tipo de Documento
  resource_ctrMovimentacao.Verificar a label Tipo de Documento

E verificar a label Número do Documento
  resource_ctrMovimentacao.Verificar a label Número do Documento

E verificar a label Nome do Visitante
  resource_ctrMovimentacao.Verificar a label Nome do Visitante

E verificar a label Data (Visitante)
    resource_ctrMovimentacao.Verificar a label Data

E verificar a label Hora (Visitante)
    resource_ctrMovimentacao.Verificar a label Hora

E verificar a label * Campos Obrigatórios (Visitante)
    resource_ctrMovimentacao.Verificar a label * Campos Obrigatórios

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
