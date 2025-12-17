*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Frota | Seguros | Cobertura

# SCREEN
Acessar Tela Consulta Cobertura de Seguros - Modo Busca
  ${OBJ}         Set Variable  SCN
  
  ${APPNAME}     Set Variable  cnscoberturaseguro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Cobertura de Seguros - Modo Busca
    ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta Cobertura de Seguros - Modo Busca
    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END  
   
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Cobertura de Seguros - Modo Busca (Filtro)
  ${OBJ}         Set Variable  SCN
  
  ${APPNAME}     Set Variable  cnscoberturaseguro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Cobertura de Seguros - Modo Busca
    ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta Cobertura de Seguros - Modo Busca
    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END  
  Sleep  2s 
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.


#FIELD
Preencher o campo Tipo Cobertura "${NUM}"
  Input Text  xpath=//*[@name="tipocobe"][@type="text"]  ${NUM}

Preencher o campo Descrição "${DESCRICAO}"
  Input Text  xpath=//*[@name="desccobesegu"][@type="text"]  ${DESCRICAO}

#VERIFY

Verificar a label Tipo Cobertura
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo Cobertura')]
  ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[2]/font/b/a/font
	END
  Element Should Contain  ${LABEL}   Tipo Cobertura

Verificar a label Descrição
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]
  ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[3]/font/b/a/font
	END
  Element Should Contain  ${LABEL}   Descrição

#VERIFY CAMPOS

Verificar o campo: Tipo Cobertura	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo Cobertura')]
	${CAMPO}      Set Variable  xpath=//input[@name='tipocobe']
	Element Should Contain             ${LABEL}   Tipo Cobertura	
 	Element Attribute Value Should Be  ${CAMPO}   name  tipocobe

Verificar o campo: Descrição
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição')]
	${CAMPO}      Set Variable  xpath=//input[@name='desccobesegu']
	Element Should Contain             ${LABEL}   Descrição
 	Element Attribute Value Should Be  ${CAMPO}   name    desccobesegu
