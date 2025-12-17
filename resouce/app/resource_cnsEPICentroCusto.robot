*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar no Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Centro de Custo

# SCREEN
Acessar Tela Cadastro de EPI por Centro de Custo
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${SCREENNAME}  Set Variable  EPI por Centro de Custo    
  ELSE
      ${SCREENNAME}  Set Variable  Cadastro de EPI por Centro de Custo
  END
  ${APPNAME}  Set Variable  cnsEPICentroCusto
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  


Acessar tela: EPI por Centro de Custo (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  EPI por Centro de Custo
  ${APPNAME}     Set Variable  cnsEPICentroCusto
  ${ELEMENT}     Set Variable  xpath=(//td[@class='scFilterHeaderFont'])[4]

  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"




#BUTTON
#resource_btn.

#FIELD
Selecionar uma opção no campo Empresa "${EMPRESA}"
  Select From List By Label   xpath=//*[@name="codiempr"]  ${EMPRESA}

Selecionar uma opção no campo Centro de Custo "${CUSTO}"
  Select From List By Label   xpath=//*[@name="codicentcust"]  ${CUSTO}

Selecionar uma opção no campo Uso "${USO}"
  Select From List By Label   xpath=//*[@name="usoepi"]  ${USO}

Preencher o campo EPI "${EPI}"
  Input Text  xpath=//*[@name="descepi"][@type="text"]   ${EPI}


#VERIFY LABELS

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Empresa')]
	Element Should Contain  ${LABEL}   Empresa 

Verificar a label Centro de Custo
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Centro de Custo')]
	Element Should Contain  ${LABEL}   Centro de Custo

Verificar a label EPI
	${LABEL}   Set Variable  xpath=//div[contains(text(),'EPI')]
	Element Should Contain  ${LABEL}   EPI

Verificar a label Revisão (Dias)
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Revisão (Dias)')]
	Element Should Contain  ${LABEL}   Revisão (Dias)

Verificar a label Validade (Dias)
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Validade (Dias)')]
	Element Should Contain  ${LABEL}   Validade (Dias)

Verificar a label Uso
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Uso')]
	Element Should Contain  ${LABEL}    Uso


# VERIFY CAMPOS


Verificar o campo Empresa
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Empresa')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[1]

	Element Should Contain             ${LABEL}   Empresa
  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single   
 

Verificar o campo Centro de Custo	
	${LABEL}      Set Variable  xpath=(//td[contains(text(),'Centro de Custo')])[2]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[2]

	Element Should Contain             ${LABEL}   Centro de Custo	
  Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single


Verificar o campo Uso
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Uso')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[3]

	Element Should Contain             ${LABEL}   Uso
  Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single

Verificar o campo EPI
	${LABEL}      Set Variable  xpath=(//td[contains(text(),'EPI')])[2]
	${CAMPO}      Set Variable  xpath=//input[@name='descepi']

	Element Should Contain             ${LABEL}   EPI
  Element Attribute Value Should Be  ${CAMPO}   name   descepi
 	