*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | CFTV
# REPORT
resource_report.

# SCREEN
Acessar Tela Câmeras CFTV (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Câmeras CFTV (Inclusão)
  ${APPNAME}     Set Variable  frmcamercftv
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_cnscamercftv_2"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON

#FIELD
Preencher o campo Código "${COD}"
  Input Text  xpath=//*[@name="codicamecftv"][@type="text"]  ${COD}

Preencher o campo Descrição "${DESCRICAO}"
  Input Text  xpath=//*[@name="desccame"][@type="text"]  ${DESCRICAO}

Preencher o campo Parâmentros da Câmera "${PARAMETRO}"
  Input Text  xpath=//*[@name="paracame"][@type="text"]  ${PARAMETRO}

Clicar na opção "Sim" no campo Câmera Ativa
  Click Element  xpath=//*[@name="cameativ[]"]

Preencher o campo URL LIVE "${URL}"
  Input Text  xpath=//*[@name="weblink"][@type="text"]   ${URL}


#VERIFY

Verificar o campo Código
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input

	Element Should Contain  ${LABEL}   Código
 	Element Attribute Value Should Be  ${CAMPO}   name   codicamecftv

Verificar o campo Descrição
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input

	Element Should Contain  ${LABEL}   Descrição
 	Element Attribute Value Should Be  ${CAMPO}   name   desccame

Verificar o campo Parâmetros da Câmera
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input

	Element Should Contain  ${LABEL}   Parâmetros da Câmera
 	Element Attribute Value Should Be  ${CAMPO}   name   paracame

Verificar o campo Câmera Ativa
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input

	Element Should Contain  ${LABEL}   Câmera Ativa
 	Element Attribute Value Should Be  ${CAMPO}   name   cameativ[]

Verificar o campo URL LIVE
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/input

	Element Should Contain  ${LABEL}   URL LIVE
 	Element Attribute Value Should Be  ${CAMPO}   name   weblink
