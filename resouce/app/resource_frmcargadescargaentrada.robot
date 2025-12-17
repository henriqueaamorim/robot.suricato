*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Veículo | Entrada

# SCREEN
Acessar Tela Movimentação de Veículos - Entrada
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable   Movimentação de Veículos - Entrada
  ${APPNAME}  Set Variable  frmcargadescargaentrada
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

Acessar Tela Movimentação de Veículos - Cadastro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable   Movimentação de Veículos - Entrada
  ${APPNAME}  Set Variable  frmcargadescargaentrada
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"

#FIELD

Preencher o campo Placa "${PLACA}"
  Input Text  xpath=//*[@name="idveic"][@type="text"]  ${PLACA}
  # Necessário clicar fora para validar a inserção
  Click Element    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[1]

Preencher o campo Hora Chegada "${HORA}"
  Input Text  xpath=//*[@name="horachegveic"][@type="text"]  ${HORA}

Selecionar uma opção no campo Portaria "${PORTARIA}"
  Select from list by label  xpath=//*[@name="codiport"]  ${PORTARIA}

Selecionar uma opção no campo Tipo Operação "${OPERACAO}"
  Select from list by label  xpath=//*[@name="tipooper"]  ${OPERACAO}

Preencher o campo Motorista "${MOTORISTA}"
  Input Text  xpath=//*[@name="idvisi"][@type="text"]  ${MOTORISTA}
    # Necessário clicar fora para validar a inserção
  Click Element   xpath=//*[@id="hidden_bloco_0"]/tbody/tr[5]/td[1]
  
Preencher o campo Observação "${OBSERVACAO}"
  Input Text  xpath=//*[@name="obsemovicarg"]  ${OBSERVACAO}

Preencher o campo Empresa Terceira "${EMPRESA}"
  Input Text  xpath=//*[@name="codiemprcont"][@type="text"]  ${EMPRESA}

Clicar na opção "Sim" no campo Pesa Veículo
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[12]/td[2]/table/tbody/tr/td/input

Preencher o campo Peso Bruto Entrada "${PESO}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${PESO}

#VERIFY

Verificar a label Cadastro
	${LABEL}   Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Cadastro

Verificar a label Placa *
	${LABEL}   Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span[1]
	Element Should Contain  ${LABEL}   Placa *

Verificar a label Data Chegada *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	Element Should Contain  ${LABEL}   Data Chegada *

Verificar a label Hora Chegada *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	Element Should Contain  ${LABEL}   Hora Chegada *

Verificar a label Portaria *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	Element Should Contain  ${LABEL}   Portaria *

Verificar a label Tipo Operação *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	Element Should Contain  ${LABEL}   Tipo Operação *

Verificar a label Motorista *
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/input[1]

	Element Should Contain  ${LABEL}   Motorista *
 	Element Attribute Value Should Be  ${CAMPO}   name   idvisi

Verificar a label Nome Motorista
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	Element Should Contain  ${LABEL}   Nome Motorista

Verificar a label Número Documento
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[1]
	Element Should Contain  ${LABEL}   Número Documento

Verificar a label Empresa Terceira
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[1]
	Element Should Contain  ${LABEL}   Empresa Terceira

Verificar a label Nome Empresa Terceira
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[1]
	Element Should Contain  ${LABEL}   Nome Empresa Terceira

Verificar a label Pesa Veículo
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[1]
	Element Should Contain  ${LABEL}   Pesa Veículo

Verificar a label Peso Bruto Entrada
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[13]/td[1]
	Element Should Contain  ${LABEL}   Peso Bruto Entrada

Verificar o campo Observação
	${LABEL}      Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[14]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[14]/td[2]/textarea

	Element Should Contain  ${LABEL}   Observação
 	Element Attribute Value Should Be  ${CAMPO}   name   obsemovicarg

# VERIFY (Inclusão)

Verificar o campo Placa *
	${LABEL}   Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Placa
 	Element Attribute Value Should Be  ${CAMPO}   name   idveic

Verificar o campo Data Chegada *
	${LABEL}   Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/span[1]/input
	
	Element Should Contain  ${LABEL}   Data Chegada
 	Element Attribute Value Should Be  ${CAMPO}   name   datachegveic

Verificar o campo Hora Chegada *
	${LABEL}   Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]/span[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Hora Chegada
 	Element Attribute Value Should Be  ${CAMPO}   name   horachegveic

Verificar o campo Portaria *
	${LABEL}   Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]/span[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	
	Element Should Contain  ${LABEL}   Portaria
 	Element Attribute Value Should Be  ${CAMPO}   name   codiport

Verificar o campo Tipo Operação *
	${LABEL}   Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]/span[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	
	Element Should Contain  ${LABEL}   Tipo Operação
 	Element Attribute Value Should Be  ${CAMPO}   name   tipooper

Verificar o campo Motorista *
	${LABEL}   Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]/span[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Motorista
 	Element Attribute Value Should Be  ${CAMPO}   name   idvisi

Verificar o campo Nome Motorista
	${LABEL}   Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[1]/span
	
	Element Should Contain  ${LABEL}   Nome Motorista

Verificar o campo Número Documento 
	${LABEL}   Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[1]/span
	
	Element Should Contain  ${LABEL}   Número Documento

Verificar o campo Empresa Terceira
	${LABEL}   Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[1]/span
	
	Element Should Contain  ${LABEL}   Empresa Terceira

Verificar o campo Nome Empresa Terceira
	${LABEL}   Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[1]/span
	
	Element Should Contain  ${LABEL}   Nome Empresa Terceira

Verificar o campo Pesa Veículo
	${LABEL}   Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input

	Element Should Contain  ${LABEL}   Pesa Veículo
	Element Attribute Value Should Be  ${CAMPO}   name   pesoveic[]

Verificar o campo Observação (Inclusão)
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[14]/td[1]/span
	${CAMPO}  	  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[14]/td[2]/table/tbody/tr/td[1]/span[2]/textarea

	Element Should Contain  ${LABEL}   Observação
 	Element Attribute Value Should Be  ${CAMPO}   name   obsemovicarg