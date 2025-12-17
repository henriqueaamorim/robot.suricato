*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Portaria e Recepção

# SCREEN
Acessar Tela Consulta de Portarias
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Portaria
    ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Portarias
    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  ${APPNAME}     Set Variable  cnsPortariascad

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Portaria (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Portaria (Filtro)
  ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')] 
  ${APPNAME}     Set Variable  cnsPortariascad

  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Planta "${PLANTA}"
  Input Text  xpath=//*[@name="codiplan"][@type="text"]  ${PLANTA}

Preencher o campo Portaria "${PORT}"
  Input Text  xpath=//*[@name="codiport"][@type="text"]  ${PORT}


#VERIFY LABELS

Verificar a label Portaria
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td/table/tbody/tr[9]/td/table/tbody/tr/td[2]/table/tbody/tr/td/table/tbody/tr[1]/td[2]
	Element Should Contain  ${LABEL}   Portaria

Verificar a label Descrição
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td/table/tbody/tr[9]/td/table/tbody/tr/td[2]/table/tbody/tr/td/table/tbody/tr[1]/td[3]
	Element Should Contain  ${LABEL}   Descrição

Verificar a label Planta
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td/table/tbody/tr[9]/td/table/tbody/tr/td[2]/table/tbody/tr/td/table/tbody/tr[1]/td[4]
	Element Should Contain  ${LABEL}   Planta



#VERIFY CAMPOS

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Planta 
	${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	${CAMPO}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/input

	Element Should Contain             ${LABEL}   Planta 
 	Element Attribute Value Should Be  ${CAMPO}   name   codiplan

Verificar o campo Portaria
	${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/input

	Element Should Contain             ${LABEL}   Portaria
 	Element Attribute Value Should Be  ${CAMPO}   name   codiport


Verificar o campo Descrição	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição')]
	${CAMPO}      Set Variable  xpath=//input[@name='descport_autocomp']

	Element Should Contain             ${LABEL}   Descrição	
 	Element Attribute Value Should Be  ${CAMPO}   name    descport_autocomp

