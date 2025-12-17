*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Guarda-Volumes | Relatório Guarda-Volumes

# SCREEN
Acessar Tela Relatório de Guarda-Volumes
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Relatorio de Guarda-Volumes
  ${APPNAME}  Set Variable  cnsRelatorioGVolumes
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Relatório de Guarda-Volumes - Filtro
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsRelatorioGVolumes
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable   Relatorio de Guarda-Volumes 
  ${ELEMENT}  Set Variable      xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
  ${SCREENNAME}  Set Variable  Relatorio de Guarda-Volumes - Filtro
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.


#VERIFY LABELS

Verificar a label: Número do Guarda-Volumes
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Número do Guarda-Volumes')]
	Element Should Contain  ${LABEL}   Número do Guarda-Volumes

Verificar a label: Descrição do Guarda-Volumes
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição do Guarda-Volumes')]
	Element Should Contain  ${LABEL}   Descrição do Guarda-Volumes


#VERIFY CAMPOS

E verificar o campo Número do Guarda-Volumes 
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}  Set Variable  xpath=//td[contains(text(),'Número do Guarda-Volumes')]
	  ${CAMPO}  Set Variable  xpath=//input[@name='codiguarvolu']
  ELSE
    ${LABEL}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/input
	END
	Element Should Contain  ${LABEL}  Número do Guarda-Volumes
	Element Attribute Value Should Be  ${CAMPO}  name  codiguarvolu

E verificar o campo Descrição do Guarda-Volumes
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}  Set Variable  xpath=//td[contains(text(),'Descrição do Guarda-Volumes')]
	  ${CAMPO}  Set Variable  xpath=//input[@name='descguarvolu']
  ELSE
	  ${LABEL}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/input
	END
	Element Should Contain  ${LABEL}  Descrição do Guarda-Volumes 
	Element Attribute Value Should Be  ${CAMPO}  name  descguarvolu