*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Cadastro | Veículo

# SCREEN
Acessar Tela Licenciamento (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Licenciamento (Atualização)
  ${APPNAME}     Set Variable  frmlicenciamento
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_frmlicenciamento_2"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Licenciamento (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Licenciamento (Inclusão)
  ${APPNAME}     Set Variable  frmlicenciamento
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_frmlicenciamento_2"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Data do Vencimento "${VENCIMENTO}"
  Input Text  xpath=//*[@name="datavenc1"][@type="text"]  ${VENCIMENTO}

Selecionar uma opção no campo Tipo de Licenciamento "${LICENCIAMENTO}"
  Select from list by label  xpath=//*[@name="tiposegu1"]  ${LICENCIAMENTO}

Preencher o campo Valor "${VALOR}"
  Input Text  xpath=//*[@name="valosegu1"][@type="text"]  ${VALOR}

Selecionar uma opção no campo Situação "${SITUACAO}"
  Select from list by label  xpath=//*[@name="situsegu1"]  ${SITUACAO}

Preencher o campo Empresa Terceira "${EMPRESA}"
  Input Text  xpath=//*[@name="codiemprcont1"][@type="text"]  ${EMPRESA}




#VERIFY

Verificar a label SEQ
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[1]
	Element Should Contain  ${LABEL}   SEQ

Verificar a label Data do Vencimento dd/mm/aaaa
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[3]
	Element Should Contain  ${LABEL}   Data do Vencimento
  Element Should Contain  ${LABEL}   dd/mm/aaaa

Verificar a label Tipo de Licenciamento
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[4]
	Element Should Contain  ${LABEL}   Tipo de Licenciamento

Verificar a label Valor
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[5]
	Element Should Contain  ${LABEL}   Valor

Verificar a label Situação
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[6]
	Element Should Contain  ${LABEL}   Situação

Verificar a label Empresa Terceira
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[7]
	Element Should Contain  ${LABEL}   Empresa Terceira
