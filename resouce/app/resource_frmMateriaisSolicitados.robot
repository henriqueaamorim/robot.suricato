*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Material | Solicitação de Saída

# SCREEN
Acessar Tela Solicitação de Materiais (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Solicitação de Materiais (Atualização)
  ${APPNAME}  Set Variable  frmMateriaisSolicitados
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_frmMateriaisSolicitados_2"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Solicitação de Materiais (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Solicitação de Materiais (Inclusão)
  ${APPNAME}  Set Variable  frmMateriaisSolicitados
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_frmMateriaisSolicitados_2"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.

#FIELD
Preencher o campo Código do Material "${CODIGO}"
  Input Text  xpath=//*[@name="codimate1"][@type="text"]  ${CODIGO}

Preencher o campo Quantidade "${QUANTIDADE}"
  Input Text  xpath=//*[@name="quan1"][@type="text"]  ${QUANTIDADE}

Preencher o campo NF de Saída "${NF}"
  Input Text  xpath=//*[@name="numenotasaid1"][@type="text"]  ${NF}

Preencher o campo Observações "${OBSERVACOES}"
  Input Text  xpath=//*[@name="obse1"][@type="text"]  ${OBSERVACOES}



#VERIFY

Verificar a label SEQ
	${LABEL}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[1]
	Element Should Contain  ${LABEL}   SEQ

Verificar o campo Código do Material
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[3]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[2]/td[4]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain  ${LABEL}   Código do Material
 	Element Attribute Value Should Be  ${CAMPO}   name   codimate1

Verificar o campo Quantidade
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[4]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[2]/td[5]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain  ${LABEL}   Quantidade
 	Element Attribute Value Should Be  ${CAMPO}   name   quan1

Verificar o campo NF de Saída
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[5]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[2]/td[6]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain  ${LABEL}   NF de Saída
 	Element Attribute Value Should Be  ${CAMPO}   name   numenotasaid1

Verificar o campo Observações
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[6]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[2]/td[7]/table/tbody/tr/td[1]/span[2]/textarea

	Element Should Contain  ${LABEL}   Observações
 	Element Attribute Value Should Be  ${CAMPO}   name   obse1
