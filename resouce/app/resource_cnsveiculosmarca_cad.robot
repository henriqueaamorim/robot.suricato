*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Cadastro | Marcas

# SCREEN
Acessar Tela Marcas de Veículos - Consulta
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnsveiculosmarca_cad
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable   Marca
    ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Marcas de Veículos - Pesquisa 
    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Marcas de Veículos - Pesquisa
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnsveiculosmarca_cad
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable   Marca
    ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
    ${SCREENNAME}  Set Variable  Marcas de Veículos - Pesquisa 
    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.


#FIELD
Preencher o campo Marca "${MARCA}"
  Input Text  xpath=//*[@name="marcveic"][@type="text"]  ${MARCA}  

#VERIFY LABELS  

Verificar a label: Id
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Id')]
	Element Should Contain  ${LABEL}   Id

Verificar a label: Marca
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Marca')]
	Element Should Contain  ${LABEL}     Marca

#VERIFY CAMPOS

Verificar o campo: Marca
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Marca')]
	${CAMPO}      Set Variable  xpath=//input[@name='marcveic']
	Element Should Contain             ${LABEL}   Marca
 	Element Attribute Value Should Be  ${CAMPO}   name   marcveic   