*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrConfiguracaoLGPD.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  LGPD - Configurações de Dados Sensíveis
${APPNAME}     ctrConfiguracaoLGPD
${OBJETIVO}    Verificar todos os campos na tela: LGPD - Configurações de Dados Sensíveis.


*** Test Cases ***
Testcase: Verificar todos os campos na tela: LGPD - Configurações de Dados Sensíveis
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configuração | LGPD - Configurações de Dados Sensíveis
  Quando visualizar a tela: LGPD - Configurações de Dados Sensíveis
  Então devo verificar a label: Dados Sensíveis
  E verificar o campo: Pessoa
  E verificar o campo: Nascimento
  E verificar o campo: Endereço
  E verificar o campo: Telefone
  E verificar o campo: Email
  E verificar o campo: CPF
  E verificar o campo: PIS
  E verificar o campo: Carteira de Habilitação
  E verificar o campo: Carteira de Identidade
  E verificar o campo: Carteira de Trabalho
  E verificar o campo: OAB
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Configuração | LGPD - Configurações de Dados Sensíveis
  resource_mnu.Clicar No Menu Configurações | LGPD - Configurações de Dados Sensíveis

Quando visualizar a tela: LGPD - Configurações de Dados Sensíveis
  resource_ctrConfiguracaoLGPD.Acessar Tela LGPD - Configurações de Dados Sensíveis

Então devo verificar a label: Dados Sensíveis
  resource_ctrConfiguracaoLGPD.Verificar a label Dados Sensíveis

E verificar o campo: Pessoa
  resource_ctrConfiguracaoLGPD.Verificar o campo Pessoa

E verificar o campo: Nascimento
  resource_ctrConfiguracaoLGPD.Verificar o campo Nascimento

E verificar o campo: Endereço
  resource_ctrConfiguracaoLGPD.Verificar o campo Endereço

E verificar o campo: Telefone
  resource_ctrConfiguracaoLGPD.Verificar o campo Telefone

E verificar o campo: Email
  resource_ctrConfiguracaoLGPD.Verificar o campo Email

E verificar o campo: CPF
  resource_ctrConfiguracaoLGPD.Verificar o campo CPF

E verificar o campo: PIS
  resource_ctrConfiguracaoLGPD.Verificar o campo PIS

E verificar o campo: Carteira de Habilitação
  resource_ctrConfiguracaoLGPD.Verificar o campo Carteira de Habilitação

E verificar o campo: Carteira de Identidade
  resource_ctrConfiguracaoLGPD.Verificar o campo Carteira de Identidade

E verificar o campo: Carteira de Trabalho
  resource_ctrConfiguracaoLGPD.Verificar o campo Carteira de Trabalho

E verificar o campo: OAB
  resource_ctrConfiguracaoLGPD.Verificar o campo OAB

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
