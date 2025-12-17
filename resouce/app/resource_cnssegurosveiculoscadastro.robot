*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Frota | Seguros | Cadastro

# SCREEN
Acessar Tela Consulta Seguros de Veículos - Modo Busca
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnssegurosveiculoscadastro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Seguros de Veículos - Modo Busca
	${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta Seguros de Veículos - Modo Busca
  	${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END  

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Seguros de Veículos - Modo Busca (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnssegurosveiculoscadastro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Seguros de Veículos - Modo Busca
	${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta Seguros de Veículos - Modo Busca
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
Preencher o campo Veículo "${VEIC}"
  Input Text  xpath=//*[@name="idveic"][@type="text"]  ${VEIC}

Preencher o campo Número Apólice "${NUM}"
  Input Text  xpath=//*[@name="numeaplosegu"][@type="text"]  ${NUM}

Preencher o campo Corretor "${CORR}"
  Input Text  xpath=//*[@name="idcorr"][@type="text"]  ${CORR}


#VERIFY

Verificar a label Veículo 
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Veículo')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[2]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Veículo 

Verificar a label Corretor
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Corretor')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[3]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Corretor

Verificar a label Número Apólice
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Número Apólice')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[4]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Número Apólice

Verificar a label Data Início
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Data Início')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[5]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Data Início

Verificar a label Data Validade
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Data Validade')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[6]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Data Validade

Verificar a label Valor Segurado
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Valor Segurado')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[7]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Valor Segurado


#VERIFY CAMPOS

Verificar o campo: Veículo
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Veículo')]
	${CAMPO}      Set Variable  xpath=//input[@name='idveic']
	Element Should Contain             ${LABEL}   Veículo
 	Element Attribute Value Should Be  ${CAMPO}   name  idveic

Verificar o campo: Número Apólice	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Número Apólice')]
	${CAMPO}      Set Variable  xpath=//input[@name='numeaplosegu']
	Element Should Contain             ${LABEL}   Número Apólice	
 	Element Attribute Value Should Be  ${CAMPO}   name  numeaplosegu

Verificar o campo: Corretor
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Corretor')]
	${CAMPO}      Set Variable  xpath=//input[@name='idcorr']
	Element Should Contain             ${LABEL}   Corretor
 	Element Attribute Value Should Be  ${CAMPO}   name   idcorr		

