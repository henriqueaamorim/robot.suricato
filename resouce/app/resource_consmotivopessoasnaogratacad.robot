*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Pessoa Não Grata | Motivo

# SCREEN
Acessar Tela: Motivo de Pessoa não Grata (Consulta)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  consmotivopessoasnaogratacad
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable  Motivo de Pessoa não Grata
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Motivos de Pessoas não Gratas
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela: Motivo de Pessoa não Grata (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  consmotivopessoasnaogratacad
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable  Motivo de Pessoa não Grata
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Motivos de Pessoas não Gratas
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
Preencher o campo Código do Motivo "${COD}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${COD}

Preencher o campo Descrição do Motivo "${DESC}"  
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${DESC}

#VERIFY LABELS

Verificar a label: Código
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código')]
	Element Should Contain  ${LABEL}   Código

Verificar a label: Descrição
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]
	Element Should Contain  ${LABEL}   Descrição

Verificar a label: Procedimento Padrão
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Procedimento Padrão')]
	Element Should Contain  ${LABEL}   Procedimento Padrão

#VERIFY CAMPOS

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo: Descrição
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição')]
	${CAMPO}      Set Variable  xpath=//input[@name='descmoti']
	Element Should Contain             ${LABEL}   Descrição
 	Element Attribute Value Should Be  ${CAMPO}   name  descmoti

Verificar o campo: Código
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Código')]
	${CAMPO}      Set Variable  xpath=//input[@name='codimoti']
	Element Should Contain             ${LABEL}   Código
 	Element Attribute Value Should Be  ${CAMPO}   name  codimoti

Verificar o campo: Procedimento Padrão	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Procedimento Padrão')]
	${CAMPO}      Set Variable  xpath=//input[@name='procpadr']
	Element Should Contain             ${LABEL}   Procedimento Padrão	
 	Element Attribute Value Should Be  ${CAMPO}   name   procpadr   
    