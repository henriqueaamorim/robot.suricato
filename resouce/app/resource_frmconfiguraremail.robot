*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Email

# SCREEN
Acessar Tela Configuração do E-mail (Atualização)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmconfiguraremail
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
     ${SCREENNAME}  Set Variable  Configuração do E-mail
  ELSE
     ${SCREENNAME}  Set Variable  Configuração do E-mail (Atualização)
  END
     ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Configuração do E-mail (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Configuração do E-mail (Inclusão)
  ${APPNAME}  Set Variable  frmconfiguraremail
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Nome do Servidor SMTP "${SERVER}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${SERVER}

Preencher o campo Porta IP "${PORTA}"  
  Input Text  xpath=//*[@name="portaip"][@type="text"]  ${PORTA}

Preencher o campo Endereço do Usuário de Origem das Mensagens "${EMAIL}"
  Input Text  xpath=//*[@name="usuasmtp"][@type="text"]  ${EMAIL}

Preencher o campo Senha SMTP (Opcional) "${SENHA}"
  Input Text  xpath=//*[@name="txtnovasenha"][@type="text"]  ${SENHA}

Preencher o campo Confirmação Senha SMTP (Opcional) "${SENHA}"
  Input Text  xpath=//*[@name="confsenhsmtp"][@type="text"]  ${SENHA}

Preencher o campo Usuário Autenticação (Opcional) "${USUARIO}"
  Input Text  xpath=//*[@name="autestmp"][@type="text"]  ${USUARIO}

Clicar na opção "Sim" no campo Usa SSL
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[7]/td[2]/table/tbody/tr/td/input

Clicar na opção "Sim" no campo Usa TLS
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[8]/td[2]/table/tbody/tr/td/input

Clicar na opção "Sim" no campo Permitir Alterar Remetente
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[9]/td[2]/table/tbody/tr/td/input

Clicar na opção "Sim" no campo Solicitar Confirmação de Entrega
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[10]/td[2]/table/tbody/tr/td/input



#VERIFY

Verificar o campo Nome do Servidor SMTP *
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//span[contains(text(),'Nome do Servidor SMTP')]
	  ${CAMPO}   Set Variable  xpath=//input[@name='nomeserv']
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	  ${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input
	END
	Element Should Contain  ${LABEL}   Nome do Servidor SMTP
 	Element Attribute Value Should Be  ${CAMPO}   name   nomeserv

Verificar o campo Porta IP *
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//span[contains(text(),'Porta IP')]
	  ${CAMPO}   Set Variable  xpath=//input[@name='portaip']
	ELSE
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
	END
	Element Should Contain  ${LABEL}   Porta IP
 	Element Attribute Value Should Be  ${CAMPO}   name   portaip

Verificar o campo Endereço do Usuário de Origem das Mensagens *
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//span[contains(text(),'Endereço do Usuário de Origem das Mensagens')]
	  ${CAMPO}   Set Variable  xpath=//input[@name='usuasmtp']
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	  ${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input
	END
	Element Should Contain  ${LABEL}   Endereço do Usuário de Origem das Mensagens
 	Element Attribute Value Should Be  ${CAMPO}   name   usuasmtp

Verificar o campo Senha SMTP (Opcional)
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//span[contains(text(),'Senha SMTP (Opcional)')]
	  ${CAMPO}   Set Variable  xpath=//input[@name='txtnovasenha']
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	  ${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input
	END
	Element Should Contain  ${LABEL}   Senha SMTP (Opcional)
 	Element Attribute Value Should Be  ${CAMPO}   name   txtnovasenha

Verificar o campo Usuário Autenticação (Opcional)
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//span[contains(text(),'Usuário Autenticação (Opcional')]
	  ${CAMPO}   Set Variable  xpath=//input[@name='autestmp']
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	  ${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/input
	END
	Element Should Contain  ${LABEL}   Usuário Autenticação (Opcional)
 	Element Attribute Value Should Be  ${CAMPO}   name   autestmp

Verificar o campo Usa SSL
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}      Set Variable  xpath=//span[contains(text(),'Usa SSL')]
	  ${CHECKBOX}   Set Variable  xpath=//input[@name='usassl[]']
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	  ${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/table/tbody/tr/td/input
	END
	Element Should Contain  ${LABEL}   Usa SSL
 	Element Attribute Value Should Be  ${CHECKBOX}   name   usassl[]

Verificar o campo Usa TLS
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}      Set Variable  xpath=//span[contains(text(),'Usa TLS')]
	  ${CHECKBOX}   Set Variable  xpath=//input[@name='usatls[]']
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	  ${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/table/tbody/tr/td/input
	END
	Element Should Contain  ${LABEL}   Usa TLS
 	Element Attribute Value Should Be  ${CHECKBOX}   name   usatls[]

Verificar o campo Permitir Alterar Remetente
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}      Set Variable  xpath=//span[contains(text(),'Permitir Alterar Remetente')]
	  ${CHECKBOX}   Set Variable  xpath=//input[@name='modireme[]']
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[1]
	  ${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[2]/table/tbody/tr/td/input
	END
	Element Should Contain  ${LABEL}   Permitir Alterar Remetente
 	Element Attribute Value Should Be  ${CHECKBOX}   name   modireme[]

Verificar o campo Solicitar Confirmação de Entrega
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}      Set Variable  xpath=//span[contains(text(),'Solicitar Confirmação de Entrega')]
	  ${CHECKBOX}   Set Variable  xpath=//input[@name='confmail[]']
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[1]
	  ${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[2]/table/tbody/tr/td/input
	END
	Element Should Contain  ${LABEL}   Solicitar Confirmação de Entrega
 	Element Attribute Value Should Be  ${CHECKBOX}   name   confmail[]
