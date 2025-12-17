*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Cadastro | Motivo de Uso

# SCREEN
Acessar Tela Consulta Motivos de Uso da Frota
  ${OBJ}         Set Variable  SCN
  
  ${APPNAME}     Set Variable  cnsmotivosusofrota
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable   Motivos de Uso da Frota
    ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE  
    ${SCREENNAME}  Set Variable  Consulta Motivos de Uso da Frota
    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END 
   
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Consulta Motivos de Uso da Frota (Filtro)
  ${OBJ}         Set Variable  SCN
  
  ${APPNAME}     Set Variable  cnsmotivosusofrota
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable   Motivos de Uso da Frota
    ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME} ')] 
  ELSE  
    ${SCREENNAME}  Set Variable  Consulta Motivos de Uso da Frota
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
Preencher o campo Motivo do Uso "${NUM}"
  Input Text  xpath=//*[@name="motiusoveic"][@type="text"]   ${NUM}

Preencher o campo Descrição "${DESC}"
  Input Text  xpath=//*[@name="desctipousoc"][@type="text"]  ${DESC}

Selecionar uma opção no campo Tipo de Uso "${TIP}"
  Select from list by label  xpath=//*[@name="tipouso"]  ${TIP}  


#VERIFY

Verificar a label Motivo do Uso
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}   Set Variable  xpath=//div[contains(text(),'Motivo do Uso')]
  ELSE
    ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[3]/font/b/a/font
	END
  Element Should Contain  ${LABEL}   Motivo do Uso

Verificar a label Descrição
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]
  ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[4]/font/b/a/font
	END
  Element Should Contain  ${LABEL}   Descrição

Verificar a label Tipo de Uso
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo de Uso')]
  ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[5]/font/b/a/font
	END
  Element Should Contain  ${LABEL}   Tipo de Uso

#VERIFY CAMPOS

Verificar o campo: Motivo do Uso	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Motivo do Uso')]
	${CAMPO}      Set Variable  xpath=//input[@name='motiusoveic']
	Element Should Contain             ${LABEL}   Motivo do Uso	
 	Element Attribute Value Should Be  ${CAMPO}   name  motiusoveic

Verificar o campo: Descrição	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição')]
	${CAMPO}      Set Variable  xpath=//input[@name='desctipousoc']
	Element Should Contain             ${LABEL}   Descrição	
 	Element Attribute Value Should Be  ${CAMPO}   name  desctipousoc

Verificar o campo: Tipo de Uso	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo de Uso')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain             ${LABEL}   Tipo de Uso	
 	Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single      
