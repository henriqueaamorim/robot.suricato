*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Material | Cadastro

# SCREEN
Acessar Tela Consulta de Materiais
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsMateriais
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable   Material
  ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Materiais
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Consulta de Materiais (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsMateriais 
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable  Material
  ${ELEMENT}  Set Variable     xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Materiais (Filtro)
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
  END 
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  


#BUTTON
#resource_btn.


#FIELD
Preencher o campo Código do Material "${COD}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${COD}

Preencher o campo Descrição "${DESC}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${DESC}

#VERIFY

Verificar a label Código do Material
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código do Material')]
  ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[2]/font/b/a/font
	END
  Element Should Contain  ${LABEL}   Código do Material

Verificar a label Descrição 
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]
  ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[3]/font/b/a/font
	END
  Element Should Contain  ${LABEL}   Descrição 



#VERIFY (Filtro)

Verificar a label Pesquisa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
  ELSE
  	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
	END
  Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Código do Material
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  	${LABEL}      Set Variable  xpath=//td[contains(text(),'Código do Material')]
	  ${CAMPO}  	  Set Variable  xpath=//input[@name='codimate']
  ELSE
	  ${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	  ${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/input
  END
  	Element Should Contain  ${LABEL}   Código do Material
   	Element Attribute Value Should Be  ${CAMPO}   name   codimate
  


Verificar o campo Descrição
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  	${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição')]
	  ${CAMPO}  	  Set Variable  xpath=//input[@name='descmate']
  ELSE
	  ${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	  ${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/input
  END  
    Element Should Contain  ${LABEL}   Descrição
 	  Element Attribute Value Should Be  ${CAMPO}   name   descmate
  
