*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Pessoa Não Grata | Motivo

# SCREEN
Acessar Tela Motivos de Pessoas não Gratas (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Motivos de Pessoas não Gratas (Atualização)
  ${APPNAME}  Set Variable  frmmotivopessoasnaograta
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Motivos de Pessoas não Gratas (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Motivos de Pessoas não Gratas (Inclusão)
  ${APPNAME}  Set Variable  frmmotivopessoasnaograta
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Descrição do Motivo "${DESCRICAO}"
  Input Text  xpath=//*[@name="descmoti"][@type="text"]  ${DESCRICAO}

Preencher o campo Procedimento Padrão "${PROCEDIMENTO}"
  Input Text  xpath=//*[@name="procpadr"][@type="text"]  ${PROCEDIMENTO}


#VERIFY

E verificar o campo Descrição do Motivo 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input
	
	Element Should Contain  ${LABEL}  Descrição do Motivo *
	Element Attribute Value Should Be  ${CAMPO}  name  descmoti

E verificar o campo Procedimento Padrão 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/textarea
	
	Element Should Contain  ${LABEL}  Procedimento Padrão * 
	Element Attribute Value Should Be  ${CAMPO}  name  procpadr