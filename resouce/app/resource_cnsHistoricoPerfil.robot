*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Usuários | Histórico de Perfil

# SCREEN
Acessar Tela: Históricos de Perfil (Consulta)
  ${OBJ}         Set Variable   SCN
  ${SCREENNAME}  Set Variable   Históricos de Perfil
  ${APPNAME}     Set Variable   cnsHistoricoPerfil
  ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME}')]
  
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela: Históricos de Perfil (Filtro)
  ${OBJ}         Set Variable   SCN
  ${SCREENNAME}  Set Variable   Históricos de Perfil (Filtro)
  ${APPNAME}     Set Variable   cnsHistoricoPerfil
  ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME}')]
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

#VERIFY LABELS

Verificar a label: Titular
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Titular')]
	Element Should Contain  ${LABEL}   Titular

Verificar a label: Provisório
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Provisório')]
	Element Should Contain  ${LABEL}   Provisório

Verificar a label: Data Inicial
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data Inicial')]
	Element Should Contain  ${LABEL}   Data Inicial

Verificar a label: Hora Inicial
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora Inicial')]
	Element Should Contain  ${LABEL}   Hora Inicial

Verificar a label: Data Final
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data Final')]
	Element Should Contain  ${LABEL}   Data Final

Verificar a label: Hora Final
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora Final')]
	Element Should Contain  ${LABEL}   Hora Final


#VERIFY CAMPOS


Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo: Titular
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Titular')]
	${CAMPO}      Set Variable  xpath=//input[@name='idusuartitu']
	Element Should Contain             ${LABEL}   Titular
 	Element Attribute Value Should Be  ${CAMPO}   name  idusuartitu

Verificar o campo: Provisório
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Provisório')]
	${CAMPO}      Set Variable  xpath=//input[@name='idusuarprov']
	Element Should Contain             ${LABEL}   Provisório
 	Element Attribute Value Should Be  ${CAMPO}   name  idusuarprov

Verificar o campo: Data Inicial	
	${LABEL}       Set Variable  xpath=//td[contains(text(),'Data Inicial')]
	${CAMPO1}      Set Variable  xpath=//input[@name='datainic_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='datainic_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='datainic_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@name='datainic_input_2_dia']
  ${CAMPO5}      Set Variable  xpath=//input[@name='datainic_input_2_mes']
  ${CAMPO6}      Set Variable  xpath=//input[@name='datainic_input_2_ano']

	Element Should Contain             ${LABEL}   Data Inicial	
 	Element Attribute Value Should Be  ${CAMPO1}   name   datainic_dia
  Element Attribute Value Should Be  ${CAMPO2}   name   datainic_mes
  Element Attribute Value Should Be  ${CAMPO3}   name   datainic_ano
  Element Attribute Value Should Be  ${CAMPO4}   name   datainic_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}   name   datainic_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}   name   datainic_input_2_ano

Verificar o campo: Hora Inicial	
	${LABEL}       Set Variable  xpath=//td[contains(text(),'Hora Inicial')]
	${CAMPO1}      Set Variable  xpath=//input[@name='horainic_hor']
  ${CAMPO2}      Set Variable  xpath=//input[@name='horainic_min']
  ${CAMPO3}      Set Variable  xpath=//input[@name='horainic_input_2_hor']
  ${CAMPO4}      Set Variable  xpath=//input[@name='horainic_input_2_min']
	Element Should Contain             ${LABEL}    Hora Inicial	
 	Element Attribute Value Should Be  ${CAMPO1}   name  horainic_hor
  Element Attribute Value Should Be  ${CAMPO2}   name  horainic_min
  Element Attribute Value Should Be  ${CAMPO3}   name  horainic_input_2_hor
  Element Attribute Value Should Be  ${CAMPO4}   name  horainic_input_2_min

