*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Visitante | Aprovar Solicitação de Visita

# SCREEN
Acessar Tela: Aprovação de Visita 
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  consAprovacacaoVisitasSolicitadas
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable   Aprovação de Visita
  ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Aprovar Solicitação de Visita 
  ${ELEMENT}  Set Variable    xpath=
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela: Aprovação de Visita (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  consAprovacacaoVisitasSolicitadas
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable   Aprovação de Visita (Filtro)
  ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME}' )]
  ELSE
  ${SCREENNAME}  Set Variable  Aprovar Solicitação de Visita 
  ${ELEMENT}  Set Variable    xpath=
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  


#BUTTON
#resource_btn.

#VERIFY CAMPOS

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa

Verificar campo: Data Prevista	
	${LABEL}       Set Variable  xpath=//td[contains(text(),'Data Prevista')]
	${CAMPO1}      Set Variable  xpath=//input[@name='dataprev_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='dataprev_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='dataprev_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@name='dataprev_input_2_dia']
  ${CAMPO5}      Set Variable  xpath=//input[@name='dataprev_input_2_mes']
  ${CAMPO6}      Set Variable  xpath=//input[@name='dataprev_input_2_ano']
	Element Should Contain             ${LABEL}    Data Prevista
 	Element Attribute Value Should Be  ${CAMPO1}   name   dataprev_dia
  Element Attribute Value Should Be  ${CAMPO2}   name   dataprev_mes
  Element Attribute Value Should Be  ${CAMPO3}   name   dataprev_ano
  Element Attribute Value Should Be  ${CAMPO4}   name   dataprev_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}   name   dataprev_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}   name   dataprev_input_2_ano

Verificar o campo: Tipo de Documento	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo de Documento')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain             ${LABEL}   Tipo de Documento	
  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single

Verificar o campo: Número do Documento	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Número do Documento')]
	${CAMPO}      Set Variable  xpath=//input[@name='numedocuvisi']
	Element Should Contain             ${LABEL}   Número do Documento	
  Element Attribute Value Should Be  ${CAMPO}   name   numedocuvisi


