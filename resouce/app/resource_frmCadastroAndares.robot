*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Configuração Elevadores | Cadastro de Andares

#TAB
Clicar Na Aba Andar
  ${OBJ}      Set Variable  TABs
  ${APPNAME}  Set Variable  abaandar
  ${ELEMENT}  Set Variable  xpath=//li[@id="id_tabs_1_1"]
  ${TABNAME}  Set Variable  Andar

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}
  
  Select Frame  //iframe[@id="nmsc_iframe_liga_frmCadastroAndares"]

# SCREEN
Acessar Tela Cadastro de Andares
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Andar
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[6]
  ELSE
    ${SCREENNAME}  Set Variable  Cadastro de Andares
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  ${APPNAME}  Set Variable  frmCadastroAndares

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#BUTTON

#resource_btn.

#FIELD
Preencher o campo Descrição "${DESCRICAO}"
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Input Text  xpath=//*[@name="descanda_1"]  ${DESCRICAO}
  ELSE
    Input Text  xpath=//*[@name="descanda"]  ${DESCRICAO}
  END

Preencher o campo Código "${CODIGO}"
  Input Text  xpath=//*[@name="idtorr"][@type="text"] | //*[@name="idtorr_1"][@type="text"]  ${CODIGO}





#VERIFY

Verificar a label Código
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr/td[3]
	Element Should Contain  ${LABEL}   Código

Verificar a label Descrição
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr/td[4]
	Element Should Contain  ${LABEL}   Descrição

Verificar a segunda label Código
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr/td[5]
	Element Should Contain  ${LABEL}   Código

Verificar o campo Código 
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr/td[3]
	Element Should Contain             ${LABEL}   Código 

Verificar o campo Descrição
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[1]/td[4]
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[2]/td[4]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain             ${LABEL}   Descrição
 	Element Attribute Value Should Be  ${CAMPO}   name   descanda_1

Verificar o segundo campo Código
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[1]/td[5]
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[2]/td[5]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain             ${LABEL}   Código
 	Element Attribute Value Should Be  ${CAMPO}   name   idtorr_1
