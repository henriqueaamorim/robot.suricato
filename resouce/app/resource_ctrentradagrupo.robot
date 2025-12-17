*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Grupo

# SCREEN
Acessar Tela Entrada de Grupo de Visitante
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Entrada de Grupo de Visitante
  ${APPNAME}  Set Variable  ctrentradagrupo
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]

  Sleep  5s
  ${HANDLES}     Get Window Handles
  Switch Window  ${HANDLES}[0]
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.

Clicar No Botão Buscar Dados Externos Para Crachá do Responsável
  ${ELEMENT}  Set Variable  id=cap_padicard

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

Clicar No Botão Buscar Dados Externos Para Grupo de Visitante
  ${ELEMENT}  Set Variable  id=cap_grupvisi

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

Clicar No Botão Editar o Registro (Grupo de Visitante)
  ${ELEMENT}  Set Variable  xpath=//*[@id="hidden_bloco_2"]/tbody/tr[2]/td/img

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window


#FIELD
Selecionar uma opção no campo Portaria "${PORTARIA}"
  Select From List By Label    xpath=//*[@name="padportaria"]   ${PORTARIA}

Preencher o campo Visitado "${VISITADO}"
  Input Text   xpath=//*[@name="idcolab"][@type="text"]   ${VISITADO}  
	# Necessário clicar fora para validar a inserção do registro
  Click Element  xpath=//*[@id="hidden_bloco_1"]/tbody/tr[3]/td[1]/table/tbody/tr/td

Preencher o campo Grupo de Visitante "${VISITANTE}"
  Input Text   xpath=//*[@name="grupvisi"][@type="text"]   ${VISITANTE}  
	# Necessário clicar fora para validar a inserção do registro
  Click Element  xpath=//*[@id="hidden_bloco_1"]/tbody/tr[3]/td[1]/table/tbody/tr/td

Preencher o campo Visitante Responsável "${RESPONSAVEL}"
  Input Text   xpath=//*[@name="idvisi"][@type="text"]   ${RESPONSAVEL}  
	# Necessário clicar fora para validar a inserção do registro
  Click Element  xpath=//*[@id="hidden_bloco_1"]/tbody/tr[3]/td[1]/table/tbody/tr/td
  
Preencher o campo Veículo "${VEICULO}"
  Input Text   xpath=//*[@name="idveic"][@type="text"]   ${VEICULO}  
	# Necessário clicar fora para validar a inserção do registro
  Click Element  xpath=//*[@id="hidden_bloco_1"]/tbody/tr[3]/td[1]/table/tbody/tr/td

Preencher o campo Crachá do Responsável "${CRACHA}"
  Input Text   xpath=//*[@name="padicard"][@type="text"]  ${CRACHA} 
	# Necessário clicar fora para validar a inserção do registro 
  Click Element  xpath=//*[@id="hidden_bloco_1"]/tbody/tr[3]/td[1]/table/tbody/tr/td

Selecionar uma opção no campo Grupo de Acesso "${ACESSO}"
  Select From List By Label    xpath=//*[@name="padcodiperm"]   ${ACESSO}

Selecionar uma opção no campo Tipo de Visita "${VISITA}"
  Select From List By Label    xpath=//*[@name="padtipovisi"]   ${VISITA}
 
Preencher o campo Observações "${OBSERVACOES}"
  Input Text   xpath=//*[@name="padobs"] ${OBSERVACOES}  



#VERIFY

Verificar o campo Portaria *
	${LABEL}      Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[1]/span
	${CAMPO}  	  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[1]/select

	Element Should Contain  ${LABEL}   Portaria *
 	Element Attribute Value Should Be  ${CAMPO}   name   padportaria

Verificar o campo Data da Entrada
	${LABEL}      Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[2]/span
	${CAMPO}  	  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[2]/input[1]

	Element Should Contain  ${LABEL}   Data da Entrada
 	Element Attribute Value Should Be  ${CAMPO}   name   datdataentr

Verificar o campo Hora da Entrada *
	${LABEL}      Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[3]/span
	${CAMPO}  	  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[3]/input

	Element Should Contain  ${LABEL}   Hora da Entrada *
 	Element Attribute Value Should Be  ${CAMPO}   name   horhoraentr

Verificar o campo Visitado
	${LABEL}      Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	${CAMPO}  	  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/input[1]

	Element Should Contain  ${LABEL}   Visitado
 	Element Attribute Value Should Be  ${CAMPO}   name   idcolab

Verificar o campo Grupo de Visitante
	${LABEL}      Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	${CAMPO}  	  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td/input[1]

	Element Should Contain  ${LABEL}   Grupo de Visitante
 	Element Attribute Value Should Be  ${CAMPO}   name   grupvisi

Verificar o campo Visitante Responsável
	${LABEL}      Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	${CAMPO}  	  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/input[1]

	Element Should Contain  ${LABEL}   Visitante Responsável
 	Element Attribute Value Should Be  ${CAMPO}   name   idvisi

Verificar o campo Veículo
	${LABEL}      Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[5]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	${CAMPO}  	  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[5]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/input[1]

	Element Should Contain  ${LABEL}   Veículo
 	Element Attribute Value Should Be  ${CAMPO}   name   idveic

Verificar a label Dados Gerais
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[6]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Dados Gerais

Verificar o campo Crachá do Responsável
	${LABEL}      Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[6]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span
	${CAMPO}  	  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[6]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/input[1]

	Element Should Contain  ${LABEL}   Crachá do Responsável
 	Element Attribute Value Should Be  ${CAMPO}   name   padicard

Verificar o campo Grupo de Acesso
	${LABEL}      Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[7]/tbody/tr/td/div/table/tbody/tr[1]/td[1]/span
	${CAMPO}  	  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[7]/tbody/tr/td/div/table/tbody/tr[1]/td[1]/select

	Element Should Contain  ${LABEL}   Grupo de Acesso
 	Element Attribute Value Should Be  ${CAMPO}   name   padcodiperm

Verificar o campo Tipo da Visita
	${LABEL}      Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[7]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/span
	${CAMPO}  	  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[7]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/select

	Element Should Contain  ${LABEL}   Tipo da Visita *
 	Element Attribute Value Should Be  ${CAMPO}   name   padtipovisi

Verificar o campo Data de Validade
	${LABEL}      Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[9]/tbody/tr/td/div/table/tbody/tr/td[1]/span
	${CAMPO}  	  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[9]/tbody/tr/td/div/table/tbody/tr/td[1]/input[1]

	Element Should Contain  ${LABEL}   Data de Validade *
 	Element Attribute Value Should Be  ${CAMPO}   name   paddatavali

Verificar o campo Hora da Validade
	${LABEL}      Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[9]/tbody/tr/td/div/table/tbody/tr/td[2]/span
	${CAMPO}  	  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[9]/tbody/tr/td/div/table/tbody/tr/td[2]/input

	Element Should Contain  ${LABEL}   Hora da Validade *
 	Element Attribute Value Should Be  ${CAMPO}   name   padhoravali

Verificar o campo Observações
	${LABEL}      Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[10]/tbody/tr/td/div/table/tbody/tr/td[1]/span
	${CAMPO}  	  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[10]/tbody/tr/td/div/table/tbody/tr/td[1]/textarea

	Element Should Contain  ${LABEL}   Observações
 	Element Attribute Value Should Be  ${CAMPO}   name   padobs
