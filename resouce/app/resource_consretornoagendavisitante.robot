*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Visitante

# SCREEN
Acessar Tela Consulta de Agendamento de Visitantes
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  consretornoagendavisitante
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
  ${APPNAME}  Set Variable  consretornoagendavisitante
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable     Agendamento de Visitante
  ${ELEMENT}     Set Variable     xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Agendamento de Visitantes (Filtro)
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  


#BUTTON
#resource_btn.



#VERIFY (Filtro)

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Data Prevista
	${LABEL}       Set Variable   xpath=//td[@id='SC_tbagendvisit_dataprev_label']
	${CAMPO1}      Set Variable   xpath=//input[@name='tbagendvisit_dataprev_dia']
    ${CAMPO2}      Set Variable   xpath=//input[@name='tbagendvisit_dataprev_mes']
    ${CAMPO3}      Set Variable   xpath=//input[@name='tbagendvisit_dataprev_ano']
    Sleep  2s
	Element Should Contain  ${LABEL}  Data Prevista
 	Element Attribute Value Should Be   ${CAMPO1}   name   tbagendvisit_dataprev_dia
    Element Attribute Value Should Be   ${CAMPO2}   name   tbagendvisit_dataprev_mes
    Element Attribute Value Should Be   ${CAMPO3}   name   tbagendvisit_dataprev_ano

Verificar o campo Hora Prevista
	${LABEL}       Set Variable  xpath=//td[contains(text(),'Hora Prevista')]
	${CAMPO1}      Set Variable  xpath=//input[@name='tbagendvisit_horaprev_hor']
    ${CAMPO2}      Set Variable  xpath=//input[@name='tbagendvisit_horaprev_min']
    ${CAMPO3}      Set Variable  xpath=//input[@name='tbagendvisit_horaprev_seg']

	Element Should Contain  ${LABEL}   Hora Prevista
 	Element Attribute Value Should Be  ${CAMPO1}   name   tbagendvisit_horaprev_hor
    Element Attribute Value Should Be  ${CAMPO2}   name   tbagendvisit_horaprev_min
    Element Attribute Value Should Be  ${CAMPO3}   name   tbagendvisit_horaprev_seg

Verificar o campo Empresa do Visitado
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Empresa do Visitado')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[1]

	Element Should Contain  ${LABEL}   Empresa do Visitado


Verificar o campo Matricula do Visitado
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Matricula do Visitado')]
	${CAMPO}      Set Variable  xpath=//input[@name='tbcolab_codimatr']

	Element Should Contain  ${LABEL}   Matricula do Visitado
 	Element Attribute Value Should Be  ${CAMPO}   name   tbcolab_codimatr

Verificar o campo Código do Colaborador Visitado
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Código do Colaborador Visitado')]
	${CAMPO}      Set Variable  xpath=//input[@name='tbagendvisit_idcolab']

	Element Should Contain  ${LABEL}   Código do Colaborador Visitado
 	Element Attribute Value Should Be  ${CAMPO}   name   tbagendvisit_idcolab

Verificar o campo Tipo de Documento
	${LABEL}      Set Variable  xpath=//td[@id='SC_tbvisit_tipodocuvisi_label']
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[2]

	Element Should Contain  ${LABEL}   Tipo de
    Element Should Contain  ${LABEL}   Documento
 

Verificar o campo Número do Documento
	${LABEL}      Set Variable  xpath=//td[@id='SC_tbvisit_numedocuvisi_label']
	${CAMPO}      Set Variable  xpath=//input[@name='tbvisit_numedocuvisi']

	Element Should Contain  ${LABEL}   Número do 
    Element Should Contain  ${LABEL}   Documento
 	Element Attribute Value Should Be  ${CAMPO}   name   tbvisit_numedocuvisi

Verificar o campo Nome do Visitante
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Nome do Visitante')]
	${CAMPO}      Set Variable  xpath=//input[@name='tbpessoa_nomepess']

	Element Should Contain  ${LABEL}   Nome do Visitante
 	Element Attribute Value Should Be  ${CAMPO}   name   tbpessoa_nomepess

Verificar o campo Ramal
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Ramal')]
	${CAMPO}      Set Variable  xpath=//input[@name='numeramal']

	Element Should Contain  ${LABEL}   Ramal
 	Element Attribute Value Should Be  ${CAMPO}   name   numeramal



#FIELD
Preencher o campo Data Prevista "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="tbagendvisit_dataprev_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="tbagendvisit_dataprev_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="tbagendvisit_dataprev_ano"][@type="text"]  ${ANO}

Preencher o campo Hora Prevista "${HORA}:${MIN}:${SEG}"
	Input Text  xpath=//*[@name="tbagendvisit_horaprev_hor"][@type="text"]  ${HORA}
	Input Text  xpath=//*[@name="tbagendvisit_horaprev_min"][@type="text"]  ${MIN}
    Input Text  xpath=//*[@name="tbagendvisit_horaprev_seg"][@type="text"]  ${SEG}

Selecionar uma opção no campo Empresa do Visitado "${EMPRESA_DO_VISITADO}"
	Select From List By Label  xpath=//*[@name="tbcolab_codiempr"]  ${EMPRESA_DO_VISITADO}

Preencher o campo Matricula do Visitado "${MATRICULA_DO_VISITADO}"
	Input Text  xpath=//*[@name="tbcolab_codimatr"][@type="text"]  ${MATRICULA_DO_VISITADO}

Preencher o campo Código do Colaborador Visitado "${CÓDIGO_DO_COLABORADOR_VISITADO}"
	Input Text  xpath=//*[@name="tbagendvisit_idcolab"][@type="text"]  ${CÓDIGO_DO_COLABORADOR_VISITADO}

Selecionar uma opção no campo Tipo de Documento "${TIPO_DE_DOCUMENTO}"
	Select From List By Label  xpath=//*[@name="tbvisit_tipodocuvisi"]  ${TIPO_DE_DOCUMENTO}

Preencher o campo Número do Documento "${NÚMERO_DO_DOCUMENTO}"
	Input Text  xpath=//*[@name="tbvisit_numedocuvisi"][@type="text"]  ${NÚMERO_DO_DOCUMENTO}

Preencher o campo Nome do Visitante "${NOME_DO_VISITANTE}"
	Input Text  xpath=//*[@name="tbpessoa_nomepess"][@type="text"]  ${NOME_DO_VISITANTE}

Preencher o campo Ramal "${RAMAL}"
	Input Text  xpath=//*[@name="numeramal"][@type="text"]  ${RAMAL}

