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
resource_report.Navegar no Relatório: Total de Horas Trabalhadas

# SCREEN
Acessar Tela Relatório Total de Horas Trabalhadas - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Relatório Total de Horas Trabalhadas
  ${APPNAME}     Set Variable  consTotalHorasTrabalhadas
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Relatório Total de Horas Trabalhadas
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Relatório Total de Horas Trabalhadas
  ${APPNAME}     Set Variable  consTotalHorasTrabalhadas
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"


#BUTTON
#resource_btn.



#VERIFY (Filtro)

Verificar o campo Empresa
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/select
	
	Element Should Contain  ${LABEL}   Empresa
 	Element Attribute Value Should Be  ${CAMPO}   name   codiempr

Verificar o campo Empresa Terceira
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/select
	
	Element Should Contain  ${LABEL}   Empresa Terceira
 	Element Attribute Value Should Be  ${CAMPO}   name   codiemprcont[]

Verificar o campo Planta
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/select
	
	Element Should Contain  ${LABEL}   Planta
 	Element Attribute Value Should Be  ${CAMPO}   name   codiplan

Verificar o campo Tipo do Colaborador
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/select
	
	Element Should Contain  ${LABEL}   Tipo do Colaborador
 	Element Attribute Value Should Be  ${CAMPO}   name   tipocola

Verificar o campo Centro de Custo
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Centro de Custo
 	Element Attribute Value Should Be  ${CAMPO}   name   idcentcust

Verificar o campo Data de Acesso
	${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
	${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr[1]/td/input[1]
	${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr[1]/td/input[2]
	${CAMPO3}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr[1]/td/input[3]
	${CAMPO4}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr[2]/td/input[1]
	${CAMPO5}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr[2]/td/input[2]
	${CAMPO6}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr[2]/td/input[3]
	
	Element Should Contain  ${LABEL}   Data de Acesso
 	Element Attribute Value Should Be  ${CAMPO1}   name   dataaces_dia
	Element Attribute Value Should Be  ${CAMPO2}   name   dataaces_mes
	Element Attribute Value Should Be  ${CAMPO3}   name   dataaces_ano
	Element Attribute Value Should Be  ${CAMPO4}   name   dataaces_input_2_dia
	Element Attribute Value Should Be  ${CAMPO5}   name   dataaces_input_2_mes
	Element Attribute Value Should Be  ${CAMPO6}   name   dataaces_input_2_ano

Verificar o campo Nome 
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Nome 
 	Element Attribute Value Should Be  ${CAMPO}   name   nomepess

Verificar o campo Matrícula
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Matrícula
 	Element Attribute Value Should Be  ${CAMPO}   name   codimatr



#VERIFY

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[1]/font
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Empresa Terceira
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[2]/font
	Element Should Contain  ${LABEL}   Empresa Terceira

Verificar a label Tipo do Colaborador
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[3]/font
	Element Should Contain  ${LABEL}   Tipo do Colaborador

Verificar a label Matrícula
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[4]/font
	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Nome
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[5]/font
	Element Should Contain  ${LABEL}   Nome

Verificar a label CPF
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[6]/font
	Element Should Contain  ${LABEL}   CPF

Verificar a label Local
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[7]/font
	Element Should Contain  ${LABEL}   Local

Verificar a label Data de Acesso
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[8]/font
	Element Should Contain  ${LABEL}   Data de Acesso

Verificar a label Hora de Entrada
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[9]/font
	Element Should Contain  ${LABEL}   Hora de Entrada

Verificar a label Hora de Saída
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[10]/font
	Element Should Contain  ${LABEL}   Hora de Saída

Verificar a label Total de Horas
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[11]/font
	Element Should Contain  ${LABEL}   Total de Horas



#FIELD
Selecionar uma opção no campo Empresa "${EMPRESA}"
	Select From List By Label  xpath=//*[@name="codiempr"]  ${EMPRESA}

Selecionar uma opção no campo Empresa Terceira "${EMPRESA_TERCEIRA}"
	Select From List By Label  xpath=//*[@name="codiemprcont[]"]  ${EMPRESA_TERCEIRA}

Selecionar uma opção no campo Planta "${PLANTA}"
	Select From List By Label  xpath=//*[@name="codiplan"]  ${PLANTA}

Selecionar uma opção no campo Tipo do Colaborador "${TIPO_DO_COLABORADOR}"
	Select From List By Label  xpath=//*[@name="tipocola"]  ${TIPO_DO_COLABORADOR}

Preencher o campo Centro de Custo "${CENTRO_DE_CUSTO}"
	Input Text  xpath=//*[@name="idcentcust"][@type="text"]  ${CENTRO_DE_CUSTO}

Preencher o campo Data de Acesso Inicial "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="dataaces_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="dataaces_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="dataaces_ano"][@type="text"]  ${ANO}

Preencher o campo Data de Acesso Final "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="dataaces_input_2_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="dataaces_input_2_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="dataaces_input_2_ano"][@type="text"]  ${ANO}

Preencher o campo Nome "${NOME}"
	Input Text  xpath=//*[@name="nomepess"][@type="text"]  ${NOME}

Preencher o campo Matrícula "${MATRÍCULA}"
	Input Text  xpath=//*[@name="codimatr"][@type="text"]  ${MATRÍCULA}

