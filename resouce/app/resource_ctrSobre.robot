*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Ajuda | Sobre

# SCREEN
Acessar Tela Suricato - Versão
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Suricato - Versão
  ${APPNAME}     Set Variable  ctrSobre
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Mudar Frame Aplicação "mnu_iframe"
  

  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Sleep  5s

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  



#BUTTON
#resource_btn.



#VERIFY

Verificar a label Data Licença
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	Element Should Contain  ${LABEL}   Data Licença

Verificar a label Codin Licenciados
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	Element Should Contain  ${LABEL}   Codin Licenciados

Verificar a label Quantidade Codin Cadastrados
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	Element Should Contain  ${LABEL}   Quantidade Codin Cadastrados

Verificar a label Quantidade Codin Validos
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	Element Should Contain  ${LABEL}   Quantidade Codin Validos
