*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Ambiente

# SCREEN
Acessar Tela Cadastro de Ambiente
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${SCREENNAME}  Set Variable  Ambiente
      ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[6]
  ELSE
      ${SCREENNAME}  Set Variable  Cadastro de Ambiente
      ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  ${APPNAME}  Set Variable  frmAmbiente

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#BUTTON
#resource_btn.


#FIELD

Preencher o campo Ambiente "${AMBIENTE}"
  Input Text  xpath=//*[@name="descambi"][@type="text"]  ${AMBIENTE}

Preencher o campo Planta "${PLANTA}"
  Input Text  xpath=//*[@name="codiplan"][@type="text"]  ${PLANTA}

Preencher o campo Código Ambiente Superior "${AMBIENTE_SUP}"
  Click Element    name=codiambipai
  Sleep  2s
  Input Text  xpath=//*[@name="codiambipai"][@type="text"]  ${AMBIENTE_SUP}

Selecionar um codin no campo Codins 
	Click Element  xpath=//*[@id="id_sc_field_ambicole"]/option[1]
	Click Element  xpath=//*[@title="Campo Mover para a direita"]

Selecionar um codin no campo Codins "${CODIN}/${SETA}"   
 	 Select from list by label  xpath=//*[@name="ambicole_orig"]  ${CODIN}
	 Select from list by label  xpath=//*[@name="ambicole_dest"]  ${SETA}


Preencher o campo Quantidade Min. de Pessoas "${QUANT_MIN}" 
  Input Text  xpath=//*[@name="qtdminpess"][@type="text"]  ${QUANT_MIN}

Preencher o campo Quantidade Max. de Pessoas "${QUANT_MAX}"
  Input Text  xpath=//*[@name="qtdmaxpess"][@type="text"]  ${QUANT_MAX}




#VERIFY

Verificar o campo Ambiente*
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]/span[1]
		${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/input
		Element Should Contain             ${LABEL}   Ambiente
	ELSE
		${LABEL}      Set Variable  xpath=
		${CAMPO}      Set Variable  xpath=
		Element Should Contain             ${LABEL}   Ambiente*
	END

 	Element Attribute Value Should Be  ${CAMPO}   name  descambi

Verificar o campo Planta*
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span[1]
		${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input
		Element Should Contain             ${LABEL}   Planta
	ELSE
		${LABEL}      Set Variable  xpath=
		${CAMPO}      Set Variable  xpath=
		Element Should Contain             ${LABEL}   Planta*
	END

 	Element Attribute Value Should Be  ${CAMPO}   name  codiplan

Verificar o campo Código Ambiente Superior*
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span[1]
		${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/input
		Element Should Contain             ${LABEL}   Código Ambiente Superior
	ELSE
		${LABEL}      Set Variable  xpath=
		${CAMPO}      Set Variable  xpath=
		Element Should Contain             ${LABEL}   Código Ambiente Superior*
	END

 	Element Attribute Value Should Be  ${CAMPO}   name   codiambipai

Verificar o campo Codins
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]/span
		${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/table/tbody/tr/td[1]/span/select
	ELSE
		${LABEL}      Set Variable  xpath=
		${CAMPO}      Set Variable  xpath=
	END

	Element Should Contain             ${LABEL}   Codins
 	Element Attribute Value Should Be  ${CAMPO}   name  ambicole_orig

Verificar o campo Qualidade Min
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]/span
		${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td[1]/span[2]/span/input
		Element Should Contain             ${LABEL}   Quantidade Min. de Pessoas
	ELSE
		${LABEL}      Set Variable  xpath=
		${CAMPO}      Set Variable  xpath=
		Element Should Contain             ${LABEL}   Qualidade Min
	END

 	Element Attribute Value Should Be  ${CAMPO}   name  qtdminpess

Verificar o campo Quantidade Máx
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]/span
		${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/table/tbody/tr/td[1]/span[2]/span/input
		Element Should Contain             ${LABEL}	  Quantidade Máx. de Pessoas	
	ELSE
		${LABEL}      Set Variable  xpath=
		${CAMPO}      Set Variable  xpath=
		Element Should Contain             ${LABEL}   Quantidade Máx
	END

 	Element Attribute Value Should Be  ${CAMPO}   name  qtdmaxpess 
