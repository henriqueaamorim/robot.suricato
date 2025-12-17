*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsMovimentacaoChaves.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Movimentação de Chave (Filtro)
${SCREENNAME}  Movimentação de Chave
${APPNAME}     cnsMovimentacaoChaves

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Movimentação de Chave (Filtro)
  [Tags]   VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Chave | Movimentação de Chave
  Quando visualizar a tela: Movimentação de Chave (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Movimentação de Chave (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Chave
  E verificar o campo: Tipo Colaborador	
  E verificar o campo: Data Retirada	
  E verificar o campo: Empresa
  E verificar o campo: Matrícula
  E verificar o campo: Data Devolução	
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Registro | Chave | Movimentação de Chave
  resource_mnu.Clicar No Menu Registro | Chave | Movimentação de Chave

Quando visualizar a tela: Movimentação de Chave (Consulta)
  resource_cnsMovimentacaoChaves.Acessar Tela Movimentação de Chave

E clicar no botão: Pesquisar registros
    resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Movimentação de Chave (Filtro)  
    resource_cnsMovimentacaoChaves.Acessar Tela Movimentação de Chave (Filtro)

E verificar a label: Pesquisa
  resource_cnsMovimentacaoChaves.Verificar a label Pesquisa

E verificar o campo: Chave
  resource_cnsMovimentacaoChaves.Verificar o campo: Chave

E verificar o campo: Tipo Colaborador	
  resource_cnsMovimentacaoChaves.Verificar o campo: Tipo Colaborador

E verificar o campo: Data Retirada	
  resource_cnsMovimentacaoChaves.Verificar o campo Data Retirada

E verificar o campo: Empresa
  resource_cnsMovimentacaoChaves.Verificar o campo: Empresa

E verificar o campo: Matrícula
  resource_cnsMovimentacaoChaves.Verificar o campo: Matrícula

E verificar o campo: Data Devolução	
  resource_cnsMovimentacaoChaves.Verificar o campo: Data Devolução

E verificar se existe o campo Teste na tela    
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"