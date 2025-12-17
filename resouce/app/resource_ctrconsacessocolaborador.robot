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
resource_report.Navegar no Relatório: Controle para a Consulta de Acesso de Colaborador

# SCREEN
Acessar Tela Consulta de Acesso (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Acesso (Filtro)
  ${APPNAME}     Set Variable  ctrconsacessocolaborador
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Consulta de Acesso Colaborador/Terceiro/Parceiro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Acesso Colaborador, Terceiro e Parceiro
  ${APPNAME}     Set Variable  ctrconsacessocolaborador
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Sleep  5s
  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  


#BUTTON
#resource_btn.



#VERIFY (Filtro)

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Tipo de Colaborador
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/select
	
	Element Should Contain  ${LABEL}   Tipo de Colaborador
 	Element Attribute Value Should Be  ${CAMPO}   name   tipocola[]

Verificar o campo Empresa
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/select
	
	Element Should Contain  ${LABEL}   Empresa
 	Element Attribute Value Should Be  ${CAMPO}   name   codiempr[]

Verificar o campo Matrícula
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Matrícula
 	Element Attribute Value Should Be  ${CAMPO}   name   codimatr

Verificar o campo Nome
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Nome
 	Element Attribute Value Should Be  ${CAMPO}   name   nomepess

Verificar o campo Número do CPF
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Número do CPF
 	Element Attribute Value Should Be  ${CAMPO}   name   numecpf

Verificar o campo Crachá
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Crachá
 	Element Attribute Value Should Be  ${CAMPO}   name   icard

Verificar o campo Data
	${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[1]
	${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr/td/input[1]
	${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr/td/input[2]
	${CAMPO3}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr/td/input[3]
	${CAMPO4}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr/td/span/input[1]
	${CAMPO5}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr/td/span/input[2]
	${CAMPO6}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr/td/span/input[3]
	
	Element Should Contain  ${LABEL}   Data
 	Element Attribute Value Should Be  ${CAMPO1}   name   dataacesso_dia
	Element Attribute Value Should Be  ${CAMPO2}   name   dataacesso_mes
	Element Attribute Value Should Be  ${CAMPO3}   name   dataacesso_ano
	Element Attribute Value Should Be  ${CAMPO4}   name   dataacesso_input_2_dia
	Element Attribute Value Should Be  ${CAMPO5}   name   dataacesso_input_2_mes
	Element Attribute Value Should Be  ${CAMPO6}   name   dataacesso_input_2_ano

Verificar o campo Hora
	${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[9]/td[1]
	${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[9]/td[2]/table/tbody/tr[1]/td/input[1]
	${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[9]/td[2]/table/tbody/tr[1]/td/input[2]
	${CAMPO3}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[9]/td[2]/table/tbody/tr[2]/td/input[1]
	${CAMPO4}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[9]/td[2]/table/tbody/tr[2]/td/input[2]
	
	Element Should Contain  ${LABEL}   Hora
 	Element Attribute Value Should Be  ${CAMPO1}   name   horaacesso_hor
	Element Attribute Value Should Be  ${CAMPO2}   name   horaacesso_min
	Element Attribute Value Should Be  ${CAMPO3}   name   horaacesso_input_2_hor
	Element Attribute Value Should Be  ${CAMPO4}   name   horaacesso_input_2_min

Verificar o campo Tipo
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[10]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[10]/td[2]/table/tbody/tr/td/select
	
	Element Should Contain  ${LABEL}   Tipo
 	Element Attribute Value Should Be  ${CAMPO}   name   tipoaces[]

Verificar o campo Planta
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[11]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[11]/td[2]/table/tbody/tr/td/select
	
	Element Should Contain  ${LABEL}   Planta
 	Element Attribute Value Should Be  ${CAMPO}   name   codiplan[]

Verificar o campo Codin
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[12]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[12]/td[2]/table/tbody/tr/td/select
	
	Element Should Contain  ${LABEL}   Codin
 	Element Attribute Value Should Be  ${CAMPO}   name   idcodin[]



#VERIFY

Verificar a label Data/Hora Acesso
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[1]/font/b
	Element Should Contain  ${LABEL}   Data/Hora Acesso

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[2]/font/b/a/font
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Empresa Terceira
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[3]/font/b
	Element Should Contain  ${LABEL}   Empresa Terceira

Verificar a label Tipo de Colaborador
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[4]/font/b/a/font
	Element Should Contain  ${LABEL}   Tipo de Colaborador

Verificar a label Matrícula
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[5]/font/b/a/font
	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Crachá
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[6]/font/b/a/font
	Element Should Contain  ${LABEL}   Crachá

Verificar a label Nome
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[7]/font/b/a/font
	Element Should Contain  ${LABEL}   Nome

Verificar a label Número do CPF
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[8]/font/b/a/font
	Element Should Contain  ${LABEL}   Número do CPF

Verificar a label Filial
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[9]/font/b/a/font
	Element Should Contain  ${LABEL}   Filial

Verificar a label Matrícula Responsável Terceiro
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[10]/font/b/a/font
	Element Should Contain  ${LABEL}   Matrícula Responsável Terceiro

Verificar a label Nome Responsável Terceiro
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[11]/font/b/a/font
	Element Should Contain  ${LABEL}   Nome Responsável Terceiro

Verificar a label Tipo Acesso
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[12]/font/b/a/font
	Element Should Contain  ${LABEL}   Tipo Acesso

Verificar a label Direção
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[13]/font/b/a/font
	Element Should Contain  ${LABEL}   Direção

Verificar a label Planta
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[14]/font/b/a/font
	Element Should Contain  ${LABEL}   Planta

Verificar a label Codin
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[15]/font/b/a/font
	Element Should Contain  ${LABEL}   Codin

Verificar a label Função
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[16]/font/b/a/font
	Element Should Contain  ${LABEL}   Função

Verificar a label Qtde.
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[17]/font/b/a/font
	Element Should Contain  ${LABEL}   Qtde.

Verificar a label Uso da Marcação
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[18]/font/b/a/font
	Element Should Contain  ${LABEL}   Uso da Marcação

Verificar a label ON/OFF
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[19]/font/b/a/font
	Element Should Contain  ${LABEL}   ON/OFF



#FIELD
Selecionar uma opção no campo Tipo de Colaborador "${TIPO_DE_COLABORADOR}"
	Select From List By Label  xpath=//*[@name="tipocola[]"]  ${TIPO_DE_COLABORADOR}

Selecionar uma opção no campo Empresa "${EMPRESA}"
	Select From List By Label  xpath=//*[@name="codiempr[]"]  ${EMPRESA}

Preencher o campo Matrícula "${MATRÍCULA}"
	Input Text  xpath=//*[@name="codimatr"][@type="text"]  ${MATRÍCULA}

Preencher o campo Nome "${NOME}"
	Input Text  xpath=//*[@name="nomepess"][@type="text"]  ${NOME}

Preencher o campo Número do CPF "${NÚMERO_DO_CPF}"
	Input Text  xpath=//*[@name="numecpf"][@type="text"]  ${NÚMERO_DO_CPF}

Preencher o campo Crachá "${CRACHÁ}"
	Input Text  xpath=//*[@name="icard"][@type="text"]  ${CRACHÁ}

Preencher o campo Data Inicial "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="dataacesso_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="dataacesso_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="dataacesso_ano"][@type="text"]  ${ANO}

Preencher o campo Data Final "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="dataacesso_input_2_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="dataacesso_input_2_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="dataacesso_input_2_ano"][@type="text"]  ${ANO}

Preencher o campo Hora Inicial "${HORA}:${MIN}"
	Input Text  xpath=//*[@name="horaacesso_hor"][@type="text"]  ${HORA}
	Input Text  xpath=//*[@name="horaacesso_min"][@type="text"]  ${MIN}

Preencher o campo Hora Final "${HORA}:${MIN}"
	Input Text  xpath=//*[@name="horaacesso_input_2_hor"][@type="text"]  ${HORA}
	Input Text  xpath=//*[@name="horaacesso_input_2_min"][@type="text"]  ${MIN}

Selecionar uma opção no campo Tipo "${TIPO}"
	Select From List By Label  xpath=//*[@name="tipoaces[]"]  ${TIPO}

Selecionar uma opção no campo Planta "${PLANTA}"
	Select From List By Label  xpath=//*[@name="codiplan[]"]  ${PLANTA}

Selecionar uma opção no campo Codin "${CODIN}"
	Select From List By Label  xpath=//*[@name="idcodin[]"]  ${CODIN}

Preencher o campo External Key "${EXTERNAL_KEY}"
	Input Text  xpath=//*[@name="external_key"][@type="text"]  ${EXTERNAL_KEY}

