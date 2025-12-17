*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Cadastro de Empresas


# SCREEN
Acessar Tela Foto (Inclusão)
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Foto 
    ${ELEMENT}     Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[1]/td[6]

    Select Frame  xpath=//*[@id="TB_iframeContent"]

  ELSE
    ${SCREENNAME}  Set Variable  Foto (Inclusão)
    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
    Switch Window  locator=NEW
    Maximize Browser Window
  END 
    ${OBJ}         Set Variable  SCN
    ${APPNAME}     Set Variable  frmLogotipoEmpresa
  
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.

#Verify
Verificar o campo Seleção de Arquivo
  Element Should Be Visible  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td[1]/div/text()