*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Alarme | Procedimento de Alarme

# SCREEN
Acessar Tela Procedimentos para Tratamento de Alarmes (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Procedimentos para Tratamento de Alarmes (Atualização)
  ${APPNAME}  Set Variable  frmprocedimentotratalarme
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Procedimentos para Tratamento de Alarmes (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Procedimentos para Tratamento de Alarmes (Inclusão)
  ${APPNAME}  Set Variable  frmprocedimentotratalarme
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#BUTTON
#resource_btn.



#FIELD
Selecionar uma opção no campo Código de Sinal de Alarme "${CODIGO}"
  Select from list by label  xpath=//*[@name="codisind"]  ${CODIGO}

Preencher o campo Procedimento "${PROCEDIMENTO}"
  Input Text  xpath=//*[@name="procsinaalar"][@type="text"]  ${PROCEDIMENTO}






#VERIFY 

E verificar o campo Código do Sinal de Alarme            
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/select
	
	Element Should Contain  ${LABEL}  Código do Sinal de Alarme *
	Element Attribute Value Should Be  ${CAMPO}  name  codisind

E verificar o campo Procedimento 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/textarea
	
	Element Should Contain  ${LABEL}  Procedimento 
	Element Attribute Value Should Be  ${CAMPO}  name  procsinaalar 