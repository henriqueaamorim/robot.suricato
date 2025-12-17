*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Material | Autorização

# SCREEN
Acessar Tela Autorização de Saída (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Autorização de Saída (Atualização)
  ${APPNAME}     Set Variable  frmAutorizacaoSaida
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.



#VERIFY

Verificar a label Solicitação *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[1]
	Element Should Contain  ${LABEL}   Solicitação *

Verificar a label Colaborador
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Colaborador

Verificar a label Código do Colaborador
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	Element Should Contain  ${LABEL}   Código do Colaborador

Verificar a label Empresa do Colaborador
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	Element Should Contain  ${LABEL}   Empresa do Colaborador

Verificar a label Tipo do Colaborador
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	Element Should Contain  ${LABEL}   Tipo do Colaborador

Verificar a label Matrícula do Colaborador
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	Element Should Contain  ${LABEL}   Matrícula do Colaborador

Verificar a label Nome do Colaborador
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	Element Should Contain  ${LABEL}   Nome do Colaborador

Verificar a label Autorizador
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Autorizador

Verificar o campo Código do Autorizador
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input[1]

	Element Should Contain  ${LABEL}   Código do Autorizador
 	Element Attribute Value Should Be  ${CAMPO}   name   idcolaautolibe

Verificar a label Empresa do Autorizador
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	Element Should Contain  ${LABEL}   Empresa do Autorizador

Verificar a label Tipo do Autorizador
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	Element Should Contain  ${LABEL}   Tipo do Autorizador

Verificar a label Matrícula do Autorizador
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	Element Should Contain  ${LABEL}   Matrícula do Autorizador

Verificar a label Nome do Autorizador
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	Element Should Contain  ${LABEL}   Nome do Autorizador

#FIELD
Preencher o campo Código do Autorizador "${COD}"
	Input Text  xpath=//*[@name="idcolaautolibe"][@type="text"]  ${COD}
	