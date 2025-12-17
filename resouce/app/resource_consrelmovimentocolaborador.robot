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
resource_report.Navegar no Relatório: Movimento de Colaboradores

# SCREEN
Acessar Tela Movimento de Colaboradores - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Movimento de Colaboradores
  ${APPNAME}     Set Variable  consrelmovimentocolaborador
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Movimento de Colaboradores
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Movimento de Colaboradores
  ${APPNAME}     Set Variable  consrelmovimentocolaborador
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"


#BUTTON
#resource_btn.

#VERIFY (Filtro)

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Empresa
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Empresa
 	Element Attribute Value Should Be  ${CAMPO}   name   codiempr[]

Verificar o campo Tipo de Colaborador
	${LABEL}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Tipo de 
	Element Should Contain  ${LABEL}   Colaborador
 	Element Attribute Value Should Be  ${CAMPO}   name   tipocola[]

Verificar o campo Código da Planta
	${LABEL}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	${CAMPO}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Código da 
	Element Should Contain  ${LABEL}   Planta
 	Element Attribute Value Should Be  ${CAMPO}   name   codiplan

Verificar o campo Código do Codin
	${LABEL}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
	${CAMPO}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Código do
	Element Should Contain  ${LABEL}   Codin
 	Element Attribute Value Should Be  ${CAMPO}   name   codicole

Verificar o campo Tipo do Acesso
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Tipo do Acesso
 	Element Attribute Value Should Be  ${CAMPO}   name   tipoaces[]

Verificar o campo Data
	${LABEL}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[1]
	${CAMPO1}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[1]/td/input[1]
	${CAMPO2}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[1]/td/input[2]
	${CAMPO3}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[1]/td/input[3]
	${CAMPO4}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[2]/td/input[1]
	${CAMPO5}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[2]/td/input[2]
	${CAMPO6}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[2]/td/input[3]
	
	Element Should Contain  ${LABEL}   Data
 	Element Attribute Value Should Be  ${CAMPO1}   name   dataaces_dia
	Element Attribute Value Should Be  ${CAMPO2}   name   dataaces_mes
	Element Attribute Value Should Be  ${CAMPO3}   name   dataaces_ano
	Element Attribute Value Should Be  ${CAMPO4}   name   dataaces_input_2_dia
	Element Attribute Value Should Be  ${CAMPO5}   name   dataaces_input_2_mes
	Element Attribute Value Should Be  ${CAMPO6}   name   dataaces_input_2_ano

Verificar o campo Hora
	${LABEL}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[1]
	${CAMPO1}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr/td/input[1]
	${CAMPO2}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr/td/input[2]
	${CAMPO3}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr/td/span/input[1]
	${CAMPO4}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr/td/span/input[2]
	
	Element Should Contain  ${LABEL}   Hora
 	Element Attribute Value Should Be  ${CAMPO1}   name   horaaces_hor
	Element Attribute Value Should Be  ${CAMPO2}   name   horaaces_min
	Element Attribute Value Should Be  ${CAMPO3}   name   horaaces_input_2_hor
	Element Attribute Value Should Be  ${CAMPO4}   name   horaaces_input_2_min

Verificar o campo Matrícula
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[9]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[9]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Matrícula
 	Element Attribute Value Should Be  ${CAMPO}   name   codimatr

Verificar o campo Exibir Usuário:
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[10]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[10]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Exibir Usuário:
 	Element Attribute Value Should Be  ${CAMPO}   name   filtroexibeusuario



#VERIFY

Verificar a label Matrícula
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[1]/font
	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Nome
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[2]/font
	Element Should Contain  ${LABEL}   Nome

Verificar a label Tipo de Colaborador
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[3]/font
	Element Should Contain  ${LABEL}   Tipo de
	Element Should Contain  ${LABEL}   Colaborador

Verificar a label Data
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[4]/font
	Element Should Contain  ${LABEL}   Data

Verificar a label Hora
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[5]/font
	Element Should Contain  ${LABEL}   Hora

Verificar a label Direção
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[6]/font
	Element Should Contain  ${LABEL}   Direção

Verificar a label Código da Planta
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[7]/font
	Element Should Contain  ${LABEL}   Código da
	Element Should Contain  ${LABEL}   Planta

Verificar a label Descrição da Planta
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[8]/font
	Element Should Contain  ${LABEL}   Descrição da
	Element Should Contain  ${LABEL}   Planta

Verificar a label Código do Codin
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[9]/font
	Element Should Contain  ${LABEL}   Código do 
	Element Should Contain  ${LABEL}   Codin

Verificar a label Descrição do Codin
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[10]/font
	Element Should Contain  ${LABEL}   Descrição do 
	Element Should Contain  ${LABEL}   Codin

Verificar a label Tipo de Acesso
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[11]/font
	Element Should Contain  ${LABEL}   Tipo de 
	Element Should Contain  ${LABEL}   Acesso
	



#FIELD
Selecionar uma opção no campo Empresa "${EMPRESA}"
	Select From List By Label  xpath=//*[@name="codiempr[]"]  ${EMPRESA}

Selecionar uma opção no campo Tipo do Colaborador "${TIPO_DO_COLABORADOR}"
	Select From List By Label  xpath=//*[@name="tipocola[]"]  ${TIPO_DO_COLABORADOR}

Preencher o campo Código da Planta "${CÓDIGO_DA_PLANTA}"
	Input Text  xpath=//*[@name="codiplan"][@type="text"]  ${CÓDIGO_DA_PLANTA}

Preencher o campo Código do Codin "${CÓDIGO_DO_CODIN}"
	Input Text  xpath=//*[@name="codicole"][@type="text"]  ${CÓDIGO_DO_CODIN}

Selecionar uma opção no campo Tipo do Acesso "${TIPO_DO_ACESSO}"
	Select From List By Label  xpath=//*[@name="tipoaces[]"]  ${TIPO_DO_ACESSO}

Preencher o campo Data Inicial "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="dataaces_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="dataaces_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="dataaces_ano"][@type="text"]  ${ANO}

Preencher o campo Data Final "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="dataaces_input_2_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="dataaces_input_2_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="dataaces_input_2_ano"][@type="text"]  ${ANO}

Preencher o campo Hora Inicial "${HORA}:${MIN}"
	Input Text  xpath=//*[@name="horaaces_hor"][@type="text"]  ${HORA}
	Input Text  xpath=//*[@name="horaaces_min"][@type="text"]  ${MIN}

Preencher o campo Hora Final "${HORA}:${MIN}"
	Input Text  xpath=//*[@name="horaaces_input_2_hor"][@type="text"]  ${HORA}
	Input Text  xpath=//*[@name="horaaces_input_2_min"][@type="text"]  ${MIN}

Preencher o campo Matrícula "${MATRÝCULA}"
	Input Text  xpath=//*[@name="codimatr"][@type="text"]  ${MATRÝCULA}

Selecionar uma opção no campo Exibir Usuário "${EXIBIR_USUÝRIO}"
	Select From List By Label  xpath=//*[@name="filtroexibeusuario"]  ${EXIBIR_USUÝRIO}

