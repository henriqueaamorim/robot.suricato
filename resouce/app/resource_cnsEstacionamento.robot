*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Estacionamento | Cadastro de Estacionamentos

# SCREEN
Acessar Tela Consulta de Estacionamento
  ${OBJ}         Set Variable    SCN
  ${SCREENNAME}  Set Variable    Consulta de Estacionamento
  ${APPNAME}     Set Variable    cnsEstacionamento
  ${ELEMENT}     Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Consulta de Estacionamento (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Estacionamento
  ${APPNAME}     Set Variable  cnsEstacionamento
  ${ELEMENT}     Set Variable  xpath=(//td[@class='scFilterHeaderFont'])[4]

  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

#VARIFY LABELS

Verificar a label Código
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código')]
	Element Should Contain  ${LABEL}   Código

Verificar a label Descrição
	${LABEL}   Set Variable  xpath=(//div[contains(text(),'Descrição')])[2]
	 Element Should Contain  ${LABEL}   Descrição

Verificar a label Vagas Fixas
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Vagas Fixas')]
	Element Should Contain  ${LABEL}   Vagas Fixas


Verificar a label Vagas Rotativas
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Vagas Rotativas')]
	Element Should Contain  ${LABEL}   Vagas Rotativas
  

#VARIFY CAMPOS

Verificar o campo Descrição
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição')]
	${CAMPO}      Set Variable  xpath=//input[@name='estadesc_autocomp']

	Element Should Contain             ${LABEL}  Descrição
 	Element Attribute Value Should Be  ${CAMPO}   name   estadesc_autocomp

#FIELD
Preencher o campo Descrição "${DESCRICAO}"
  Input Text  xpath=//*[@name="estadesc"][@type="text"]  ${DESCRICAO}