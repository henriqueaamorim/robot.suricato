*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Feriado


# SCREEN
Acessar Tela Cadastro de Feriados - Datas (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Feriados - Datas (Inclusão)
  ${APPNAME}     Set Variable  frmferiadoxdatas
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Cadastro de Feriados - Datas (Atualização)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Feriado - Datas
  ELSE 
    ${SCREENNAME}  Set Variable  Cadastro de Feriados - Datas (Atualização)
  END
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  ${APPNAME}     Set Variable  frmferiadoxdatas


  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#FIELD
Preencher o campo Data do Feriado "${DATA}"
	Input Text  xpath=//*[@name="dataferi1"][@type="text"] | //*[@name="dataferi_1"]  ${DATA}

Preencher o campo Descrição "${DESCRICAO}"
	Input Text  xpath=//*[@name="descferi1"][@type="text"] | //*[@name="descferi_1"]  ${DESCRICAO}

Preencher o campo Nova Data do Feriado "${DATA}"
	Input Text  xpath=//*[@name="padndata1"][@type="text"]  ${DATA}

Clicar na checkbox do registro
  Click Element  xpath=//*[@name="sc_check_vert[1]"]



#VERIFY

Verificar o campo Data do Feriado
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[1]/td[2]
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[2]/td[3]/table/tbody/tr/td[1]/span[2]/span/input

	Element Should Contain             ${LABEL}   Data do Feriado
 	Element Attribute Value Should Be  ${CAMPO}   name   dataferi_1

Verificar o campo Descrição
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[1]/td[3]
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[2]/td[4]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain             ${LABEL}   Descrição
 	Element Attribute Value Should Be  ${CAMPO}   name   descferi_1

Verificar o campo Nova Data do Feriado
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[1]/td[4]
	${CAMPO}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[2]/td[5]/table/tbody/tr/td[1]/span[2]/span/input

	Element Should Contain             ${LABEL}   Nova Data do Feriado
 	Element Attribute Value Should Be  ${CAMPO}   name   padndata_1
