*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Senha

# SCREEN
Acessar Tela Consulta de Senhas de Acesso nos Codins
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsSenhasAcessoColetores
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable     Senha de Acesso para Equipamento
    ${ELEMENT}    Set Variable      xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Senhas de Acesso nos Codins
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela: Senha de Acesso para Equipamento (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsSenhasAcessoColetores
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable     Senha de Acesso para Equipamento
    ${ELEMENT}    Set Variable      xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Senhas de Acesso nos Codins
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END

  sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  


#BUTTON
#resource_btn.

#FIELD
Selecionar uma opção no campo Empresa "${EMP}"
  Select from list by label  xpath=//*[@name="tbcolab_codiempr"]  ${EMP}

Selecionar uma opção no campo Tipo do Colaorador "${TIPCOL}"
  Select from list by label  xpath=//*[@name="tbcolab_tipocola"]  ${TIPCOL}

Selecionar uma opção no campo Matrícula "${MAT}"
  Select from list by label  xpath=//*[@name="tbcolab_codimatr_cond"]  ${MAT}

Preencher o campo Matrícula "${MATRICULA}"
  Input Text  xpath=//*[@name="tbcolab_codimatr"][@type="text"]  ${MATRICULA}   

Preencher o campo Nome "${NOME}"  
  Input Text  xpath=//*[@name="tbpessoa_nomepess"][@type="text"]  ${NOME}

#VERIFY LABELS 

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


Verificar a label Alteração
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Alteração')]
	Element Should Contain  ${LABEL}   Alteração  


#VERIFY CAMPOS


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
	${CAMPO}      Set Variable  xpath=//input[@name='tbcolab_codimatr']
  Sleep  2s
	Element Should Contain             ${LABEL}   Matrícula
 	Element Attribute Value Should Be  ${CAMPO}   name  tbcolab_codimatr  

Verificar o campo Nome
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Nome')]
	${CAMPO}      Set Variable  xpath=//input[@name='tbpessoa_nomepess']
  Sleep  2s
	Element Should Contain             ${LABEL}   Nome 
 	Element Attribute Value Should Be  ${CAMPO}   name   tbpessoa_nomepess