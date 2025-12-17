*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI

# SCREEN
Acessar Tela Cadastro de EPI
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${SCREENNAME}  Set Variable  EPI
      ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'EPI')]
  ELSE
      ${SCREENNAME}  Set Variable  Cadastro de EPI
      ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  ${APPNAME}  Set Variable  cnsCadastroEPI

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Cadastro de EPI (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  EPI
  ${APPNAME}     Set Variable  cnsCadastroEPI
  ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME} ')]

  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.


#VERIFY 

Verificar a label Cód.
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Cód.')]
	Element Should Contain  ${LABEL}   Cód.

Verificar a label Descrição Cód
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]
	Element Should Contain  ${LABEL}   Descrição


Verificar a label Tipo
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo')]
	Element Should Contain  ${LABEL}   Tipo

Verificar a label Descrição Tipo
	${LABEL}   Set Variable  xpath=(//div[contains(text(),'Descrição')])[2]
	Element Should Contain  ${LABEL}   Descrição

Verificar a label Validade (Dias)
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Validade (Dias)')]
	Element Should Contain  ${LABEL}   Validade (Dias)

Verificar a label Revisão (Dias)
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Revisão (Dias)')]
	Element Should Contain  ${LABEL}   Revisão (Dias)



#VERIFY

Verificar o campo Descrição
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição')]
	${CAMPO}      Set Variable  xpath=//input[@name='descepi']

	Element Should Contain             ${LABEL}   Descrição
 	Element Attribute Value Should Be  ${CAMPO}   name   descepi

Verificar o campo Tipo
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']

	Element Should Contain             ${LABEL}   Tipo
  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single



#FIELD
Preencher o campo Descrição "${DESCRIÇÃO}"
	Input Text  xpath=//*[@name="descepi"][@type="text"]  ${DESCRIÇÃO}

Selecionar uma opção no campo Tipo "${TIPO}"
	Select From List By Label  xpath=//*[@name="coditipoepi"]  ${TIPO}

