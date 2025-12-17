*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Relatórios | Importar

# SCREEN
Acessar Tela Importação de Relatórios
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Importação de Relatórios
  ${APPNAME}     Set Variable  ctrImportadorRelatorios
  ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  



#BUTTON
#resource_btn.



#VERIFY

Verificar o campo Arquivo (zip)
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}   Set Variable  xpath=//span[@id='id_label_arquivo2']
    ${DIV}     Set Variable  xpath=//div[@id='id_sc_dragdrop_arquivo2']
  Element Attribute Value Should Be  ${DIV}   id   id_sc_dragdrop_arquivo2
  ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	  ${DIV}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input
	Element Attribute Value Should Be  ${DIV}   name   arquivo
  END
	Element Should Contain  ${LABEL}   Arquivo (zip)
 	
