*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Planta

# SCREEN
Acessar Tela Consulta de Plantas
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsPlantas
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Planta  
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE  
    ${SCREENNAME}  Set Variable  Plantas (Inclusão)
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
 
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Planta (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Planta
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
  ${APPNAME}  Set Variable  cnsPlantas
    
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Consulta de Plantas (Busca Externa)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Plantas
  ${APPNAME}  Set Variable  cnsPlantas
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Código da Empresa "${COD}"
  Input Text  xpath=//*[@name="tbplant_codiempr"][@type="text"]  ${COD}

Preencher o campo Código da Filial "${CODFIL}"
  Input Text  xpath=//*[@name="tbplant_codifili"][@type="text"]  ${CODFIL}

Preencher o campo Planta "${PLT}"
  Input Text  xpath=//*[@name="tbplant_descplan"][@type="text"]  ${PLT}

Preencher o campo Código da Planta "${COD}"
  Input Text  xpath=//*[@name="tbplant_codiplan"][@type="text"]  ${COD}


#VERIFY

Verificar a label Código da Planta
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td/table/tbody/tr[9]/td/table/tbody/tr/td[2]/table/tbody/tr/td/table/tbody/tr[1]/td[2]
	Element Should Contain  ${LABEL}   Código da Planta

Verificar a label Planta
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td/table/tbody/tr[9]/td/table/tbody/tr/td[2]/table/tbody/tr/td/table/tbody/tr[1]/td[3]
	Element Should Contain  ${LABEL}   Planta

Verificar a label Código da Empresa
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td/table/tbody/tr[9]/td/table/tbody/tr/td[2]/table/tbody/tr/td/table/tbody/tr[1]/td[4]
	Element Should Contain  ${LABEL}   Código da Empresa

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td/table/tbody/tr[9]/td/table/tbody/tr/td[2]/table/tbody/tr/td/table/tbody/tr[1]/td[5]
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Código da Filial
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td/table/tbody/tr[9]/td/table/tbody/tr/td[2]/table/tbody/tr/td/table/tbody/tr[1]/td[6]
	Element Should Contain  ${LABEL}   Código da Filial

Verificar a label Filial
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td/table/tbody/tr[9]/td/table/tbody/tr/td[2]/table/tbody/tr/td/table/tbody/tr[1]/td[7]
	Element Should Contain  ${LABEL}   Filial



#VERIFY

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Pesquisa


Verificar o campo Código da Empresa
	 ${LABEL}      Set Variable   xpath=//td[contains(text(),'Código da Empresa')]
   ${CAMPO}      Set Variable   xpath=//td[@id='SC_tbplant_codiempr_label']
  sleep  2s
	Element Should Contain             ${LABEL}   Código da Empresa
  Element Attribute Value Should Be  ${CAMPO}   id   SC_tbplant_codiempr_label  


Verificar o campo Código da Filial
  ${LABEL}      Set Variable  xpath=//td[contains(text(),'Código da Filial')]
	${CAMPO}      Set Variable  xpath=//td[@id='SC_tbplant_codifili_label']
	
	Element Should Contain             ${LABEL}   Código da Filial
  Element Attribute Value Should Be  ${CAMPO}   id   SC_tbplant_codifili_label

Verificar o campo Planta
  ${LABEL}      Set Variable  xpath=//td[contains(text(),'Planta')]
	${CAMPO}      Set Variable  xpath=//td[@id='SC_tbplant_descplan_label']
	
	Element Should Contain             ${LABEL}   Planta
  Element Attribute Value Should Be  ${CAMPO}   id   SC_tbplant_descplan_label
 

Verificar o campo Código da Planta
  ${LABEL}      Set Variable  xpath=//td[contains(text(),'Código da Planta')]
  ${CAMPO}      Set Variable  xpath=//td[@id='SC_tbplant_codiplan_label']

	Element Should Contain             ${LABEL}   Código da Planta
  Element Attribute Value Should Be  ${CAMPO}   id   SC_tbplant_codiplan_label
 
