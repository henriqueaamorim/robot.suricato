*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Escala | Cadastro de Escala

# SCREEN
Acessar Tela Consulta de Escalas
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  consescalacad
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable  Escala
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Nome da tela 249
  ${ELEMENT}  Set Variable    xpath=
  END
    
  sleep  2s
  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Consulta de Escalas (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  consescalacad
  IF	"${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247"
      ${SCREENNAME}  Set Variable  Escala
      ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
	    ${SCREENNAME}  Set Variable  Nome da tela 249
	    ${ELEMENT}     Set Variable  xpath=
  END

  
  IF	"${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247"
    Sleep  2s
    Mudar Frame Aplicação "TB_iframeContent"
  ELSE
    Mudar Frame Aplicação "nmsc_iframe_consescalacad_1"  
  END

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"




#BUTTON
#resource_btn.


#FIELD
Preencher o campo Código da Escala "${COD}"
  Input Text  xpath=//*[@name="codiesca"][@type="text"]  ${COD}

Preencher o campo Descrição "${DESC}"
  Input Text  xpath=//*[@name="nomeesca"][@type="text"]  ${DESC}

Preencher o campo Chave Externa "${CHAV}"
  Input Text  xpath=//*[@name="external_key"][@type="text"]  ${CHAV}


#VERIFY (Consulta)

Verificar a label Chave Externa
	IF	"${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247"
    ${LABEL}   Set Variable   xpath=//td[@class='scGridLabelFont css_external_key_label']
    ${CAMPO}   Set Variable   xpath=(//div[contains(text(),'Chave Externa')])[2]              
  ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td/table/tbody/tr[10]/td/table/tbody/tr/td[2]/table/tbody/tr/td/table/tbody/tr[1]/td[3]
	END
  Element Should Contain   ${LABEL}    Chave Externa

Verificar a label Código da Escala
	IF	"${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247"
    ${LABEL}   Set Variable  xpath=//td[@class='scGridLabelFont css_codiesca_label']
    ${CAMPO}   Set Variable  xpath=(//div[contains(text(),'Código da Escala')])[2]
    
  ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td/table/tbody/tr[10]/td/table/tbody/tr/td[2]/table/tbody/tr/td/table/tbody/tr[1]/td[3]
	END
  Element Should Contain  ${LABEL}   Código da Escala

Verificar a label Descrição 
	IF	"${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247"
    ${LABEL}   Set Variable  xpath=//td[@class='scGridLabelFont css_nomeesca_label']
    ${LABEL}   Set Variable  xpath=(//div[contains(text(),'Descrição')])[2]
  ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td/table/tbody/tr[10]/td/table/tbody/tr/td[2]/table/tbody/tr/td/table/tbody/tr[1]/td[4]
	END
  Element Should Contain  ${LABEL}   Descrição 



#VERIFY (Filtro)

Verificar o campo Código da Escala
	${LABEL}      Set Variable  xpath=//td[@id='SC_codiesca_label']
	${CHECKBOX}   Set Variable  xpath=//input[@id='SC_codiesca']

	Element Should Contain  ${LABEL}   Código da Escala
 	Element Attribute Value Should Be  ${CHECKBOX}   name   codiesca

Verificar o campo Descrição
	${LABEL}      Set Variable  xpath=//td[@id='SC_nomeesca_label']
	${CHECKBOX}   Set Variable  xpath=//input[@id='SC_nomeesca']

	Element Should Contain  ${LABEL}   Descrição
 	Element Attribute Value Should Be  ${CHECKBOX}   name   nomeesca

Verificar o campo Chave Externa
	${LABEL}      Set Variable   xpath=//td[@id='SC_external_key_label']
  ${CHECKBOX}   Set Variable   xpath=//input[@id='SC_external_key']

	Element Should Contain  ${LABEL}   Chave Externa
 	Element Attribute Value Should Be  ${CHECKBOX}   name   external_key