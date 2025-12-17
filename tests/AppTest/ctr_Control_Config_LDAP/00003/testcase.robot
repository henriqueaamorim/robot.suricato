*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_Control_Config_LDAP.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos na tela Definições de Acesso para Configuração LDAP.


*** Test Cases ***

Testcase: Preencher todos os campos na tela Definições de Acesso para Configuração LDAP
  [Tags]  REGISTER  POLYVALENT
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Configurações Gerais | Configuração de LDAP
  Então devo visualizar a tela: Definições de Acesso para Configuração LDAP
  E preencher o campo Endereço IP do Servidor LDPA "1721614249"
  E preencher o campo Porta do Servidor LDPA "12"
  E preencher o campo Domínio LDPA "Suricato"
  E preencher o campo Nome Usuário "ADMIN"
  E preencher o campo Senha "123"
  E preencher o campo Search Base para Login/Logoff "abab"
  E selecionar uma opção no campo Método de Autenticação "Oracle Identity Manager"
  Selecionar uma opção no campo Autenticação LDPA "Default"
  E preencher o campo Search Base "M"

*** Keywords ***
Dado que eu acesse o menu: Configurações | Configurações Gerais | Configuração de LDAP
  resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Configuração de LDAP

Então devo visualizar a tela: Definições de Acesso para Configuração LDAP
  resource_ctr_Control_Config_LDAP.Acessar Tela Definições de Acesso para Configuração LDAP

E preencher o campo Endereço IP do Servidor LDPA "${ENDEREÇO_IP_DO_SERVIDOR_LDPA}"
  resource_ctr_Control_Config_LDAP.Preencher o campo Endereço IP do Servidor LDPA "${ENDEREÇO_IP_DO_SERVIDOR_LDPA}"

E preencher o campo Porta do Servidor LDPA "${PORTA_DO_SERVIDOR_LDPA}"
  resource_ctr_Control_Config_LDAP.Preencher o campo Porta do Servidor LDPA "${PORTA_DO_SERVIDOR_LDPA}"

E preencher o campo Domínio LDPA "${DOMÍNIO_LDPA}"
  resource_ctr_Control_Config_LDAP.Preencher o campo Domínio LDPA "${DOMÍNIO_LDPA}"

E preencher o campo Nome Usuário "${NOME_USUÁRIO}"
  resource_ctr_Control_Config_LDAP.Preencher o campo Nome Usuário "${NOME_USUÁRIO}"

E preencher o campo Senha "${SENHA}"
  resource_ctr_Control_Config_LDAP.Preencher o campo Senha "${SENHA}"

E preencher o campo Search Base para Login/Logoff "${SEARCH_BASE_PARA_LOGIN/LOGOFF}"
  resource_ctr_Control_Config_LDAP.Preencher o campo Search Base para Login/Logoff "${SEARCH_BASE_PARA_LOGIN/LOGOFF}"

E selecionar uma opção no campo Método de Autenticação "${MÉTODO_DE_AUTENTICAÇÃO}"
  resource_ctr_Control_Config_LDAP.Selecionar uma opção no campo Método de Autenticação "${MÉTODO_DE_AUTENTICAÇÃO}"

Selecionar uma opção no campo Autenticação LDPA "${AUTENTICAÇÃO_LDPA}"
  resource_ctr_Control_Config_LDAP.Selecionar uma opção no campo Autenticação LDPA "${AUTENTICAÇÃO_LDPA}"

E preencher o campo Search Base "${SEARCH_BASE}"
  resource_ctr_Control_Config_LDAP.Preencher o campo Search Base "${SEARCH_BASE}"
