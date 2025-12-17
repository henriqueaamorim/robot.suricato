*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Área Restrita | Autorizar Acesso

# SCREEN
Acessar Tela Consulta Autorizar Acesso de Colaboradores
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsAutorizarAcessoColaboradores
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable    Autorizar Acesso de Colaboradores
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta Autorizar Acesso de Colaboradores
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela: Autorizar Acesso de Colaboradores (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsAutorizarAcessoColaboradores
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable    Autorizar Acesso de Colaboradores (Filtro)
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta Autorizar Acesso de Colaboradores
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
Selecionar uma opção no campo Empresa "${EMPRESA}"
  Select From List By Label  xpath=//*[@name="codiempr[]"]  ${EMPRESA}

Selecionar uma opção no campo Tipo do Colaborador "${COLAB}"
  Select From List By Label  xpath=//*[@name="tipocola[]"]  ${COLAB}

Preencher o campo Cadastro "${CADASTRO}"
  Input Text  xpath=//*[@name="codimatr"][@type="text"]  ${CADASTRO}

Preencher o campo Nome "${NOME}"
  Input Text  xpath=//*[@name="nomepess"][@type="text"]  ${NOME}

Selecionar uma opção no campo Permissão "${COLAB}"
  Select From List By Label  xpath=//*[@name="codiperm[]"]  ${COLAB}

Preencher o campo Data Inicial "${DIA1}/${MES1}/${ANO1} | ${DIA2}/${MES2}/${ANO2}"
  Input Text  xpath=//*[@name="datainic_dia"][@type="text"]  ${DIA1}
  Input Text  xpath=//*[@name="datainic_mes"][@type="text"]  ${MES1}
  Input Text  xpath=//*[@name="datainic_ano"][@type="text"]  ${ANO1}
  Input Text  xpath=//*[@name="datainic_input_2_dia"][@type="text"]  ${DIA2}
  Input Text  xpath=//*[@name="datainic_input_2_mes"][@type="text"]  ${MES2}
  Input Text  xpath=//*[@name="datainic_input_2_ano"][@type="text"]  ${ANO2}

Preencher o campo Hora Inicial "${HORA1}:${MIN1} | ${HORA2}:${MIN2}"
  Input Text  xpath=//*[@name="horainic_hor"][@type="text"]  ${HORA1}
  Input Text  xpath=//*[@name="horainic_min"][@type="text"]  ${MIN1}
  Input Text  xpath=//*[@name="horainic_input_2_hor"][@type="text"]  ${HORA2}
  Input Text  xpath=//*[@name="horainic_input_2_min"][@type="text"]  ${MIN2}


#VERIFY LABELS

Verificar a label: Empresa
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Empresa')]
	Element Should Contain  ${LABEL}  Empresa

Verificar a label: Tipo do Colaborador
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo do Colaborador')]
	Element Should Contain  ${LABEL}  Tipo do Colaborador

Verificar a label: Nome
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome')]
	Element Should Contain  ${LABEL}  Nome

Verificar a label: Data Inicial
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data Inicial')]
	Element Should Contain  ${LABEL}  Data Inicial

Verificar a label: Hora Inicial
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora Inicial')]
	Element Should Contain  ${LABEL}  Hora Inicial

Verificar a label: Permissão
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Permissão')]
	Element Should Contain  ${LABEL}  Permissão

Verificar a label: Data Final
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data Final')]
	Element Should Contain  ${LABEL}  Data Final

Verificar a label: Hora Final
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora Final')]
	Element Should Contain  ${LABEL}  Hora Final

Verificar a label: Observações
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Observações')]
	Element Should Contain  ${LABEL}   Observações

#VERIFY CAMPOS

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo: Empresa
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Empresa')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--multiple']
	Element Should Contain             ${LABEL}   Empresa
  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--multiple

Verificar o campo: Tipo do Colaborador	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo do Colaborador')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--multiple']
	Element Should Contain             ${LABEL}   Tipo do Colaborador	
  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--multiple

Verificar o campo: Cadastro
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Cadastro')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain             ${LABEL}   Cadastro
  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single

Verificar o campo: Nome
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Nome')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain             ${LABEL}   Nome
 	Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single  

Verificar o campo: Permissão
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Permissão')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--multiple']
	Element Should Contain             ${LABEL}   Permissão
 	Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--multiple  

Verificar o campo: Data Inicial	
	${LABEL}       Set Variable  xpath=//td[contains(text(),'Data Inicial')]
	${CAMPO1}      Set Variable  xpath=//input[@name='datainic_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='datainic_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='datainic_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@name='datainic_input_2_dia']
  ${CAMPO5}      Set Variable  xpath=//input[@name='datainic_input_2_mes']
  ${CAMPO6}      Set Variable  xpath=//input[@name='datainic_input_2_ano']
	Element Should Contain             ${LABEL}    Data Inicial	
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
 	Element Attribute Value Should Be  ${CAMPO1}   name   horainic_hor
  Element Attribute Value Should Be  ${CAMPO2}   name   horainic_min
  Element Attribute Value Should Be  ${CAMPO3}   name   horainic_input_2_hor
  Element Attribute Value Should Be  ${CAMPO4}   name   horainic_input_2_min
         

