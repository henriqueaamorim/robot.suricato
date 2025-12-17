*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Ocorrência | Tipos de Ocorrência

# SCREEN
Acessar Tela: Tipo de Ocorrência (Consulta)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsTipoOcorrencia
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable  Tipo de Ocorrência
  ${ELEMENT}  Set Variable     xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Tipo de Ocorrência
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela: Tipo de Ocorrência (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsTipoOcorrencia
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable  Tipo de Ocorrência
  ${ELEMENT}  Set Variable     xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Tipo de Ocorrência
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Tipo de Ocorrência "${TIPOD}"
  Input Text  xpath=//*[@name="tipoocor"][@type="text"]  ${TIPOD}

Preencher o campo Descrição "${DESCRICAO}"
  Input Text  xpath=//*[@name="desctipoocor"][@type="text"]  ${DESCRICAO}

#VERIFY LABELS

Verificar a label: Tipo de Ocorrência
	${LABEL}   Set Variable  xpath=//td[@class='scGridLabelFont css_tipoocor_label']
	Element Should Contain  ${LABEL}   Tipo de  ${LABEL}   Ocorrência

Verificar a label: Descrição
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]
	Element Should Contain  ${LABEL}   Descrição  

Verificar a label: Enviar E-mail
	${LABEL}   Set Variable  xpath=//td[@class='scGridLabelFont css_envimail_label']
	Element Should Contain  ${LABEL}   Enviar  ${LABEL}   E-mail

Verificar a label: Endereço de E-mail
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Endereço de E-mail')]
	Element Should Contain  ${LABEL}   Endereço de E-mail

Verificar a label: Endereço de Cópia de E-mail
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Endereço de Cópia de E-mail')]
	Element Should Contain  ${LABEL}   Endereço de Cópia de E-mail

Verificar a label: [texto] de E-mail
	${LABEL}   Set Variable  xpath=//td[@class='scGridLabelFont css_textmail_label']
	Element Should Contain  ${LABEL}   [texto]   ${LABEL}   de E-mail

#VERIFY CAMPOS

Verificar o campo: Tipo de Ocorrência
	${LABEL}      Set Variable  xpath=//td[@id='SC_tipoocor_label']
	${CAMPO}      Set Variable  xpath=//input[@name='tipoocor']
	Element Should Contain             ${LABEL}   Tipo  ${LABEL}  de Ocorrência
 	Element Attribute Value Should Be  ${CAMPO}   name  tipoocor

Verificar o campo: Descrição	
	${LABEL}      Set Variable  xpath=//td[@id='SC_desctipoocor_label']
	${CAMPO}      Set Variable  xpath=//input[@name='desctipoocor']
	Element Should Contain             ${LABEL}   Descrição	
 	Element Attribute Value Should Be  ${CAMPO}   name  desctipoocor