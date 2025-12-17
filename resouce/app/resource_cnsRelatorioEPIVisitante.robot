*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar no Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Relatórios | Histórico de EPI por Visitante

# SCREEN
Acessar Tela Filtro Histórico de EPI por Visitante
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Histórico de EPI por Visitante
  ${APPNAME}  Set Variable  cnsRelatorioEPIVisitante
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"




Acessar Tela Consulta Histórico de EPI por Visitante
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Histórico de EPI por Visitante
  ${APPNAME}  Set Variable  cnsRelatorioEPIVisitante
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"






#BUTTON
#resource_btn.



#VERIFY 


E verificar o campo Empresa   
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 
    ${LABEL}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/span/select
  ELSE
    ${LABEL}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/select
	END
	Element Should Contain  ${LABEL}  Empresa 
	Element Attribute Value Should Be  ${CAMPO}  name  codiemprcont

E verificar o campo Visitante  
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 
    ${LABEL}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/input[2]
 
 	  Element Should Contain  ${LABEL}  Visitante 
	  Element Attribute Value Should Be  ${CAMPO}  name  nomepess_autocomp
  ELSE
    ${LABEL}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/input
		
    Element Should Contain  ${LABEL}  Visitante 
	  Element Attribute Value Should Be  ${CAMPO}  name  nomepess
  END


E verificar o campo EPI  
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 
    ${LABEL}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/span/select
  ELSE
    ${LABEL}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/select
	END
	Element Should Contain  ${LABEL}  EPI 
	Element Attribute Value Should Be  ${CAMPO}  name  codiepi