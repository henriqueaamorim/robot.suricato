*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de Tipos de EPI

# SCREEN
Acessar Tela Tipo de EPI
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${OBJ}         Set Variable  SCN
    ${SCREENNAME}  Set Variable  Tipo de EPI
    ${APPNAME}     Set Variable  frmTiposEPI
    ${ELEMENT}     Set Variable  xpath=//td[@class="scFormHeaderFont"][4]
  ELSE     
    ${OBJ}         Set Variable  SCN
    ${SCREENNAME}  Set Variable  Tipo de EPI
    ${APPNAME}     Set Variable  frmTiposEPI
    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END

  Mudar Frame Aplicação "mnu_iframe"

  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Sleep  5s
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Alteração Tipo de EPI
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Alteração Tipo de EPI
  ${APPNAME}     Set Variable  frmTiposEPI
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  
  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Sleep  5s
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"




#BUTTON
#resource_btn.

#FIELD 
Preencher o campo Tipo de Equipamento "${EQUIPAMENTO}"
  Input Text  xpath=//*[@name="desctipoepi"][@type="text"]  ${EQUIPAMENTO}

#VERIFY

Verificar o campo Tipo Equipamento 
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 
    ${LABEL}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[1]/span[1]
    ${CAMPO}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[2]/table/tbody/tr/td[1]/span[2]/input
  ELSE  
    ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[1]
    ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[2]/input
  END
    
	Element Should Contain   ${LABEL}   Tipo Equipamento   
	Element Attribute Value Should Be   ${CAMPO}   name   desctipoepi 
