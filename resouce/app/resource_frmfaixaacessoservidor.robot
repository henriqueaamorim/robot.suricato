*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Crédito de Acesso | Individual | Empregado/Terceiro/Parceiro


# SCREEN
Acessar Tela Faixas de Horários (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Faixas de Horários (Inclusão)
  ${APPNAME}     Set Variable  frmfaixaacessoservidor
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  ${ABA}         Set Variable  id=cel2_txt

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_frmfaixaacessoservidor_2"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Faixas de Horários (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Faixas de Horários (Atualização)
  ${APPNAME}     Set Variable  frmfaixaacessoservidor
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  ${ABA}         Set Variable  id=cel2_txt

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_frmfaixaacessoservidor_2"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.


#FIELD
Preencher o campo Início da Faixa "${INICIO}"
  Input Text  xpath=//*[@name="inicfaixaces1"][@type="text"]  ${INICIO}

Preencher o campo Final da Faixa "${FINAL}"
  Input Text  xpath=//*[@name="fimfaixaces1"][@type="text"]  ${FINAL}

Preencher o campo Novo Início da Faixa "${INICIO}"
  Input Text  xpath=//*[@name="inifai_new1"][@type="text"]  ${INICIO}

Preencher o campo Novo Final da Faixa "${FINAL}"
  Input Text  xpath=//*[@name="fimfai_new1"][@type="text"]  ${FINAL}

#VERIFY

E verificar o campo Início da Faixa 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[3]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[2]/td[3]/input
	
	Element Should Contain  ${LABEL}   Início da Faixa
	Element Attribute Value Should Be  ${CAMPO}  name  inicfaixaces1

E verificar o campo Final da Faixa 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[4]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[2]/td[4]/input
	
	Element Should Contain  ${LABEL}   Final da Faixa 
	Element Attribute Value Should Be  ${CAMPO}  name  fimfaixaces1