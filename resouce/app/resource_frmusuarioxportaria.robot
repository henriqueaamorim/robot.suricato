*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Usuários | Usuário x Portaria

# SCREEN
Acessar Tela Usuário x Portaria
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Usuário x Portaria
  ${APPNAME}     Set Variable  frmusuarioxportaria
  ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Usuário x Portaria (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Usuário x Portaria(Filtro)
  ${APPNAME}     Set Variable  frmusuarioxportaria
  ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#VERIFI LABELS

Verificar a label: Código
	${LABEL}   Set Variable  xpath=(//div[contains(text(),'Código')])[2]
	Element Should Contain  ${LABEL}   Código


Verificar a label: Usuário
	${LABEL}   Set Variable  xpath=(//div[contains(text(),'Usuário')])[2]
	Element Should Contain  ${LABEL}   Usuário

Verificar a label: Portaria
	${LABEL}   Set Variable  xpath=(//div[contains(text(),'Portaria')])[2]
	Element Should Contain  ${LABEL}     Portaria   


#VERIFY CAMPOS

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa


Verificar o campo SEQ
  ${LABEL}  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[1]
  Element Should Contain  ${LABEL}  SEQ


Verificar o campo Código
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}      Set Variable  xpath=//td[contains(text(),'Código')]
	  ${CAMPO}      Set Variable  xpath=//input[@name='idusuar']
  Element Attribute Value Should Be  ${CAMPO}   name     idusuar
  ELSE
    ${LABEL}  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[2]
  END
  Element Should Contain  ${LABEL}  Código

Verificar o campo Usuário
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}      Set Variable  xpath=//td[contains(text(),'Usuário')]
	  ${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[1]
  Element Attribute Value Should Be  ${CAMPO}   class     select2-selection select2-selection--single  
  ELSE
  ${LABEL}  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[3]
  END
  Element Should Contain  ${LABEL}  Usuário

Verificar o campo Portaria
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}      Set Variable  xpath=//td[contains(text(),'Portaria')]
	  ${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[2]
  Element Attribute Value Should Be  ${CAMPO}   class     select2-selection select2-selection--single  
  ELSE
  ${LABEL}  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[4]
  END
  Element Should Contain  ${LABEL}  Portaria


#FIELD
Selecionar uma opção no campo Portaria "${PORTARIA}"
	Select From List By Label  xpath=//*[@name="codiport1"]  ${PORTARIA}  