*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Configuração de LDAP

# SCREEN
Acessar Tela Definições de Acesso para Configuração LDAP
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Definições de Acesso para Configuração LDAP
  ${APPNAME}  Set Variable  ctr_Control_Config_LDAP
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  



#BUTTON
#resource_btn.



#VERIFY

Verificar a label Configuração Acesso Servidor Suricato
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Configuração Acesso Servidor Suricato

Verificar o campo Endereço IP do Servidor LDAP
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Endereço IP do Servidor LDAP
 	Element Attribute Value Should Be  ${CAMPO}   name   end_server_ldap

Verificar o campo Porta do Servidor LDAP
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Porta do Servidor LDAP
 	Element Attribute Value Should Be  ${CAMPO}   name   porta_ldap

Verificar o campo Domínio LDAP
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Domínio LDAP
 	Element Attribute Value Should Be  ${CAMPO}   name  domain_ldap 

Verificar o campo Nome Usuário
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Nome Usuário
 	Element Attribute Value Should Be  ${CAMPO}   name   username_ldap

Verificar o campo Senha
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Senha
 	Element Attribute Value Should Be  ${CAMPO}   name   password_ldap

Verificar o campo Search Base para Login/Logoff
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Search Base para Login/Logoff
 	Element Attribute Value Should Be  ${CAMPO}   name  searchbase_login 

Verificar a label Autenticação
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Autenticacão

Verificar o campo Método de Autenticação
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	
	Element Should Contain  ${LABEL}   Método de Autenticação
 	Element Attribute Value Should Be  ${CAMPO}   name   auten_metodo

Verificar o campo Autenticação LDAP
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	
	Element Should Contain  ${LABEL}   Autenticação LDAP
 	Element Attribute Value Should Be  ${CAMPO}   name   autentica_ldap

Verificar o campo Search Base
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Search Base
 	Element Attribute Value Should Be  ${CAMPO}   name   searchbase_ldap



#FIELD
Preencher o campo Endereço IP do Servidor LDPA "${ENDEREÇO_IP_DO_SERVIDOR_LDPA}"
	Input Text  xpath=//*[@name="end_server_ldap"][@type="text"]  ${ENDEREÇO_IP_DO_SERVIDOR_LDPA}

Preencher o campo Porta do Servidor LDPA "${PORTA_DO_SERVIDOR_LDPA}"
	Input Text  xpath=//*[@name="porta_ldap"][@type="text"]  ${PORTA_DO_SERVIDOR_LDPA}

Preencher o campo Domínio LDPA "${DOMÍNIO_LDPA}"
	Input Text  xpath=//*[@name="domain_ldap"][@type="text"]  ${DOMÍNIO_LDPA}

Preencher o campo Nome Usuário "${NOME_USUÁRIO}"
	Input Text  xpath=//*[@name="username_ldap"][@type="text"]  ${NOME_USUÁRIO}

Preencher o campo Senha "${SENHA}"
	Input Text  xpath=//*[@name="password_ldap"][@type="password"]  ${SENHA}

Preencher o campo Search Base para Login/Logoff "${SEARCH_BASE_PARA_LOGIN/LOGOFF}"
	Input Text  xpath=//*[@name="searchbase_login"][@type="text"]  ${SEARCH_BASE_PARA_LOGIN/LOGOFF}

Selecionar uma opção no campo Método de Autenticação "${MÉTODO_DE_AUTENTICAÇÃO}"
	Select From List By Label  xpath=//*[@name="auten_metodo"]  ${MÉTODO_DE_AUTENTICAÇÃO}

Selecionar uma opção no campo Autenticação LDPA "${AUTENTICAÇÃO_LDPA}"
	Select From List By Label  xpath=//*[@name="autentica_ldap"]  ${AUTENTICAÇÃO_LDPA}

Preencher o campo Search Base "${SEARCH_BASE}"
	Input Text  xpath=//*[@name="searchbase_ldap"][@type="text"]  ${SEARCH_BASE}

