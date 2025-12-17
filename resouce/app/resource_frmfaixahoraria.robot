*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Escala | Horário de Escala

# SCREEN
Acessar Tela Faixa Horária (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Faixa Horária (Inclusão)
  ${APPNAME}     Set Variable  frmfaixahoraria
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "nmsc_iframe_frmfaixahoraria_3"

  IF  "${SERVER}" != "172.16.14.246"
      Wait Until Element is Visible  ${ELEMENT}
      Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  END

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Faixa Horária (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Faixa Horária (Atualização)
  ${APPNAME}     Set Variable  frmfaixahoraria
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_frmfaixahoraria_3"

  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"




#BUTTON
#resource_btn.


#FIELD
Preencher o campo Início da Faixa de Acesso "${INICIO}"
  Input Text  xpath=//*[@name="inicmarcaces_1"][@type="text"]  ${INICIO}

Preencher o campo Início da Faixa de Ponto "${INICIO}"
  Input Text  xpath=//*[@name="inicmarcpont_1"][@type="text"]  ${INICIO}

Preencher o campo Fim da Faixa de Acesso "${FIM}"
  Input Text  xpath=//*[@name="fimmarcpont_1"][@type="text"]  ${FIM}

Preencher o campo Fim da Faixa de Ponto "${FIM}"
  Input Text  xpath=//*[@name="fimmarcaces_1"][@type="text"]  ${FIM}

#VERIFY
Verificar o campo Início da Faixa de Acesso
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[1]/td[2]/div[1]/div[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[2]/td[3]/table/tbody/tr/td[1]/span[2]/input

  Element Should Contain  ${LABEL}   Início da Faixa de Acesso *
	Element Attribute Value Should Be  ${CAMPO}  name  inicmarcaces_1

Verificar o campo Início da Faixa de Ponto
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[1]/td[3]/div[1]/div[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[2]/td[4]/table/tbody/tr/td[1]/span[2]/input

  Element Should Contain  ${LABEL}   Início da Faixa de Ponto *
	Element Attribute Value Should Be  ${CAMPO}  name  inicmarcpont_1

Verificar o campo Fim da Faixa de Acesso
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[1]/td[4]/div[1]/div[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[2]/td[5]/table/tbody/tr/td[1]/span[2]/input

  Element Should Contain  ${LABEL}   Fim da Faixa de Ponto *
	Element Attribute Value Should Be  ${CAMPO}  name  fimmarcpont_1

Verificar o campo Fim da Faixa de Ponto
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[1]/td[5]/div[1]/div[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[2]/td[6]/table/tbody/tr/td[1]/span[2]/input

  Element Should Contain  ${LABEL}   Fim da Faixa de Acesso * 
	Element Attribute Value Should Be  ${CAMPO}  name  fimmarcaces_1

Selecionar a checkbox do registro "${NUM}"
  Click Element  xpath=//input[@type='checkbox'][@value='${NUM}']