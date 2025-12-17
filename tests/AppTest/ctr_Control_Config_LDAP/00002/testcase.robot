*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_Control_Config_LDAP.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Definições de Acesso para Configuração LDAP
${APPNAME}     ctr_Control_Config_LDAP
${OBJETIVO}    Verificar todos os campos na tela Definições de Acesso para Configuração LDAP.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Definições de Acesso para Configuração LDAP
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Configurações Gerais | Configuração de LDAP
  Então devo visualizar a tela: Definições de Acesso para Configuração LDAP
  E verificar a label Configuração Acesso Servidor Suricato
  E verificar o campo Endereço IP do Servidor LDAP
  E verificar o campo Porta do Servidor LDAP
  E verificar o campo Domínio LDAP
  E verificar o campo Nome Usuário
  E verificar o campo Senha
  E verificar o campo Search Base para Login/Logoff
  E verificar a label Autenticação
  E verificar o campo Método de Autenticação
  E verificar o campo Autenticação LDAP
  E verificar o campo Search Base
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Configurações | Configurações Gerais | Configuração de LDAP
  resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Configuração de LDAP

Então devo visualizar a tela: Definições de Acesso para Configuração LDAP
  resource_ctr_Control_Config_LDAP.Acessar Tela Definições de Acesso para Configuração LDAP

E verificar a label Configuração Acesso Servidor Suricato
  resource_ctr_Control_Config_LDAP.Verificar a label Configuração Acesso Servidor Suricato

E verificar o campo Endereço IP do Servidor LDAP
  resource_ctr_Control_Config_LDAP.Verificar o campo Endereço IP do Servidor LDAP

E verificar o campo Porta do Servidor LDAP
  resource_ctr_Control_Config_LDAP.Verificar o campo Porta do Servidor LDAP

E verificar o campo Domínio LDAP
  resource_ctr_Control_Config_LDAP.Verificar o campo Domínio LDAP

E verificar o campo Nome Usuário
  resource_ctr_Control_Config_LDAP.Verificar o campo Nome Usuário

E verificar o campo Senha
  resource_ctr_Control_Config_LDAP.Verificar o campo Senha

E verificar o campo Search Base para Login/Logoff
  resource_ctr_Control_Config_LDAP.Verificar o campo Search Base para Login/Logoff

E verificar a label Autenticação
  resource_ctr_Control_Config_LDAP.Verificar a label Autenticação

E verificar o campo Método de Autenticação
  resource_ctr_Control_Config_LDAP.Verificar o campo Método de Autenticação

E verificar o campo Autenticação LDAP
  resource_ctr_Control_Config_LDAP.Verificar o campo Autenticação LDAP

E verificar o campo Search Base
  resource_ctr_Control_Config_LDAP.Verificar o campo Search Base

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
