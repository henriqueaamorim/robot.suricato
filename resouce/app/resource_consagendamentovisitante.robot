*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Visitante | Agendamento Visitante

# SCREEN
Acessar Tela Consulta de Agendamento de Visitantes
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  consagendamentovisitante
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable    Agendamento de Visitante
    ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Agendamento de Visitantes
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Consulta de Agendamento de Visitantes (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  consagendamentovisitante
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable  Agendamento de Visitante
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Agendamento de Visitantes
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  

# MENU
resource_mnu.Clicar No Menu Identificação | Visitante | Solicitar Aprovação de Visita 

# SCREEN
Acessar Tela: Solicitação de Visita (Consulta)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  consagendamentovisitante
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable    Solicitação de Visita
    ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Solicitação de Visita
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
  
Acessar Tela: Solicitação de Visita (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  consagendamentovisitante
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable    Solicitação de Visita
    ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Agendamento de Visitantes
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  

#BUTTON
#resource_btn.


#FIELD

Preencher o campo Data Prevista da Visita "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="dataprev_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="dataprev_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="dataprev_ano"][@type="text"]  ${ANO}

Preencher o campo X "${HORA}/${MIN}/${SEG}"
  Input Text  xpath=//*[@name="horaprev_hor"][@type="text"]  ${HORA}
  Input Text  xpath=//*[@name="horaprev_min"][@type="text"]  ${MIN}
  Input Text  xpath=//*[@name="horaprev_seg"][@type="text"]  ${SEG}  

Selecionar uma opção no campo Empresa do Visitado "${EMPV}" 
  Select from list by label  xpath=//*[@name="codiempr"]  ${EMPV}

Selecionar uma opção no campo Tipo do Visitado "${TIPV}"
  Select from list by label  xpath=//*[@name="tipocola"]  ${TIPV}

Preencher o campo Nome do Visitado "${NAMEV}"
  Input Text  xpath=//*[@name="nomefun"][@type="text"]  ${NAMEV}

Selecionar uma opção no campo Tipo do Documento do Visitante "${DOCV}"
  Select from list by label  xpath=//*[@name="tipodocuvisi"]  ${DOCV}

Preencher o campo Número do Documento do Visitante "${NDOCV}"
  Input Text  xpath=//*[@name="numedocuvisi"][@type="text"]  ${NDOCV}

Preencher o campo Nome do Visitante "${NOMEVIS}"
  Input Text  xpath=//*[@name="nomevis"][@type="text"]  ${NOMEVIS}

Preencher o campo Ramal "${RAMAL}"
  Input Text  xpath=//*[@name="numeramal"][@type="text"]  ${RAMAL}

Preencher o campo Solicitante "${SOLIC}"
  Input Text  xpath=//*[@name="nomecolab"][@type="text"]  ${SOLIC}

#VERIFY LABELS na tela: Agendamento de Visitante

Verificar a label Data Prevista
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data Prevista')]
	Element Should Contain  ${LABEL}  Data   ${LABEL}   Prevista

Verificar a label Hora Prevista
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora Prevista')]
	Element Should Contain  ${LABEL}   Hora  ${LABEL}   Prevista

Verificar a label Código do Visitado
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código do Visitado')]
  Sleep  2s
	Element Should Contain  ${LABEL}  Código do  ${LABEL}  Visitado

Verificar a label Código da Empresa do Visitado
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código da Empresa do Visitado')]
	Element Should Contain  ${LABEL}  Código da  ${LABEL}   Empresa do Visitado

Verificar a label Empresa do Visitado
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Empresa do Visitado')]
	Element Should Contain  ${LABEL}   Empresa do   ${LABEL}   Visitado

Verificar a label Código do Tipo do Visitado
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código do Tipo do Visitado')]
	Element Should Contain  ${LABEL}  Código do Tipo  ${LABEL}  do Visitado

Verificar a label Tipo do Visitado
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo do Visitado')]
	Element Should Contain  ${LABEL}   Tipo do  ${LABEL}   Visitado

Verificar a label Matrícula
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Matrícula')]
	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Visitado
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Visitado')]
	Element Should Contain  ${LABEL}   Visitado

Verificar a label Código do Visitante
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código do Visitante')]
	Element Should Contain  ${LABEL}   Código do   ${LABEL}   Visitante

Verificar a label Código do Tipo de Documento do Visitante
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código do Tipo de Documento do Visitante')]
	Element Should Contain  ${LABEL}  Código do Tipo  ${LABEL}   de Documento do Visitante

Verificar a label Tipo de Documento do Visitante
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo de Documento do Visitante')]
	Element Should Contain  ${LABEL}   Tipo de Documento  ${LABEL}  do Visitante

Verificar a label Número Documento do Visitante
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Número Documento do Visitante')]
	Element Should Contain  ${LABEL}   Número Documento  ${LABEL} do Visitante

Verificar a label Visitante
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Visitante')]
	Element Should Contain  ${LABEL}   Visitante

Verificar a label Ramal
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Ramal')]
	Element Should Contain  ${LABEL}   Ramal

#VERIFY CAMPOS 

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Data Prevista	
	${LABEL}       Set Variable  xpath=//td[contains(text(),'Data Prevista')]
	${CAMPO1}      Set Variable  xpath=//input[@name='dataprev_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='dataprev_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='dataprev_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@name='dataprev_input_2_dia']
  ${CAMPO5}      Set Variable  xpath=//input[@name='dataprev_input_2_mes']
  ${CAMPO6}      Set Variable  xpath=//input[@name='dataprev_input_2_ano']
	Element Should Contain             ${LABEL}   Data Prevista	
 	Element Attribute Value Should Be  ${CAMPO1}   name  dataprev_dia
  Element Attribute Value Should Be  ${CAMPO2}   name  dataprev_mes
  Element Attribute Value Should Be  ${CAMPO3}   name  dataprev_ano
  Element Attribute Value Should Be  ${CAMPO4}   name  dataprev_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}   name  dataprev_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}   name  dataprev_input_2_ano

Verificar o campo Matrícula	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Matrícula')]
	${CAMPO}      Set Variable  xpath=//input[@name='codimatr']
	Element Should Contain             ${LABEL}   Matrícula	
 	Element Attribute Value Should Be  ${CAMPO}   name  codimatr

Verificar o campo Código do Tipo de Documento do Visitante	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Código do Tipo de Documento do Visitante')]
	${CAMPO}      Set Variable  xpath=//input[@name='tipodocuvisi']
	Element Should Contain             ${LABEL}   Código do Tipo de Documento do Visitante	
 	Element Attribute Value Should Be  ${CAMPO}   name  tipodocuvisi

Verificar o campo Número Documento do Visitante	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Número Documento do Visitante')]
	Element Should Contain             ${LABEL}   Número Documento do Visitante	
