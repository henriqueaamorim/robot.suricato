*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Veículo de Colaborador - Cadastro

# SCREEN
Acessar Tela Histórico de Colaboradores por Veículo
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Histórico de Colaboradores por Veículo
  ${APPNAME}     Set Variable  cons_histoVeic
  ${ELEMENT}     Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_cons_histoVeic_3"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Sleep  2s

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Histórico de Colaboradores por Veículo - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Histórico de Colaboradores por Veículo
  ${APPNAME}     Set Variable  cons_histoVeic
  ${ELEMENT}     Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_cons_histoVeic_3"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"



#BUTTON
#resource_btn.



#VERIFY

Verificar o campo Nome 
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr/td[1]
	  ${CAMPO}  	  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr/td[2]/table/tbody/tr/td/input[2]
  
  	Element Should Contain  ${LABEL}   Nome 
 	  Element Attribute Value Should Be  ${CAMPO}   name   p_nomepess_autocomp
  ELSE
	  ${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr/td[1]
	  ${CAMPO}  	  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr/td[2]/table/tbody/tr/td/input
  
  	Element Should Contain  ${LABEL}   Nome 
 	  Element Attribute Value Should Be  ${CAMPO}   name   p_nomepess
  END

