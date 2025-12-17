*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Cadastro de Grupos de Abrangência

# SCREEN
Acessar Tela Cadastro de Grupos de Abrangência
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Grupos de Abrangência
  ${APPNAME}  Set Variable  frmGrupoAbrangencia
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  



#BUTTON
#resource_btn.


#FIELD
Selecionar uma opção no campo Grupo de Acesso "${GRUPO}"
  Select from list by label  xpath=//*[@name="codiapp"]  ${GRUPO}

Selecionar uma opção no campo Filtro "${FILTRO}"
  Select from list by label  xpath=//*[@name="codigrupo"]  ${FILTRO}

Clicar na opção "Sim" no campo Abrangência Automática
  Click Element  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[2]/td[5]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input


#VERIFY

Verificar a label Grupo de Acesso
	${LABEL}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[3]
	Element Should Contain  ${LABEL}   Grupo de Acesso

Verificar a label Filtro
	${LABEL}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[4]
	Element Should Contain  ${LABEL}   Filtro

Verificar a label Abrangência Automática
	${LABEL}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[5]
	Element Should Contain  ${LABEL}   Agrangência Automática
