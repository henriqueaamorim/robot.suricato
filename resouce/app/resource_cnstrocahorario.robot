*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu

# SCREEN
Acessar Tela Consulta de Troca de Horários
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnstrocahorario
  IF	"${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247"
  ${SCREENNAME}  Set Variable   Programação - Troca de Horário
  ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE  
  ${SCREENNAME}   Set Variable 
  ${ELEMENT}     Set Variable  xpath=
  END
  
  sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela de Troca de Horários (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnstrocahorario
  IF	"${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247"
  ${SCREENNAME}  Set Variable   Programação - Troca de Horário
  ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE  
  ${SCREENNAME}   Set Variable 
  ${ELEMENT}     Set Variable  xpath=
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

Selecionar uma opção do campo Tipo do Colaborador "${TIPCOL}"
  Select from list by label  xpath=//*[@name="tipocola"]  ${TIPCOL}  

Preencher o campo Nome "${NOME}"
  Input Text  xpath=//*[@name="nomecol"][@type="text"]  ${NOME}

Preencher o campo Data da Troca Inicial  "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="datainic_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="datainic_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="datainic_ano"][@type="text"]  ${ANO}  

Preencher o campo Data da Troca Final  "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="datainic_input_2_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="datainic_input_2_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="datainic_input_2_ano"][@type="text"]  ${ANO}    

Selecionar uma opção do campo Novo Horário "${NHR}"
  Select from list by label  xpath=//*[@name="codihora"]  ${NHR}    

Preencher o campo Mátricula "${MATRICULA}"
  Input Text  xpath=//*[@name="codimatr"][@type="text"]  ${MATRICULA}


#VERIFY LABELS CONSULTA

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Empresa')]

Verificar a label Tipo
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo')]
	Element Should Contain  ${LABEL}   Tipo  

Verificar a label Nome
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome')]
	Element Should Contain  ${LABEL}   Nome  

Verificar a label Matrícula
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Matrícula')]
	Element Should Contain  ${LABEL}   Matrícula  

Verificar a label Data da Troca
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data da Troca')]
	Element Should Contain  ${LABEL}   Data da Troca

Verificar a label Novo Horário
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Novo Horário')]
	Element Should Contain  ${LABEL}   Novo Horário


#VERIFY CAMPOS FILTRO

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa

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

Verificar o campo Matrícula 
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Matrícula')]
	${CAMPO}      Set Variable  xpath=//input[@name='codimatr']
	Element Should Contain             ${LABEL}   Matrícula
 	Element Attribute Value Should Be  ${CAMPO}   name  codimatr    

Verificar o campo Nome
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Nome')]
	${CAMPO}      Set Variable  xpath=//input[@name='nomecol']
  sleep  2s
	Element Should Contain             ${LABEL}   Nome 
 	Element Attribute Value Should Be  ${CAMPO}   name   nomecol  

Verificar o campo Data da Troca	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Data da Troca')]
	${CAMPO1}      Set Variable  xpath=//input[@name='datainic_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='datainic_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='datainic_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@name='datainic_input_2_dia']
  ${CAMPO5}      Set Variable  xpath=//input[@name='datainic_input_2_mes']
  ${CAMPO6}      Set Variable  xpath=//input[@name='datainic_input_2_ano']

	Element Should Contain             ${LABEL}   Data da Troca	 
 	Element Attribute Value Should Be  ${CAMPO1}   name   datainic_dia       
  Element Attribute Value Should Be  ${CAMPO2}   name   datainic_mes   
  Element Attribute Value Should Be  ${CAMPO3}   name   datainic_ano
  Element Attribute Value Should Be  ${CAMPO4}   name   datainic_input_2_dia   
  Element Attribute Value Should Be  ${CAMPO5}   name   datainic_input_2_mes   
  Element Attribute Value Should Be  ${CAMPO6}   name   datainic_input_2_ano   


    
