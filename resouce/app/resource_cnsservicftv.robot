*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | CFTV


# SCREEN
Acessar Tela Consulta Servidor CFTV - Modo Busca
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Servidor CFTV - Modo Busca
  ELSE
    ${SCREENNAME}  Set Variable  Consulta Servidor CFTV - Modo Busca
  END
  ${APPNAME}     Set Variable  cnsservicftv
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Filtro Servidor CFTV - Modo Busca
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Servidor CFTV - Modo Busca
  ${APPNAME}     Set Variable  cnsservicftv
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.


#FIELD
Preencher o campo Código "${COD}"
  Input Text  xpath=//*[@name="codiservcftv"][@type="text"]  ${COD}

Preencher o campo Endereço IP "${IP}"
  Input Text  xpath=//*[@name="endeip"][@type="text"]  ${IP}

Preencher o campo Nome "${NOME}"
  Input Text  xpath=//*[@name="nomeserv"][@type="text"]  ${NOME}

Preencher o campo Porta "${PORTA}"
  Input Text  xpath=//*[@name="portcomu"][@type="text"]  ${PORTA}

Preencher o campo Usuário "${USER}"
  Input Text  xpath=//*[@name="usuacftv"][@type="text"]  ${USER}


#VERIFY LABELS CONSULTA

Verificar a label Código
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código')]

	Element Should Contain  ${LABEL}   Código

Verificar a label Endereço IP

	${LABEL}   Set Variable  xpath=//div[contains(text(),'Endereço IP')]

	Element Should Contain  ${LABEL}   Endereço IP

Verificar a label Nome
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome')]

	Element Should Contain  ${LABEL}   Nome


#VERIFY CAMPOS FILTRO


Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]

    sleep  2s
	Element Should Contain   ${LABEL}   Pesquisa

Verificar o campo Código
	${LABEL}      Set Variable  xpath=//td[@id='SC_codiservcftv_label']
	${CAMPO}      Set Variable  xpath=//input[@name='codiservcftv']

	sleep  2s
	Element Should Contain             ${LABEL}   Código
 	Element Attribute Value Should Be  ${CAMPO}   name  codiservcftv

Verificar o campo Endereço IP	
	${LABEL}      Set Variable  xpath=//td[@id='SC_endeip_label']
	${CAMPO}      Set Variable  xpath=//input[@name='endeip']

	sleep  2s
	Element Should Contain             ${LABEL}   Endereço IP	
 	Element Attribute Value Should Be  ${CAMPO}   name  endeip

Verificar o campo Nome
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Nome')]
	${CAMPO}      Set Variable  xpath=//input[@name='nomeserv']

	sleep  2s
	Element Should Contain             ${LABEL}   Nome
 	Element Attribute Value Should Be  ${CAMPO}   name   nomeserv

Verificar o campo Porta
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Porta')]
	${CAMPO}      Set Variable  xpath=//input[@name='portcomu']

	sleep  2s
	Element Should Contain             ${LABEL}   Porta
 	Element Attribute Value Should Be  ${CAMPO}   name  portcomu

Verificar o campo Usuário
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Usuário')]
	${CAMPO}      Set Variable  xpath=//input[@name='usuacftv']

	sleep  2s
	Element Should Contain             ${LABEL}   Usuário
 	Element Attribute Value Should Be  ${CAMPO}   name  usuacftv
