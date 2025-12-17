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
Acessar Tela Solicitação de Saída (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Solicitação de Saída (Atualização)
  ${APPNAME}  Set Variable  frmSolicitacaoSaida
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

	Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_frmSolicitacaoSaida_1"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Solicitação de Saída (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Solicitação de Saída (Inclusão)
  ${APPNAME}  Set Variable  frmSolicitacaoSaida
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_frmSolicitacaoSaida_1"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"




#BUTTON
#resource_btn.

#FIELD

Selecionar uma opção no campo Tipo de Pessoa "${TIPO}"
  Select from list by label  xpath=//*[@name="padtippes"]  ${TIPO}

Preencher o campo Código do Colaborador "${CODIGO}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${CODIGO}
  Click Element    xpath=//*[@id="hidden_bloco_1"]/tbody/tr[6]/td[1]


#VERIFY

Verificar a label Código
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	Element Should Contain  ${LABEL}   Código

Verificar o campo Tipo de Pessoa
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/select

	Element Should Contain  ${LABEL}   Tipo de Pessoa
 	Element Attribute Value Should Be  ${CAMPO}   name   padtippes

Verificar a label Colaborador
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Colaborador

Verificar o campo Código do Colaborador *
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input[1]

	Element Should Contain  ${LABEL}   Código do Colaborador *
 	Element Attribute Value Should Be  ${CAMPO}   name   idcolab

Verificar a label Empresa
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Tipo de Colaborador
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	Element Should Contain  ${LABEL}   Tipo de Colaborador

Verificar a label Matrícula
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Nome do Colaborador
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	Element Should Contain  ${LABEL}   Nome do Colaborador




#VERIFY (Filtro)

Verificar o campo Tipo de Pessoa (Inclusão)
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[2]/select

	Element Should Contain  ${LABEL}   Tipo de Pessoa
 	Element Attribute Value Should Be  ${CAMPO}   name   padtippes

Verificar a label Visitante
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Visitante

Verificar o campo Código do Visitante
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input[1]

	Element Should Contain  ${LABEL}   Código do Visitante
 	Element Attribute Value Should Be  ${CAMPO}   name   idvisi

Verificar o campo Tipo do Documento
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/select

	Element Should Contain  ${LABEL}   Tipo do Documento
 	Element Attribute Value Should Be  ${CAMPO}   name   padtipdoc

Verificar o campo Número do Documento
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input

	Element Should Contain  ${LABEL}   Número do Documento
 	Element Attribute Value Should Be  ${CAMPO}   name   padnumdoc

Verificar o campo Nome do Visitante
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/input

	Element Should Contain  ${LABEL}   Nome do Visitante
 	Element Attribute Value Should Be  ${CAMPO}   name   padnomevis
