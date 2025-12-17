*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Veículo | Saída

# SCREEN
Acessar Tela Movimentação de Veículos - Saída
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Movimentação de Veículos - Saída
  ${APPNAME}     Set Variable  frmcargadescargasaida
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.



#VERIFY

Verificar a label Cadastro
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Cadastro

Verificar a label Placa *
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span[1]
	Element Should Contain  ${LABEL}   Placa

Verificar a label Data Chegada *
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span[1]
	Element Should Contain  ${LABEL}   Data Chegada

Verificar a label Hora Chegada *
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]/span[1]
	Element Should Contain  ${LABEL}   Hora Chegada

Verificar a label Portaria *
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]/span[1]
	Element Should Contain  ${LABEL}   Portaria

Verificar a label Tipo Operação *
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]/span[1]
	Element Should Contain  ${LABEL}   Tipo Operação

Verificar a label Motorista *
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]/span[1]
	Element Should Contain  ${LABEL}   Motorista

Verificar a label Nome Motorista
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[1]/span
	Element Should Contain  ${LABEL}   Nome Motorista

Verificar a label Nr. Documento
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[1]/span
	Element Should Contain  ${LABEL}   Nr. Documento

Verificar a label Empresa Terceira *
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[1]/span[1]
	Element Should Contain  ${LABEL}   Empresa Terceira

Verificar a label Nome Outra Empresa
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[1]/span
	Element Should Contain  ${LABEL}   Nome Outra Empresa

Verificar a label Pesa Veículo *
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[1]/span[1]
	Element Should Contain  ${LABEL}   Pesa Veículo

Verificar a label Observação
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[14]/td[1]/span
	Element Should Contain  ${LABEL}   Observação

Verificar a label Saída
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Saída

Verificar a label Data Saída
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span
	Element Should Contain  ${LABEL}   Data Saída

Verificar o campo Hora Saída
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span
	${CAMPO}  	  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain  ${LABEL}   Hora Saída
 	Element Attribute Value Should Be  ${CAMPO}   name   horasaid

Verificar a label Peso Líquido
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[5]/td[1]/span
	Element Should Contain  ${LABEL}   Peso Líquido

Verificar o campo Série NF
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[6]/td[1]/span
	${CAMPO}  	  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain  ${LABEL}   Série NF
 	Element Attribute Value Should Be  ${CAMPO}   name   serinfsaid

Verificar o campo Nota Fiscal
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[7]/td[1]/span
	${CAMPO}  	  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain  ${LABEL}   Nota Fiscal
 	Element Attribute Value Should Be  ${CAMPO}   name   notafiscsaid

Verificar o campo Observação 
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[8]/td[1]/span
	${CAMPO}  	  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/table/tbody/tr/td[1]/span[2]/textarea

	Element Should Contain  ${LABEL}   Observação 
 	Element Attribute Value Should Be  ${CAMPO}   name   obsesaid

#FIELD
Preencher o campo Hora Saída "${HORA}"
	Input Text  xpath=//*[@name="horasaid"][@type="text"]  ${HORA}
	
Preencher o campo Série NF "${NF}"
	Input Text  xpath=//*[@name="serinfsaid"][@type="text"]  ${NF}
	
Preencher o campo Nota Fiscal "${NOTA}"
	Input Text  xpath=//*[@name="notafiscsaid"][@type="text"]  ${NOTA}
	
Preencher o campo Observação "${OBS}"
	Input Text  xpath=//*[@name="obsesaid"]  ${OBS}
	