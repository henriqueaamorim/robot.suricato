*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Escala | Horário de Escala


# SCREEN
Acessar Tela Jornada de Trabalho
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Jornada de Trabalho
  ${APPNAME}     Set Variable  frmjornadatrabalho
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "nmsc_iframe_frmjornadatrabalho_2"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.


#FIELD
Preencher o campo Hora "${HORA1} | ${HORA2}"
  Input Text  xpath=//*[@name="horhora"][@type="text"]  ${HORA1}
  Input Text  xpath=//*[@name="horhora1"][@type="text"]  ${HORA2}

Selecionar uma opção no campo Uso "${USO1} | ${USO2}"
  Select from list by label  xpath=//*[@name="numuso00"]  ${USO1}
  Select from list by label  xpath=//*[@name="numuso01"]  ${USO2}


#PREENCHER 

E preencher o campo Hora1 "${HOR1}"
  input text  xpath=//*[@id="id_sc_field_horhora"]  ${HOR1}
E selecionar uma opção no campo Uso1 "${USO1}"
  Select from list by label  xpath=//span[@id="select2-id_sc_field_numuso00-container"]  ${USO1}
E preencher o campo Hora2 "${HOR2}"
  input text  xpath=//*[@id="id_sc_field_horhora1"]  ${HOR2}
E selecionar uma opção no campo Uso2 "${USO2}"
  Select from list by label  xpath=//span[@id="select2-id_sc_field_numuso01-container"]  ${USO2}   




#VERIFY

Verificar o campo Hora
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]/span[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]/span[3]/input

	Element Should Contain             ${LABEL}   Hora
 	Element Attribute Value Should Be  ${CAMPO}   id  id_sc_field_horhora  

Verificar o campo Uso
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/span[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/span[3]/span/span/span[1]/span/span[1]

	Element Should Contain             ${LABEL}   Uso
 	Element Attribute Value Should Be  ${CAMPO}   id  select2-id_sc_field_numuso00-container  

Verificar o campo Hora2
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[4]/span[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[4]/span[3]/input

	Element Should Contain             ${LABEL}   Hora
 	Element Attribute Value Should Be  ${CAMPO}   name  horhora1

Verificar o campo Uso2
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[5]/span[1]/span
	${CAMPO}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[5]/span[3]/span/span/span[1]/span/span[1]

	Element Should Contain             ${LABEL}   Uso 
 	Element Attribute Value Should Be  ${CAMPO}   id  select2-id_sc_field_numuso01-container   


