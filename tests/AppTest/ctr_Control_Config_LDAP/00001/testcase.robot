*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_Control_Config_LDAP.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Definições de Acesso para Configuração LDAP
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Configurações Gerais | Configuração de LDAP
  Então devo visualizar a tela: Definições de Acesso para Configuração LDAP

*** Keywords ***
Dado que eu acesse o menu: Configurações | Configurações Gerais | Configuração de LDAP
  resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Configuração de LDAP

Então devo visualizar a tela: Definições de Acesso para Configuração LDAP
  resource_ctr_Control_Config_LDAP.Acessar Tela Definições de Acesso para Configuração LDAP
