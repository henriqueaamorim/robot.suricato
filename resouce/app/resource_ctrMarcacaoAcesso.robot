*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.resource_mnu.Clicar No Menu Relatórios | Consulta Impressa
# REPORT
resource_report.Navegar no Relatório: Marcação de Acesso - Exportação CSV

# SCREEN
Acessar Tela Marcação de Acesso
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Marcação de Acesso
  ${APPNAME}     Set Variable  ctrMarcacaoAcesso
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[3]


  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.



#VERIFY

Verificar o campo Uso do Crachá
	${LABEL}  	   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	${CHECKBOX1}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td[1]/input
	${CHECKBOX2}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td[2]/input
	${CHECKBOX3}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td[3]/input
	${CHECKBOX4}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td[4]/input
	${CHECKBOX5}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td[5]/input
	
	Element Should Contain  ${LABEL}   Uso do Crachá
 	Element Attribute Value Should Be  ${CHECKBOX1}   value   1
	Element Attribute Value Should Be  ${CHECKBOX2}   value   2
	Element Attribute Value Should Be  ${CHECKBOX3}   value   3
	Element Attribute Value Should Be  ${CHECKBOX4}   value   4
	Element Attribute Value Should Be  ${CHECKBOX5}   value   6


Verificar o campo Matrícula
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td/input[1]
	
	Element Should Contain  ${LABEL}   Matrícula
 	Element Attribute Value Should Be  ${CAMPO}   name   codimatr

Verificar o campo Empresa
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td/select
	
	Element Should Contain  ${LABEL}   Empresa
 	Element Attribute Value Should Be  ${CAMPO}   name   codiempr[]

Verificar a label Data de Acesso
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Data de Acesso

Verificar o campo Início
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/input[1]
	
	Element Should Contain  ${LABEL}   Início
 	Element Attribute Value Should Be  ${CAMPO}   name   dataacesinicio

Verificar o campo Término
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr[3]/td[1]/input[1]
	
	Element Should Contain  ${LABEL}   Término
 	Element Attribute Value Should Be  ${CAMPO}   name   dataacestermino

Verificar o campo Hora Inicial
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
	
	Element Should Contain  ${LABEL}   Hora Inicial
 	Element Attribute Value Should Be  ${CAMPO}   name   horaacesinicio

Verificar o campo Hora Final
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input
	
	Element Should Contain  ${LABEL}   Hora Final
 	Element Attribute Value Should Be  ${CAMPO}   name   horaacestermino

Verificar o campo Formato da Data
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr[4]/td[1]/select
 	Element Attribute Value Should Be  ${CAMPO}   name   formatdata

Verificar a label Planta / Codin
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[5]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Planta / Codin

Verificar o campo Planta
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[5]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[5]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/select
	
	Element Should Contain  ${LABEL}   Planta
 	Element Attribute Value Should Be  ${CAMPO}   name   codiplan[]

Verificar o campo Codin
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[5]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[5]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/select
	
	Element Should Contain  ${LABEL}   Codin
 	Element Attribute Value Should Be  ${CAMPO}   name   codicole[]

Verificar o campo Tipo de Acesso
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[6]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[6]/tbody/tr/td/div/table/tbody/tr[2]/td/select
	
	Element Should Contain  ${LABEL}   Tipo de Acesso
 	Element Attribute Value Should Be  ${CAMPO}   name   tipoaces[]

Verificar o campo Função
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[7]/tbody/tr/td[1]/div/table/tbody/tr[1]/td/table/tbody/tr/td
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[7]/tbody/tr/td[1]/div/table/tbody/tr[2]/td/select
	
	Element Should Contain  ${LABEL}   Função
 	Element Attribute Value Should Be  ${CAMPO}   name   codifunc[]

Verificar o campo Direção
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[7]/tbody/tr/td[2]/div/table/tbody/tr[1]/td/table/tbody/tr/td
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[7]/tbody/tr/td[2]/div/table/tbody/tr[2]/td/select
	
	Element Should Contain  ${LABEL}   Direção
 	Element Attribute Value Should Be  ${CAMPO}   name   direaces[]


#FIELD
Selecionar uma opção no campo Uso do Crachá "${CRACHA}"
	IF  "${CRACHA}" == "Empregado"
		Click Element  xpath=//*[@name="usocrach[]"][@value="1"]

	ELSE IF  "${CRACHA}" == "Terceiro"
		Click Element  xpath=//*[@name="usocrach[]"][@value="2"]
		
	ELSE IF  "${CRACHA}" == "Parceiro"
		Click Element  xpath=//*[@name="usocrach[]"][@value="3"]
		
	ELSE IF  "${CRACHA}" == "Visitante"
		Click Element  xpath=//*[@name="usocrach[]"][@value="4"]
		
	ELSE IF  "${CRACHA}" == "Provisório"
		Click Element  xpath=//*[@name="usocrach[]"][@value="6"]
	END

Preencher o campo Matrícula "${MATRICULA}"
	Input Text  xpath=//*[@name="codimatr"]  ${MATRICULA}

Selecionar uma opção no campo Empresa "${EMPRESA}"
	Select From List By Label  xpath=//*[@name="codiempr[]"]  ${EMPRESA}

Preencher o campo Início "${INICIO}"
	Input Text  xpath=//*[@name="dataacesinicio"][@type="text"]  ${INICIO}

Preencher o campo Término "${TERMINO}"
	Input Text  xpath=//*[@name="dataacestermino"][@type="text"]  ${TERMINO}
	
Preencher o campo Hora Inicial "${HORA}"
	Input Text  xpath=//*[@name="horaacesinicio"][@type="text"]  ${HORA}
	
Preencher o campo Hora Final "${HORA}"
	Input Text  xpath=//*[@name="horaacestermino"][@type="text"]  ${HORA}
	
Selecionar uma opção no campo Planta "${PLANTA}"
	Select From List By Label  xpath=//*[@name="codiplan[]"]  ${PLANTA}

Selecionar uma opção no campo Tipo de Acesso "${TIPO}"
	Select From List By Label  xpath=//*[@name="tipoaces[]"]  ${TIPO}

Selecionar uma opção no campo Função "${FUNCAO}"
	Select From List By Label  xpath=//*[@name="codifunc[]"]  ${FUNCAO}

Selecionar uma opção no campo Direção "${DIRECAO}"
	Select From List By Label  xpath=//*[@name="direaces[]"]  ${DIRECAO}