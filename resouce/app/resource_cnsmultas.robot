*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Infrações | Multas

# SCREEN
Acessar Tela Consulta de Multas
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnsmultas
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Multa
  	${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Multas
 	${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
   
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Multa (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnsmultas
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Multa
  	${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Multas
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
Preencher o campo Descrição da Infrações "${DESCRICAO}"
  Input Text  xpath=//*[@name="descinfrtran"][@type="text"]  ${DESCRICAO}

Preencher o campo Enquadramento CTB "${ENQ}"
  Input Text  xpath=//*[@name="enqucoditran"][@type="text"]  ${ENQ}

Selecionar uma opção no campo Gravidade "${GRAV}"
  Select from list by label  xpath=//*[@name="gravinfr"]  ${GRAV}

Preencher o campo Pontos "${PTS}"
  Input Text  xpath=//*[@name="quanpont"][@type="text"]  ${PTS}

#VERIFY CAMPOS

Verificar o campo: Código da Infração
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Código da Infração')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[3]/font/b
	END
	Element Should Contain  ${LABEL}   Código da Infrações

Verificar o campo: Descrição da Infração
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição da Infração')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[4]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Descrição da Infrações

Verificar o campo: Enquadramento CTB
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Enquadramento CTB')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[5]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Enquadramento CTB

Verificar o campo: Gravidade
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Gravidade')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[6]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Gravidade

Verificar o campo: Responsabilidade 
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Responsabilidade')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[7]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Responsabilidade 

Verificar o campo: Competência
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Competência')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[8]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Competência

Verificar o campo: Pontos
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Pontos')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[9]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Pontos




