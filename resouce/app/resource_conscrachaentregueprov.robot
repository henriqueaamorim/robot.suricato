*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Provisório | Colaborador

# SCREEN

Acessar Tela: Crachá Provisório 
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  conscrachaentregueprov
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable    Crachá Provisório
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Crachá Provisório
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela: Crachá Provisório (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  conscrachaentregueprov
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable    Crachá Provisório
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Crachá Provisório
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
  Input Text  xpath=//*[@name="icard"][@type="text"]  ${CRACHA}

Selecionar uma opção no campo Empresa "${EMP}"
  Select from list by label  xpath=//*[@name="codiempr"]  ${EMP}

Selecionar uma opção no campo Tipo do Colaborador "${TIPCOL}"
  Select from list by label  xpath=//*[@name="tipocola"]  ${TIPCOL}

Preencher o campo Matrícula "${MAT}"
  Input Text  xpath=//*[@name="codimatr"][@type="text"]  ${MAT}

Preencher o campo Nome "${NOME}"
  Input Text  xpath=//*[@name="nomepess"][@type="text"]  ${NOME}


Preencher o campo Data Inicial do Uso "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="datainic_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="datainic_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="datainic_ano"][@type="text"]  ${ANO}

Preencher o campo Data Inicial do Uso fim "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="datainic_input_2_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="datainic_input_2_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="datainic_input_2_ano"][@type="text"]  ${ANO}

Preencher o campo Hora Inicial do Uso "${HORA}/${MIN}"
  Input Text  xpath=//*[@name="horainic_hor"][@type="text"]  ${HORA}
  Input Text  xpath=//*[@name="horainic_min"][@type="text"]  ${MIN}

Preencher o campo Hora Inicial do Uso fim "${HORA}/${MIN}"
  Input Text  xpath=//*[@name="horainic_input_2_hor"][@type="text"]  ${HORA}
  Input Text  xpath=//*[@name="horainic_input_2_min"][@type="text"]  ${MIN}  

#VERIFY

Verificar a label Crachá
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[2]/font/b/a/font
  Element Should Contain  ${LABEL}   Crachá

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[3]/font/b/a/font
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Tipo do Colaborador
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[4]/font/b/a/font
	Element Should Contain  ${LABEL}   Tipo do Colaborador

Verificar a label Matrícula
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[5]/font/b/a/font
	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Nome
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[6]/font/b/a/font
	Element Should Contain  ${LABEL}   Nome

Verificar a label Data Inicial do Uso
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[7]/font/b/a/font
	Element Should Contain  ${LABEL}   Data Inicial
	Element Should Contain  ${LABEL}   do Uso

Verificar a label Hora Inicial do Uso
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[8]/font/b/a/font
	Element Should Contain  ${LABEL}   Hora Inicial
	Element Should Contain  ${LABEL}   do Uso


#VERIFY CAMPOS 

Verificar o campo: Crachá
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Crachá')]
	${CAMPO}      Set Variable  xpath=//input[@name='icard']
	Element Should Contain             ${LABEL}    Crachá
 	Element Attribute Value Should Be  ${CAMPO}   name   icard

Verificar o campo: Empresa
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Empresa')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain             ${LABEL}   Empresa
 	Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single   

Verificar o campo: Tipo do Colaborador	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo do Colaborador')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain             ${LABEL}   Tipo do Colaborador	
 	Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single   

Verificar o campo: Matrícula
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Matrícula')]
	${CAMPO}      Set Variable  xpath=//input[@name='codimatr']
	Element Should Contain             ${LABEL}   Matrícula
 	Element Attribute Value Should Be  ${CAMPO}   name   codimatr

Verificar o campo: Nome
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Nome')]
	${CAMPO}      Set Variable  xpath=//input[@name='nomepess']
	Element Should Contain             ${LABEL}   Nome
 	Element Attribute Value Should Be  ${CAMPO}   name   nomepess

Verificar o campo: Data Inicial do Uso	
	${LABEL}      Set Variable  xpath=//td[@id='SC_datainic_label']
	${CAMPO1}      Set Variable  xpath=//input[@name='datainic_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='datainic_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='datainic_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@name='datainic_input_2_dia']
  ${CAMPO5}      Set Variable  xpath=//input[@name='datainic_input_2_mes']
  ${CAMPO6}      Set Variable  xpath=//input[@name='datainic_input_2_ano']
	Element Should Contain             ${LABEL}   Data Inicial 	
  Element Should Contain             ${LABEL}   do Uso
 	Element Attribute Value Should Be  ${CAMPO1}   name  datainic_dia
  Element Attribute Value Should Be  ${CAMPO2}   name  datainic_mes
  Element Attribute Value Should Be  ${CAMPO3}   name  datainic_ano
  Element Attribute Value Should Be  ${CAMPO4}   name  datainic_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}   name  datainic_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}   name  datainic_input_2_ano  

Verificar o campo: Hora Inicial do Uso
	${LABEL}      Set Variable  xpath=//td[@id='SC_horainic_label']
	${CAMPO1}      Set Variable  xpath=//input[@name='datainic_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='datainic_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='datainic_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@name='datainic_input_2_dia']
	Element Should Contain             ${LABEL}   Hora Inicial 	
  Element Should Contain             ${LABEL}   do Uso
 	Element Attribute Value Should Be  ${CAMPO1}   name  datainic_dia
  Element Attribute Value Should Be  ${CAMPO2}   name  datainic_mes
  Element Attribute Value Should Be  ${CAMPO3}   name  datainic_ano
  Element Attribute Value Should Be  ${CAMPO4}   name  datainic_input_2_dia
   