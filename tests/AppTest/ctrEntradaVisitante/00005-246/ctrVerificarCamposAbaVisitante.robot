*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctropcoesentrada.robot
Resource        ../../../../resource/app/resource_ctrEntradaVisitante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Entrada de Visitante
${APPNAME}     ctrentradavisitante
${OBJETIVO}    Verificar todos os campos na tela: Entrada de Visitante (Aba: Visitante)


*** Test Cases ***
Testcase: Verificar todos os campos na tela: Entrada de Visitante (Aba: Visitante)
  [Tags]   VERIFY  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitante
  E visualizar a tela: Opções de Entrada de Visitante
  E clicar no botão: Cadastrar Entrada
  E visualizar a tela: Entrada de Visitante
  E clicar na Aba: Visitante
  Então devo verificar o botão: Pesquisar
  E verificar o campo: Tipo de Documento
  E verificar o campo: Número Documento
  E verificar o campo: Estado Emissor
  E verificar o campo: Órgão Emissor
  E verificar o campo: Nome do Visitante
  E verificar o campo: Email
  E verificar o campo: Telefone
  E verificar o campo: Empresa Terceira
  E verificar o campo: PNE
  E verificar a label: Biometria
  E verificar a label: Padrão
  E verificar a label: Alternativo	
  E verificar a label: Coação
  E verificar a label: * Campos obrigatórios
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitante
  resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Visitante

E visualizar a tela: Opções de Entrada de Visitante
  resource_ctropcoesentrada.Acessar Tela Opções de Entrada de Visitante

E clicar no botão: Cadastrar Entrada
  resource_btn.Clicar No Botão Cadastrar Entrada

E visualizar a tela: Entrada de Visitante
  resource_ctrentradavisitante.Acessar Tela Entrada de Visitante

E clicar na Aba: Visitante
    resource_ctrentradavisitante.Clicar Na Aba: Visitante

Então devo verificar o botão: Pesquisar
    resource_ctrentradavisitante.Verificar o Botão: Pesquisar (Aba Visitante)

E verificar o campo: Tipo de Documento
    resource_ctrentradavisitante.Verificar o campo: Tipo de Documento

E verificar o campo: Número Documento
    resource_ctrentradavisitante.Verificar o campo: Número Documento

E verificar o campo: Estado Emissor
    resource_ctrentradavisitante.Verificar o campo: Estado Emissor

E verificar o campo: Órgão Emissor
    resource_ctrentradavisitante.Verificar o campo: Órgão Emissor

E verificar o campo: Nome do Visitante
    resource_ctrentradavisitante.Verificar o campo: Nome do Visitante

E verificar o campo: Email
    resource_ctrentradavisitante.Verificar o campo: Email

E verificar o campo: Telefone
    resource_ctrentradavisitante.Verificar o campo: Telefone

E verificar o campo: Empresa Terceira
    resource_ctrentradavisitante.Verificar o campo: Empresa Terceira

E verificar o campo: PNE
    resource_ctrentradavisitante.Verificar o campo: PNE

E verificar a label: Biometria
    resource_ctrentradavisitante.Verificar a label: Biometria

E verificar a label: Padrão
    resource_ctrentradavisitante.Verificar a label: Padrão

E verificar a label: Alternativo	
    resource_ctrentradavisitante.Verificar a label: Alternativo

E verificar a label: Coação    
    resource_ctrentradavisitante.Verificar a label: Coação

E verificar a label: * Campos obrigatórios 
    resource_ctrentradavisitante.Verificar a label: * Campos obrigatórios

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"