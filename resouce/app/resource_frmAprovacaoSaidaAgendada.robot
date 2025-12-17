*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Frota | Utilização Veículos | Aprovação de Agendamentos - Frota

# SCREEN
Acessar Tela Autorização de Saída de Veículos Agendados
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Autorização de Saída de Veículos Agendados
  ${APPNAME}     Set Variable  frmAprovacaoSaidaAgendada
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Switch Window  locator=NEW
  Maximize Browser Window

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.



#VERIFY

Verificar a label Condutor
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Condutor

Verificar a segunda label Condutor
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span
	Element Should Contain  ${LABEL}   Condutor

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/span
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Tipo Colab.
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[3]/span[1]
	Element Should Contain  ${LABEL}   Tipo Colab.

Verificar a label Matrícula
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[4]/span
	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Nome
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[5]/span
	Element Should Contain  ${LABEL}   Nome

Verificar a label CNH
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr/td[1]/span
	Element Should Contain  ${LABEL}   CNH

Verificar a label Categoria
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr/td[2]/span
	Element Should Contain  ${LABEL}   Categoria

Verificar a label Vencimento
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr/td[3]/span
	Element Should Contain  ${LABEL}   Vencimento

Verificar a label Veículo
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Veiculo

Verificar a segunda label Veículo 
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span
	Element Should Contain  ${LABEL}   Veículo 

Verificar a label Placa
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/span
	Element Should Contain  ${LABEL}   Placa

Verificar a label Marca
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[3]/span
	Element Should Contain  ${LABEL}   Marca

Verificar a label Modelo
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[4]/span
	Element Should Contain  ${LABEL}   Modelo

Verificar a label Cor
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[5]/span
	Element Should Contain  ${LABEL}   Cor

Verificar a label Data Saída
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr/td[1]/span
	Element Should Contain  ${LABEL}   Data Saída

Verificar a label Hora Saída
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr/td[2]/span
	Element Should Contain  ${LABEL}   Hora Saída

Verificar a label Data Retorno
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr/td[3]/span
	Element Should Contain  ${LABEL}   Data Retorno

Verificar a label Hora Retorno
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr/td[4]/span
	Element Should Contain  ${LABEL}   Hora Retorno

Verificar a label Aprovação
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[5]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Aprovacao

Verificar o campo Aprovação
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[5]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[5]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/select

	Element Should Contain  ${LABEL}   Aprovação
	Element Attribute Value Should Be  ${CAMPO}  name  veicagenutil

Verificar a label Data
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[5]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/span
	Element Should Contain  ${LABEL}   Data

Verificar a label Hora
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[5]/tbody/tr/td/div/table/tbody/tr[2]/td[3]/span
	Element Should Contain  ${LABEL}   Hora

Verificar a label Aprovador
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Aprovador

Verificar o campo Autorizante
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/input[1]
	
	Element Should Contain  ${LABEL}   Autorizante
	Element Attribute Value Should Be  ${CAMPO}  name   idcolaautolibe

Verificar a segunda label Empresa
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/span
	Element Should Contain  ${LABEL}   Empresa

Verificar a segunda label Tipo Colab.
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[2]/td[3]/span[1]
	Element Should Contain  ${LABEL}   Tipo Colab.

Verificar a label Matricula
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[2]/td[4]/span
	Element Should Contain  ${LABEL}   Matricula

Verificar a segunda label Nome
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[2]/td[5]/span
	Element Should Contain  ${LABEL}   Nome

#FIELD
Selecionar uma opção no campo Aprovação "${APROVACAO}"
	Select From List By Label  xpath=//*[@name="veicagenutil"]  ${APROVACAO}

Preencher o campo Autorização "${AUTORIZACAO}"
	Input Text  xpath=//*[@name="idcolaautolibe"][@type="text"]  ${AUTORIZACAO}
	