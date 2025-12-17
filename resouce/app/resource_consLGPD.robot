*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | LGPD

# SCREEN
Acessar Tela LGPD
  ${OBJ}         Set Variable    SCN
  ${SCREENNAME}  Set Variable    LGPD
  ${APPNAME}     Set Variable    consLGPD
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela LGPD - Filtro
  ${OBJ}         Set Variable   SCN
  ${SCREENNAME}  Set Variable   LGPD
  ${APPNAME}     Set Variable   consLGPD
  ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME} ')]
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  
  
  

#BUTTON
#resource_btn.


#FIELD
Preencher o campo Código "${COD}"
  Input Text  xpath=//*[@name="codigo"][@type="text"]  ${COD}

Preencher o campo Descrição "${DESC}"  
  Input Text  xpath=//*[@name="descricao"][@type="text"]  ${DESC}

#VERIFY

Verificar o campo Código
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Código')]
    ${CAMPO}   Set Variable  xpath=//input[@name='codigo']
	ELSE
    ${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]
	  ${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/input
	END
  Element Should Contain  ${LABEL}   Código
 	Element Attribute Value Should Be  ${CAMPO}   name   codigo

Verificar o campo Descrição
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Descrição')]
    ${CAMPO}   Set Variable  xpath=//input[@name='descricao']
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	  ${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/input
	END
	Element Should Contain  ${LABEL}   Descrição
 	Element Attribute Value Should Be  ${CAMPO}   name   descricao
