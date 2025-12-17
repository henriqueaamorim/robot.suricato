*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Programação | Troca de Ponte

# SCREEN
Acessar Tela: Programação - Troca de Ponte (Consulta)
  ${OBJ}      Set Variable  SCN
  ${APPNAME}  Set Variable  cnsPontes
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Programação - Troca de Ponte
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'Programação - Troca de Ponte')]
  ELSE
    ${SCREENNAME}  Set Variable 
    ${ELEMENT}  Set Variable  
  END
  sleep   2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela: Programação - Troca de Ponte (FIltro)
  ${OBJ}      Set Variable  SCN
  ${APPNAME}  Set Variable  cnsPontes
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Programação - Troca de Ponte
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
    ${SCREENNAME}  Set Variable 
    ${ELEMENT}  Set Variable  
  END

  sleep   2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.


#FIELD

Selecionar uma opção do campo Empresa "${EMP}"
  Select from list by label  xpath=//*[@name="codiempr"]  ${EMP}

Preencher o campo Tipo do Colaborador "${TIPO}"
  Select from list by label  xpath=//*[@name="tipocola"]  ${TIPO} 

Preencher o campo Nome "${NAME}"
  Input Text  xpath=//*[@name="nomepess"][@type="text"]  ${NAME}

Preencher o campo Data do Horário 1 "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="datahoraum_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="datahoraum_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="datahoraum_ano"][@type="text"]  ${ANO}

Preencher o campo Data do Horário 1 FIM "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="datahoraum_input_2_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="datahoraum_input_2_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="datahoraum_input_2_mes"][@type="text"]  ${ANO}  

Preencher o campo Data do Horário 2 "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="datahoradois_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="datahoradois_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="datahoradois_ano"][@type="text"]  ${ANO}  

Preencher o campo Data do Horário 2 FIM "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="datahoradois_input_2_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="datahoradois_input_2_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="datahoradois_input_2_ano"][@type="text"]  ${ANO}   

Preencher o campo Matrícula "${MAT}"
  Input Text  xpath=//*[@name="codimatr"][@type="text"]  ${MAT}


#VERIFY LABELS CONSULTA

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Empresa')]
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Tipo
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo')]
	Element Should Contain  ${LABEL}   Tipo

Verificar a label Matrícula
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Matrícula')]
	Element Should Contain  ${LABEL}   Matrícula 

Verificar a label Nome
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome')]
	Element Should Contain  ${LABEL}   Nome   

Verificar a label Data 1
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data 1')]
	Element Should Contain  ${LABEL}   Data 1  

Verificar a label Data 2
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data 2')]
	Element Should Contain  ${LABEL}   Data 2  

#VERIFY CAMPOS FILTRO

Verificar a label Pesquisa
	 ${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
   sleep  2s
	 Element Should Contain  ${LABEL}    Pesquisa

Verificar o campo Empresa
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Empresa')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[1]
	Element Should Contain             ${LABEL}   Empresa
  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single

Verificar o campo Tipo
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[2]
	Element Should Contain             ${LABEL}   Tipo  
  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single

Verificar o campo Nome
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Nome')]
	${CAMPO}      Set Variable  xpath=//input[@name='nomepess']

	Element Should Contain             ${LABEL}   Nome 
 	Element Attribute Value Should Be  ${CAMPO}   name   nomepess

Verificar o campo Data 1 
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Data 1')]
	${CAMPO1}      Set Variable  xpath=//input[@name='datahoraum_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='datahoraum_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='datahoraum_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@name='datahoraum_input_2_dia']
  ${CAMPO5}      Set Variable  xpath=//input[@name='datahoraum_input_2_mes']
  ${CAMPO6}      Set Variable  xpath=//input[@name='datahoraum_input_2_ano']

	Element Should Contain             ${LABEL}   Data 1
 	Element Attribute Value Should Be  ${CAMPO1}   name   datahoraum_dia   
  Element Attribute Value Should Be  ${CAMPO2}   name   datahoraum_mes 
  Element Attribute Value Should Be  ${CAMPO3}   name   datahoraum_ano 
  Element Attribute Value Should Be  ${CAMPO4}   name   datahoraum_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}   name   datahoraum_input_2_mes 
  Element Attribute Value Should Be  ${CAMPO6}   name   datahoraum_input_2_ano   

Verificar o campo Matrícula 
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Matrícula')]
	${CAMPO}      Set Variable  xpath=//input[@name='codimatr']

	Element Should Contain             ${LABEL}   Matrícula
 	Element Attribute Value Should Be  ${CAMPO}   name  codimatr      

