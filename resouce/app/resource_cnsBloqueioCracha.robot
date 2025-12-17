*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Crachá | Bloqueio

# SCREEN
Acessar Tela Consulta de Crachá Bloqueado
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsBloqueioCracha
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable    Crachá Bloqueado
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Crachá Bloqueado  
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela: Crachá Bloqueado (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsBloqueioCracha
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable    Crachá Bloqueado
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Crachá Bloqueado  
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
Preencher o campo Crachá "${CRACHA}"
  Input Text    xpath=//*[@name="icard"][@type="text"]    ${CRACHA}

Preencher o campo Data do Bloqueio "${DIA}/${MES}/${ANO}"
  Input Text    xpath=//*[@name="databloq_dia"][@type="text"]    ${DIA}
  Input Text    xpath=//*[@name="databloq_mes"][@type="text"]    ${MES}
  Input Text    xpath=//*[@name="databloq_ano"][@type="text"]    ${ANO}

Preencher o campo Hora do Bloqueio "${HORA}:${MIN}"
  Input Text    xpath=//*[@name="horabloq_hor"][@type="text"]    ${HORA}
  Input Text    xpath=//*[@name="horabloq_min"][@type="text"]    ${MIN}

Selecionar uma opção no campo Motivo "${MOTIVO}"
  Select From List By Label    xpath=//*[@name="codimoti"]    ${MOTIVO}

#VERIFY LABELS

Verificar a label: Crachá
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Crachá')]
	Element Should Contain  ${LABEL}   Crachá

Verificar a label: Número Físico
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Número Físico')]
	Element Should Contain  ${LABEL}   Número Físico

Verificar a label: Data do Bloqueio
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data do Bloqueio')]
	Element Should Contain  ${LABEL}   Data do Bloqueio

Verificar a label: Hora do Bloqueio
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora do Bloqueio')]
	Element Should Contain  ${LABEL}   Hora do Bloqueio

Verificar a label: Motivo
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Motivo')]
	Element Should Contain  ${LABEL}   Motivo

Verificar a label: Data da Liberação
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data da Liberação')]
	Element Should Contain  ${LABEL}   Data da Liberação

Verificar a label: Hora da Liberação
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora da Liberação')]
	Element Should Contain  ${LABEL}   Hora da Liberação


#VERIFY CAMPOS

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo: Crachá
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Crachá')]
	${CAMPO}      Set Variable  xpath=//input[@name='icard']
	Element Should Contain             ${LABEL}   Crachá
 	Element Attribute Value Should Be  ${CAMPO}   name  icard

Verificar o campo: Data do Bloqueio	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Data do Bloqueio')]
	${CAMPO1}      Set Variable  xpath=//input[@name='databloq_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='databloq_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='databloq_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@name='databloq_input_2_dia']
  ${CAMPO5}      Set Variable  xpath=//input[@name='databloq_input_2_mes']
  ${CAMPO6}      Set Variable  xpath=//input[@name='databloq_input_2_ano']
	Element Should Contain             ${LABEL}    Data do Bloqueio	
 	Element Attribute Value Should Be  ${CAMPO1}   name   databloq_dia
  Element Attribute Value Should Be  ${CAMPO2}   name   databloq_mes
  Element Attribute Value Should Be  ${CAMPO3}   name   databloq_ano
  Element Attribute Value Should Be  ${CAMPO4}   name   databloq_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}   name   databloq_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}   name   databloq_input_2_ano

Verificar o campo: Hora do Bloqueio	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Hora do Bloqueio')]
	${CAMPO1}      Set Variable  xpath=//input[@name='horabloq_hor']
  ${CAMPO2}      Set Variable  xpath=//input[@name='horabloq_min']
	Element Should Contain             ${LABEL}   Hora do Bloqueio	
 	Element Attribute Value Should Be  ${CAMPO1}   name  horabloq_hor
  Element Attribute Value Should Be  ${CAMPO2}   name  horabloq_min

Verificar o campo: Motivo
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Motivo')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain             ${LABEL}   Motivo
  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single
  