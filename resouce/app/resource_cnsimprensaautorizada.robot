*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Candidato | Entrada

# SCREEN
Acessar Tela Consulta de Candidato Autorizado
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsimprensaautorizada
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable    Candidato Autorizado
    ${ELEMENT}    Set Variable     xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Candidato Autorizado
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Consulta de Candidato Autorizada: Filtro
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsimprensaautorizada
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"  
    ${SCREENNAME}   Set Variable    Candidato Autorizado
    ${ELEMENT}      Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Candidato Autorizada: Filtro 
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

 


#BUTTON
#resource_btn.



#VERIFY

Verificar a label Pesquisa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"  
	  ${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
  ELSE
    ${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
	END
  Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Data da Autorização
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"  
    ${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
    ${CAMPO1}  	  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr[1]/td/span[1]/input
    ${CAMPO2}  	  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr[1]/td/span[2]/input
    ${CAMPO3}  	  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr[1]/td/span[3]/input
    ${CAMPO4}  	  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr[2]/td/span[1]/input
    ${CAMPO5}  	  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr[2]/td/span[2]/input
    ${CAMPO6}  	  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr[2]/td/span[3]/input
  ELSE
	  ${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	  ${CAMPO1}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr[1]/td/input[1]
    ${CAMPO2}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr[1]/td/input[2]
    ${CAMPO3}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr[1]/td/input[3]
    ${CAMPO4}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr[2]/td/input[1]
    ${CAMPO5}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr[2]/td/input[2]
    ${CAMPO6}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr[2]/td/input[3]
  END
	Element Should Contain  ${LABEL}   Data da Autorização
 	Element Attribute Value Should Be  ${CAMPO1}   name   dataauto_dia
 	Element Attribute Value Should Be  ${CAMPO2}   name   dataauto_mes
  Element Attribute Value Should Be  ${CAMPO3}   name   dataauto_ano
  Element Attribute Value Should Be  ${CAMPO4}   name   dataauto_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}   name   dataauto_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}   name   dataauto_input_2_ano

Verificar o campo Candidato
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"  
	  ${LABEL}      Set Variable  xpath=//td[contains(text(),'Candidato')]
	  ${CAMPO}  	  Set Variable  xpath=//input[@name='idcand']
    Element Should Contain  ${LABEL}   Candidato
    Element Attribute Value Should Be  ${CAMPO}   name   idcand
  ELSE
	  ${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	  ${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[3]/table/tbody/tr/td/input
  	Element Should Contain  ${LABEL}   Candidato
  	Element Attribute Value Should Be  ${CAMPO}   name   idcand
  END

#FIELD
Preencher o campo Data da Autorização inicial "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="dataauto_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="dataauto_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="dataauto_ano"][@type="text"]  ${ANO}

Preencher o campo Data da Autorização final "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="dataauto_input_2_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="dataauto_input_2_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="dataauto_input_2_ano"][@type="text"]  ${ANO}

Preencher o campo Candidato "${CANDIDATO}"
	Input Text  xpath=//*[@name="idcand"][@type="text"]  ${CANDIDATO}