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
Acessar Tela Tratamento do Alarme (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Tratamento do Alarme (Inclusão)
  ${APPNAME}     Set Variable  frmTratamentoAlarme
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#FIELD
Preencher o campo Data/Hora Tratamento "${DATA} | ${HORA}"
	Input Text  xpath=//*[@name="datatratalar"][@type="text"]  ${DATA}
  Input Text  xpath=//*[@name="horatratalar"][@type="text"]  ${HORA}

Preencher o campo Ações Efetuadas no Tratamento do Alarme "${ACAO}"
	Input Text  xpath=//*[@name="desctratusua"]  ${ACAO}



#VERIFY
Verificar o campo Planta
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
  Element Should Contain  ${LABEL}  Planta

Verificar o campo Codin
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
  Element Should Contain  ${LABEL}  Codin

Verificar o campo Data/Hora Geração
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
  Element Should Contain  ${LABEL}  Data/Hora Geração

Verificar o campo Sinal de Alarme
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
  Element Should Contain  ${LABEL}  Sinal de Alarme

Verificar o campo Tipo Sinal
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
  Element Should Contain  ${LABEL}  Tipo Sinal

Verificar o campo Tratar Todos os Alarmes deste Tipo
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/table/tbody/tr/td/input

  Element Should Contain  ${LABEL}  Tratar Todos os Alarmes deste Tipo
  Element Attribute Value Should Be  ${CAMPO}  name  tratartodosalarmetipo[]

Verificar o campo Procedimentos para o Tratamento do Alarme
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
  Element Should Contain  ${LABEL}  Procedimentos para o Tratamento do Alarme

Verificar o campo Data/Hora Tratamento
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
  ${CAMPO_DATA}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/input
  ${CAMPO_HORA}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
  
  Element Should Contain  ${LABEL}  Data/Hora Tratamento
  Element Attribute Value Should Be  ${CAMPO_DATA}  name  datatratalar
  Element Attribute Value Should Be  ${CAMPO_HORA}  name  horatratalar

Verificar o campo Ações Efetuadas no Tratamento do Alarme
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[4]/tbody/tr/td/div/table/tbody/tr[2]/td/textarea

  Element Should Contain  ${LABEL}  Ações Efetuadas no Tratamento do Alarme
  Element Attribute Value Should Be  ${CAMPO}  name  desctratusua