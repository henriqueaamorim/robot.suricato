*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Area de Risco | Controle

# SCREEN
Acessar Tela Área de Risco
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Área de Risco
  ${APPNAME}     Set Variable  cons_tbContrLocalAcess
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"




#Verify
Verificar o campo Colaborador
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]/span[1]
	Element Should Contain  ${LABEL}   Colaborador 

Verificar o campo Nome
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span
	Element Should Contain  ${LABEL}   Nome 
  
Verificar o campo Crachá
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span
	Element Should Contain  ${LABEL}   Crachá 
  
Verificar o campo Endereço IP - Painel
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]/span
	Element Should Contain  ${LABEL}   Endereço IP - Painel 
  
Verificar o campo Área de Risco
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]/span
	Element Should Contain  ${LABEL}   Área de Risco 
  
Verificar o campo Entrada
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]/span
	Element Should Contain  ${LABEL}   Entrada 
  
Verificar o campo Saída
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]/span
	Element Should Contain  ${LABEL}   Saída 
  
Verificar o campo Status
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[1]/span
	Element Should Contain  ${LABEL}   Status 
  
  