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
resource_report.Navegar no Relatório: Saída de Visitantes - Consulta


# SCREEN
Acessar Tela Consulta de Saída de Visitantes
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Saída de Visitantes
  ${APPNAME}     Set Variable  fichaSaidaVisitantes
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   
  ${HANDLES}     Get Window Handles
  Switch Window  ${HANDLES}[1]
  Maximize Browser Window

  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Consulta de Saída de Visitantes (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Saída de Visitantes (Filtro)
  ${APPNAME}     Set Variable  fichaSaidaVisitantes
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"




#BUTTON
#resource_btn.

#FIELD
Selecionar uma opção no campo Tipo Documento "${TIPO}"
	Select From List By Label  xpath=//*[@name="tipodocuvisi"]  ${TIPO}

Preencher o campo Número do Documento "${NUM}"
	Input Text  xpath=//*[@name="numedocuvisi"][@type="text"]  ${NUM}

Selecionar uma opção no campo Código da Empresa do Visitante "${COD}"
	Select From List By Label  xpath=//*[@name="codiemprcont"]  ${COD}

Preencher o campo Nome "${NOME}"
	Input Text  xpath=//*[@name="nomepess"][@type="text"]  ${NOME}

Preencher o campo Data da Entrada Inicial "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="dataentr_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="dataentr_dia"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="dataentr_dia"][@type="text"]  ${ANO}
	
Preencher o campo Data da Entrada Final "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="dataentr_input_2_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="dataentr_input_2_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="dataentr_input_2_ano"][@type="text"]  ${ANO}
	
Preencher o campo Data da Saída Inicial "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="datasaid_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="datasaid_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="datasaid_ano"][@type="text"]  ${ANO}
	
Preencher o campo Data da Saída Final "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="datasaid_input_2_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="datasaid_input_2_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="datasaid_input_2_ano"][@type="text"]  ${ANO}

Selecionar uma opção no campo Tipo da Visita "${TIPO}"
	Select From List By Label  xpath=//*[@name="tipovisi"]  ${TIPO}
