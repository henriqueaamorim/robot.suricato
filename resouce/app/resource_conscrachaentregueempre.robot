*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Crachá

# SCREEN
Acessar Tela Consulta de Crachá Titular
    ${OBJ}      Set Variable  SCN
    ${APPNAME}  Set Variable  conscrachaentregueempre
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Crachá Titular
	${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Crachá Titular
	${ELEMENT}     Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  4s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Filtro de Crachá Titular
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Crachá Titular
  ${APPNAME}  Set Variable  conscrachaentregueempre
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]

  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.


#FIELD
Preencher o campo Empresa "${EMP} "
  Input Text  xpath=//*[@name="codiempr[]"][@type="text"]  ${EMP}
Preencher o campo Tipo do Colaborador "${TIPCOL}"
  Input Text  xpath=//*[@name="tipocola[]"][@type="text"]  ${TIPCOL}
Preencher o campo Crachá "${CRA}"
  Input Text  xpath=//input[@id="id_ac_icard"][@type="text"]  ${CRA}
Preencher o campo Matrícula "${MAT}"
  Input Text  xpath=//*[@name="codimatr"][@type="text"]  ${MAT}
Preencher o campo Nome "${NOME}"
  Input Text  xpath=//*[@name="nomepess"][@type="text"]  ${NOME}


#VERIFY LABELS CONSULTA

Verificar a label Crachá
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Crachá')]

	Element Should Contain  ${LABEL}   Crachá

Verificar a label Código do Colaborador
	${LABEL}   Set Variable  xpath=//td[@class='scGridLabelFont css_idcolab_label']
   
  Element Should Contain  ${LABEL}  Código do  ${LABEL}  Colaborador

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Empresa')]

	Element Should Contain  ${LABEL}   Empresa

Verificar a label Tipo do Colaborador
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo do Colaborador')]

	Element Should Contain  ${LABEL}   Tipo do Colaborador

Verificar a label Matrícula
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Matrícula')]

	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Nome
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome')]

	Element Should Contain  ${LABEL}   Nome

Verificar a label Data Inicial do Uso
	${LABEL}   Set Variable  xpath=//td[@class='scGridLabelFont css_datainic_label']

	Element Should Contain  ${LABEL}    Data Inicial  ${LABEL}  do Uso
                                        
Verificar a label Hora Inicial do Uso
	${LABEL}   Set Variable  xpath=//td[@class='scGridLabelFont css_horainic_label']

	Element Should Contain  ${LABEL}  Hora Inicial  ${LABEL}  do Uso

Verificar a label Data Final do Uso
	${LABEL}   Set Variable  xpath=//td[@class='scGridLabelFont css_datafina_label']

	Element Should Contain  ${LABEL}   Data Final  ${LABEL}  do Uso

Verificar a label Hora Final do Uso
	${LABEL}   Set Variable  xpath=//td[@class='scGridLabelFont css_horafina_label']

	Element Should Contain  ${LABEL}   Hora Final   ${LABEL}  do Uso

Verificar a label Status Histórico
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Status Histórico')]

	Element Should Contain  ${LABEL}   Status Histórico

#VERIFY CAMPOS FILTRO 

Verificar o campo Empresa
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Empresa')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--multiple'])[1]
	Element Should Contain             ${LABEL}   Empresa
	Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--multiple

Verificar o campo Tipo do Colaborador	
   ${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo do Colaborador')]
   ${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--multiple'])[2]
   sleep  2s
   Element Should Contain             ${LABEL}   Tipo do Colaborador	
   Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--multiple

Verificar o campo Crachá	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Crachá')]
	${CAMPO}      Set Variable  xpath=//input[@name='icard_autocomp']
	Element Should Contain             ${LABEL}   Crachá	
 	Element Attribute Value Should Be  ${CAMPO}   name   icard_autocomp

Verificar o campo Matrícula
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Matrícula')]
	${CAMPO}      Set Variable  xpath=//input[@name='codimatr_autocomp']
	Element Should Contain             ${LABEL}   Matrícula
 	Element Attribute Value Should Be  ${CAMPO}   name   codimatr_autocomp

Verificar o campo Nome
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Nome')]
	${CAMPO}      Set Variable  xpath=//input[@name='nomepess_autocomp']
	Element Should Contain             ${LABEL}   Nome
 	Element Attribute Value Should Be  ${CAMPO}   name    nomepess_autocomp       
