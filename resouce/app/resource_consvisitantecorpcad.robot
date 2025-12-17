*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Visitante | Cadastro de Visitante

# SCREEN
Acessar Tela: Visitante (Consulta)
  ${OBJ}      Set Variable  SCN
  ${APPNAME}  Set Variable  consvisitantecorpcad
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable    Visitante
  ${ELEMENT}     Set Variable    xpath=(//td[@class='scGridHeaderFont'])[4]
  ELSE
  ${SCREENNAME}  Set Variable
  ${ELEMENT}  Set Variable    xpath=
  END  

  Sleep  3s
  Mudar Frame Aplicação "TB_iframeContent"
  Sleep  2s
  Wait Until Element is Visible   ${ELEMENT}   
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela: Visitante (Filtro)
  ${OBJ}      Set Variable  SCN
  ${APPNAME}  Set Variable  consvisitantecorpcad
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable   Visitante
  ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME}' )]
  ELSE
  ${SCREENNAME}  Set Variable
  ${ELEMENT}  Set Variable    xpath=
  END  
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#BUTTON
#resource_btn.

#FIELD
Selecionar uma opção no campo Tipo do Documento do Visitante "${DOC}"
  Select from list by label  xpath=//*[@name="tbvisit_tipodocuvisi"]  ${DOC}

Preencher o campo Número do Documento do Visitante "${DOC}"
  Input Text  xpath=//*[@name="tbvisit_numedocuvisi"][@type="text"]  ${DOC}

Preencher o campo Nome do Visitante "${NVIS}"
  Input Text  xpath=//*[@name="tbpessoa_nomepess"][@type="text"]  ${NVIS}

#VERIFY LABELS

Verificar a label Código
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código')]
	Element Should Contain  ${LABEL}   Código

Verificar a label Tipo de Documento
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo de Documento')]
	Element Should Contain  ${LABEL}   Tipo de Documento

Verificar a label Número do Documento
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Número do Documento')]
	Element Should Contain  ${LABEL}   Número do Documento

Verificar a label Nome
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome')]
	Element Should Contain  ${LABEL}   Nome      

#VERIFY CAMPOS

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Tipo de Documento	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo de Documento')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain             ${LABEL}   Tipo de Documento
  Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single

Verificar o campo Número do Documento	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Número do Documento')]
	${CAMPO}      Set Variable  xpath=//input[@name='numedocuvisi']
	Element Should Contain             ${LABEL}   Número do Documento	
 	Element Attribute Value Should Be  ${CAMPO}   name  numedocuvisi

Verificar o campo Nome
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Nome')]
	${CAMPO}      Set Variable  xpath=//input[@name='nomepess']
	Element Should Contain             ${LABEL}   Nome
 	Element Attribute Value Should Be  ${CAMPO}   name  nomepess  