Verificar o campo: Data Final	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Data Final')]
	${CAMPO1}      Set Variable  xpath=//input[@name='datafina_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='datafina_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='datafina_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@name='datafina_input_2_dia']
  ${CAMPO5}      Set Variable  xpath=//input[@name='datafina_input_2_mes']
  ${CAMPO6}      Set Variable  xpath=//input[@name='datafina_input_2_ano']

	Element Should Contain             ${LABEL}    Data Final
 	Element Attribute Value Should Be  ${CAMPO1}   name   datafina_dia
  Element Attribute Value Should Be  ${CAMPO2}   name   datafina_mes
  Element Attribute Value Should Be  ${CAMPO3}   name   datafina_ano
  Element Attribute Value Should Be  ${CAMPO4}   name   datafina_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}   name   datafina_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}   name   datafina_input_2_ano

Verificar o campo: Hora Final	
	${LABEL}       Set Variable  xpath=//td[contains(text(),'Hora Final')]
	${CAMPO1}      Set Variable  xpath=//input[@name='horafina_hor']
  ${CAMPO2}      Set Variable  xpath=//input[@name='horafina_min']
  ${CAMPO3}      Set Variable  xpath=//input[@name='horafina_input_2_hor']
  ${CAMPO4}      Set Variable  xpath=//input[@name='horafina_input_2_min']
	Element Should Contain             ${LABEL}    Hora Final
 	Element Attribute Value Should Be  ${CAMPO1}   name  horafina_hor
  Element Attribute Value Should Be  ${CAMPO2}   name  horafina_min
  Element Attribute Value Should Be  ${CAMPO3}   name  horafina_input_2_hor
  Element Attribute Value Should Be  ${CAMPO4}   name  horafina_input_2_min


#FIELD
Preencher o campo Titular "${TITULAR}"
  Input Text   xpath=//*[@name="idusuartitu"][@type="text"]   ${TITULAR}

Preencher o campo Provisório "${PROV}"
  Input Text   xpath=//*[@name="idusuarprov"][@type="text"]   ${PROV}

Selecionar uma opção do campo Data Inicial "${DATAIN}"
  Select from list by label  xpath=//*[@name="datainic_cond"]  ${DATAIN}

Preencher o campo Data Inicial "${DIA}/${MES}/${ANO}"
  Input Text   xpath=//*[@name="datainic_dia"][@type="text"]  ${DIA} 
  Input Text   xpath=//*[@name="datainic_mes"][@type="text"]  ${MES} 
  Input Text   xpath=//*[@name="datainic_ano"][@type="text"]  ${ANO}

Selecionar uma opção do campo Hora Inicial "${HORAIN}"
  Select from list by label  xpath=//*[@name="horainic_cond"]  ${HORAIN}

Preencher o campo Hora Inicial "${HOR}/${MIN}/${SEG}" 
  Input Text   xpath=//*[@name="horafina_hor"][@type="text"]  ${HOR} 
  Input Text   xpath=//*[@name="horafina_min"][@type="text"]  ${MIN} 
  Input Text   xpath=//*[@name="horafina_seg"][@type="text"]  ${SEG}

Selecionar uma opção do campo Data Final "${DATAFIM}"
  Select from list by label  xpath=//*[@name="datafina_cond"]  ${DATAFIM}

Preencher o campo Data Final "${DIA}/${MES}/${ANO}" 
  Input Text   xpath=//*[@name="datafina_dia"][@type="text"]  ${DIA} 
  Input Text   xpath=//*[@name="datafina_mes"][@type="text"]  ${MES} 
  Input Text   xpath=//*[@name="datafina_ano"][@type="text"]  ${ANO}

Selecionar uma opção do campo Hora Final "${DATAFIM}"
  Select from list by label  xpath=//*[@name="horafina_cond"]  ${DATAFIM}

Preencher o campo Hora Final "${HOR}/${MIN}/${SEG}"
  Input Text   xpath=//*[@name="horafina_hor"][@type="text"]  ${HOR} 
  Input Text   xpath=//*[@name="horafina_min"][@type="text"]  ${MIN} 
  Input Text   xpath=//*[@name="horafina_seg"][@type="text"]  ${SEG}