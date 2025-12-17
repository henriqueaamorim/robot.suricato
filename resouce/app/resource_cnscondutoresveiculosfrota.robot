*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Condutores

# SCREEN
Acessar Tela Consulta Condutores de Veículos de Frota
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnscondutoresveiculosfrota
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${SCREENNAME}  Set Variable  Condutores de Veículos de Frota
	  ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]
	ELSE
	  ${SCREENNAME}  Set Variable  Consulta Condutores de Veículos de Frota
	  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END 

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Condutores de Veículos de Frota (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnscondutoresveiculosfrota
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${SCREENNAME}  Set Variable  Condutores de Veículos de Frota
	  ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME} ')]
	ELSE
	  ${SCREENNAME}  Set Variable  Consulta Condutores de Veículos de Frota
	  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END 
  
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.


#FIELD
Preencher o campo Condutor "${NUM}"
  Input Text  xpath=//*[@name="idcodicond"][@type="text"]  ${NUM}
	#Necessário clicar fora para validar a inserção do registro
	Click Element  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]


#VERIFY

Verificar a label Condutor
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Condutor')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[2]/font/b
	END
	Element Should Contain  ${LABEL}   Condutor

Verificar a label Carteira Habilitação
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Carteria Habilitação')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[3]/font/b
	END
	Element Should Contain  ${LABEL}   Carteria Habilitação

Verificar a label Categoria Habilitação
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Categoria Habilitação')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[4]/font/b
	END
	Element Should Contain  ${LABEL}   Categoria Habilitação

Verificar a label Data Habilitação
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Data Habilitação')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[5]/font/b
	END
	Element Should Contain  ${LABEL}   Data Habilitação

Verificar a label Vencimento Habilitação
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Vencimento Habilitação')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[6]/font/b
	END
	Element Should Contain  ${LABEL}   Vencimento Habilitação

#VERIFY CAMPOS

Verificar o campo: Condutor
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Condutor')]
	${CAMPO}      Set Variable  xpath=//input[@name='idcodicond']
	Element Should Contain             ${LABEL}   Condutor
 	Element Attribute Value Should Be  ${CAMPO}   name  idcodicond