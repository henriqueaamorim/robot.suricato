*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Marcação de Acesso Manual

# SCREEN
Acessar Tela Marcação de Acesso Manual
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable    ctrMarcacaoAcessoManual
  ${SCREENNAME}  Set Variable  Marcação de Acesso Manual
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  


#BUTTON
#resource_btn.



#VERIFY

Verificar o campo Tipo de Acesso *
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Tipo de Acesso')]
	${CAMPO}  	  Set Variable  xpath=//span[@id='select2-id_sc_field_padtipoacesso-container']
	Element Attribute Value Should Be  ${CAMPO}   id   select2-id_sc_field_padtipoacesso-container
	Element Should Contain  ${LABEL}   Tipo de Acesso
  ELSE
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
    Element Attribute Value Should Be  ${CAMPO}   name   padtipoacesso
    Element Should Contain  ${LABEL}   Tipo de Acesso *
  END
	
 	

Verificar o campo Planta *
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Planta')]
	${CAMPO}  	  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_padplanta_obj']
	Element Attribute Value Should Be  ${CAMPO}   class    select2-selection select2-selection--single css_padplanta_obj
    Element Should Contain  ${LABEL}   Planta
  ELSE
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
    Element Attribute Value Should Be  ${CAMPO}   name   padplanta 
    Element Should Contain  ${LABEL}   Planta *
  END
	
 	

Verificar o campo Codin *
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Codin')]
	${CAMPO}  	  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_padcodin_obj']
    Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single css_padcodin_obj
    Element Should Contain  ${LABEL}   Codin
  ELSE 
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
    Element Attribute Value Should Be  ${CAMPO}   name   padcodin
    Element Should Contain  ${LABEL}   Codin *
  END	
	
 	

Verificar o campo Tipo *
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Tipo')]
	${CAMPO}  	  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_padtipo_obj']
    Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single css_padtipo_obj
    Element Should Contain  ${LABEL}   Tipo
  ELSE
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
    Element Attribute Value Should Be  ${CAMPO}   name   padtipo
    Element Should Contain  ${LABEL}   Tipo *
  END
	
 	

Verificar o campo Data * 
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Data')]
	${CAMPO}  	  Set Variable  xpath=//input[@name='paddata']
    Element Should Contain  ${LABEL}   Data
  ELSE
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[7]/td[2]/table/tbody/tr/td[1]/span[2]/input[1]
    Element Should Contain  ${LABEL}   Data *  
  END		
 	Element Attribute Value Should Be  ${CAMPO}   name   paddata

Verificar o campo Hora *
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Hora')]
	${CAMPO}  	  Set Variable  xpath=//input[@name='padhora']
	Element Should Contain  ${LABEL}   Hora
  ELSE
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[8]/td[2]/table/tbody/tr/td[1]/span[2]/input
    Element Should Contain  ${LABEL}   Hora *
  END	
 	Element Attribute Value Should Be  ${CAMPO}   name   padhora


#FIELD
Selecionar uma opção no campo Tipo de Acesso "${TIPO}"
	Select From List By Label  xpath=//*[@name="padtipoacesso"]  ${TIPO}

Selecionar uma opção no campo Planta "${PLANTA}"
	Select From List By Label  xpath=//*[@name="padplanta"]  ${PLANTA}

Selecionar uma opção no campo Codin "${CODIN}"
	Select From List By Label  xpath=//*[@name="padcodin"]  ${CODIN}

Selecionar uma opção no campo Tipo "${TIPO}"
	Select From List By Label  xpath=//*[@name="padtipo"]  ${TIPO}

Preencher o campo Data "${DATA}"
	Input Text  xpath=//*[@name="paddata"][@type="text"]  ${DATA}
	
Preencher o campo Hora "${HORA}"
	Input Text  xpath=//*[@name="padhora"][@type="text"]  ${HORA}