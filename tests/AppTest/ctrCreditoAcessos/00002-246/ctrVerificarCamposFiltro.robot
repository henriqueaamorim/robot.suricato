*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrCreditoAcessos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Créditos de Acesso
${SCREENNAME}  Créditos de Acessos
${APPNAME}     ctrCreditoAcessos

*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Créditos de Acesso
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Créditos de Acessos
  Quando clicar na aba: Crédito de Acesso
  Então devo visualizar a tela: Créditos de Acessos (Consulta)
  E verificar o campo: Tipo
  E verificar o campo: Quantidade de Crédito	
  E verificar o campo: Data Inicial	
  E verificar o campo: Data Final	
  E verificar o campo: Início da Faixa	
  E verificar o campo: Final da Faixa	
  E verificar o campo: Colaboradores selecionados	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Registro | Créditos de Acessos
  resource_mnu.Clicar No Menu Registro | Créditos de Acessos

Quando clicar na aba: Crédito de Acesso
  resource_ctrCreditoAcessos.Clicar na Aba: Crédito de Acesso

Então devo visualizar a tela: Créditos de Acessos (Consulta)
  resource_ctrCreditoAcessos.Acessar Tela: Créditos de Acessos

E verificar o campo: Tipo
  resource_ctrCreditoAcessos.Verificar o campo: Tipo

E verificar o campo: Quantidade de Crédito	
  resource_ctrCreditoAcessos.Verificar o campo: Quantidade de Crédito

E verificar o campo: Data Inicial	
  resource_ctrCreditoAcessos.Verificar o campo: Data Inicial

E verificar o campo: Data Final	
  resource_ctrCreditoAcessos.Verificar o campo: Data Final

E verificar o campo: Início da Faixa	
  resource_ctrCreditoAcessos.Verificar o campo: Início da Faixa

E verificar o campo: Final da Faixa	
  resource_ctrCreditoAcessos.Verificar o campo: Final da Faixa

E verificar o campo: Colaboradores selecionados	
  resource_ctrCreditoAcessos.Verificar o campo: Colaboradores selecionados

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"  	