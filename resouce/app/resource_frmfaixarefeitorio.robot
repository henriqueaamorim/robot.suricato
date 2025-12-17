*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Faixa de Acesso de Refeitório

# SCREEN
Acessar Tela Faixa Horária de Refeitório
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Faixa Horária de Refeitório
  ${APPNAME}  Set Variable    frmfaixarefeitorio
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Faixa Horária de Refeitório - Cadastro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Faixa Horária de Refeitório
  ${APPNAME}  Set Variable  frmfaixarefeitorio
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"

  


#BUTTON
#resource_btn.

#FIELD
Selecionar uma opção no campo Planta "${PLANTA}"
  Select From List By Label    xpath=//*[@name="codiplan1"]  ${PLANTA}

Preencher o campo Horário Inicial "${HORARIO}"
  Input Text  xpath=//*[@name="inicmarcaces1"][@type="text"]  ${HORARIO}

Preencher o campo Horário Final "${HORARIO}"
  Input Text  xpath=//*[@name="fimmarcaces1"][@type="text"]  ${HORARIO}



#VERIFY

Verificar a label SEQ
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[1]
	Element Should Contain  ${LABEL}   SEQ

Verificar o campo Baixa de Horário 
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}      Set Variable  xpath=//div[contains(text(),'Baixa de Horário')]
    ${CHECKBOX}   Set Variable  xpath=//input[@name='statregrefei_1[]']
  ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[2]
	  ${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td/input
	END
	Element Should Contain  ${LABEL}   Baixa de Horário 
 	Element Attribute Value Should Be  ${CHECKBOX}   name   statregrefei_1[]

Verificar o campo Planta
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}      Set Variable  xpath=//div[contains(text(),'Planta')]
    ${CHECKBOX}   Set Variable  xpath=//span[@id='select2-id_sc_field_codiplan_1-container']
  ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[3]
	  ${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[2]/td[3]/select
	END
	Element Should Contain  ${LABEL}   Planta
 	Element Attribute Value Should Be  ${CHECKBOX}   id   select2-id_sc_field_codiplan_1-container

Verificar o campo Horário Inicial hh:mm
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL1}      Set Variable  xpath=//div[contains(text(),'Horário Inicial')]
    ${LABEL2}      Set Variable  xpath=//span[contains(text(),'hh:mm')]
    ${CHECKBOX}   Set Variable  xpath=//input[@name='inicmarcaces_1']
  ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[4]
	  ${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[2]/td[4]/input
	END
	Element Should Contain  ${LABEL1}   Horário Inicial
  Element Should Contain  ${LABEL2}   hh:mm
 	Element Attribute Value Should Be  ${CHECKBOX}   name   inicmarcaces_1

Verificar o campo Horário Final hh:mm
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL1}      Set Variable  xpath=//div[contains(text(),'Horário Final')]
    ${LABEL2}      Set Variable  xpath=//span[contains(text(),'hh:mm')]
    ${CHECKBOX}   Set Variable  xpath=//input[@name='fimmarcaces_1']
  ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[5]
	  ${CHECKBOX}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[2]/td[5]/input
	END
	Element Should Contain  ${LABEL1}   Horário Final 
  Element Should Contain  ${LABEL2}   hh:mm
 	Element Attribute Value Should Be  ${CHECKBOX}   name   fimmarcaces_1
