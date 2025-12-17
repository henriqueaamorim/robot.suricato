*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmsituacaoveiculo.robot
Resource        ../../../../resource/app/resource_cnssituacaoveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Situações para Veículos - Modo Busca (FIltro)
${SCREENNAME}  Situações para Veículos - Modo Busca
${APPNAME}     cnssituacaoveiculo

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Situações para Veículos - Modo Busca (FIltro)
  [Tags]  VERIFY  246  247 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Cadastro | Situações
  Quando visualizar a tela: Situações para Veículos - Modo Busca (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo visualizar a tela: Situações para Veículos - Modo Busca (FIltro)
  E verificar o campo: Situação do Veículo	
  E verificar o campo: Descrição
  E verificar o campo: Bloqueia Movimentação	
  E verificar o campo: Tipo
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Veículo | Cadastro | Situações
  resource_mnu.Clicar No Menu Veículos | Cadastro | Situações

Quando visualizar a tela: Situações para Veículos - Modo Busca (Consulta)
  resource_cnssituacaoveiculo.Acessar Tela Consulta Situações para Veículos - Modo Busca

E clicar no botão: Pesquisar Registro
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Situações para Veículos - Modo Busca (FIltro)  
  resource_cnssituacaoveiculo.Acessar Tela Situações para Veículos - Modo Busca (Filtro)

E verificar o campo: Situação do Veículo	
  resource_cnssituacaoveiculo.Verificar o campo: Situação do Veículo

E verificar o campo: Descrição
  resource_cnssituacaoveiculo.Verificar o campo: Descrição

E verificar o campo: Bloqueia Movimentação	
  resource_cnssituacaoveiculo.Verificar o campo: Bloqueia Movimentação

E verificar o campo: Tipo  
  resource_cnssituacaoveiculo.Verificar o campo: Tipo

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"