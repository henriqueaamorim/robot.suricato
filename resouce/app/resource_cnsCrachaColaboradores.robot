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
resource_report.Navegar no Relatório: Consulta de Histórico de Crachá

# SCREEN
Acessar Tela Consulta de Crachás de Colaboradores (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Crachás de Colaboradores (Filtro)
  ${APPNAME}     Set Variable  cnsCrachaColaboradores
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Consulta de Crachás Colaboradores
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Crachás Colaboradores
  ${APPNAME}     Set Variable  cnsCrachaColaboradores
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.



#FIELD
Preencher o campo Matrícula "${MATRÍCULA}"
	Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${MATRÍCULA}

Preencher o campo Data Início "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${ANO}

Preencher o campo Hora Início "${HORA}:${MIN}"
	Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${HORA}
	Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${MIN}

Preencher o campo Número da Vila do Crachá "${NÚMERO_DA_VILA_DO_CRACHÁ}"
	Input Text  xpath=//*[@name="NAME_DO_CAMPO"][@type="text"]  ${NÚMERO_DA_VILA_DO_CRACHÁ}




#FIELD
Selecionar uma opção no campo Tipo de Crachá "${TIPO_DE_CRACHÁ}"
	Select From List By Label  xpath=//*[@name="tbhistocrach_tipocrac[]"]  ${TIPO_DE_CRACHÁ}

Selecionar uma opção no campo Empresa "${EMPRESA}"
	Select From List By Label  xpath=//*[@name="tbcolab_codiempr[]"]  ${EMPRESA}

Selecionar uma opção no campo Tipo do Colaborador "${TIPO_DO_COLABORADOR}"
	Select From List By Label  xpath=//*[@name="tbcolab_tipocola[]"]  ${TIPO_DO_COLABORADOR}

Preencher o campo Matrícula "${MATRÍCULA}"
	Input Text  xpath=//*[@name="tbcolab_codimatr"][@type="text"]  ${MATRÍCULA}

Preencher o campo Data Início "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="tbhistocrach_datainic_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="tbhistocrach_datainic_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="tbhistocrach_datainic_ano"][@type="text"]  ${ANO}

Preencher o campo Hora Início "${HORA}:${MIN}"
	Input Text  xpath=//*[@name="tbhistocrach_horainic_hor"][@type="text"]  ${HORA}
	Input Text  xpath=//*[@name="tbhistocrach_horainic_min"][@type="text"]  ${MIN}

Preencher o campo Número da Vila do Crachá "${NÚMERO_DA_VILA_DO_CRACHÁ}"
	Input Text  xpath=//*[@name="tbhistocrach_numeviacrac"][@type="text"]  ${NÚMERO_DA_VILA_DO_CRACHÁ}

