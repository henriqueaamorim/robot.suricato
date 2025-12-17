*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Controle | Monitoramento | Alarme - Grid


# SCREEN
Acessar Tela Reconhecimento do Alarme (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Reconhecimento do Alarme (Atualização)
  ${APPNAME}     Set Variable  frmReconhecimentoAlarme
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#FIELD
Preencher o campo Data/Hora Reconhecimento "${DATA} | ${HORA}"
	Input Text  xpath=//*[@name="datarecoalar"][@type="text"]  ${DATA}
  Input Text  xpath=//*[@name="horarecoalar"][@type="text"]  ${HORA}

Preencher o campo Ações Efetuadas no Reconhecimento do Alarme "${ACAO}"
	Input Text  xpath=//*[@name="descrecousua"]  ${ACAO}


#VERIFY
Verificar o campo Codin
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
  Element Should Contain  ${LABEL}  Codin

Verificar o campo Data/Hora Geração
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
  Element Should Contain  ${LABEL}  Data/Hora Geração:

Verificar o campo Sinal de Alarme
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
  Element Should Contain  ${LABEL}  Sinal de Alarme:

Verificar o campo Tipo Sinal
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
  Element Should Contain  ${LABEL}  Tipo Sinal:
  
Verificar o campo Procedimentos para o Reconhecimento do Alarme
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
  Element Should Contain  ${LABEL}  Procedimentos para o Reconhecimento do Alarme

Verificar o campo Data/Hora Reconhecimento
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
  ${CAMPO_DATA}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/input
  ${CAMPO_HORA}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input

  Element Should Contain  ${LABEL}  Data/Hora Reconhecimento
  Element Attribute Value Should Be  ${CAMPO_DATA}  name  datarecoalar
  Element Attribute Value Should Be  ${CAMPO_HORA}  name  horarecoalar

Verificar o campo Ações Efetuadas no Reconhecimento do Alarme
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td/textarea

  Element Should Contain  ${LABEL}  Ações Efetuadas no Reconhecimento do Alarme
  Element Attribute Value Should Be  ${CAMPO}  name  descrecousua