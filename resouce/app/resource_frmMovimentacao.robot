*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Material | Movimentaçãos


# SCREEN
Acessar Tela Cadastro de Movimentações
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Movimentações
  ${APPNAME}     Set Variable  frmMovimentacao
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Sleep  5s

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.

Clicar No Botão Buscar Dados Externos Para Material
  ${ELEMENT}  Set Variable  id=cap_codimate

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window


#FIELD
Preencher o campo Material "${MATERIAL}"
  Input Text  xpath=//*[@name="codimate"][@type="text"]  ${MATERIAL}
  #Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[1]

Preencher o campo Quantidade "${QUANT}"
  Input Text  xpath=//*[@name="quan"][@type="text"]  ${QUANT}

Preencher o campo NF de Entrada "${NF}"
  Input Text  xpath=//*[@name="numenotaentr"][@type="text"]  ${NF}

Preencher o campo Observações "${OBS}"
  Input Text  xpath=//*[@name="obse"][@type="text"]  ${OBS}


#VERIFY

Verificar o campo Material *
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input[1]

	Element Should Contain  ${LABEL}   Material *
 	Element Attribute Value Should Be  ${CAMPO}   name   codimate

Verificar o campo Quantidade
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input[1]

	Element Should Contain  ${LABEL}   Quantidade
 	Element Attribute Value Should Be  ${CAMPO}   name   quan

Verificar o campo NF de Entrada
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input[1]

	Element Should Contain  ${LABEL}   NF de Entrada
 	Element Attribute Value Should Be  ${CAMPO}   name   numenotaentr

Verificar o campo Observações
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input[1]

	Element Should Contain  ${LABEL}   Observações
 	Element Attribute Value Should Be  ${CAMPO}   name   obse
