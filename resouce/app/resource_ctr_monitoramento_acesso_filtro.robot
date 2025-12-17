*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Controle | Monitoramento | Acesso - Grid

# SCREEN
Acessar Tela Monitoramento Acesso - Grid - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Monitoramento Acesso - Grid - Filtro
  ${APPNAME}     Set Variable  ctr_monitoramento_acesso_filtro
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Switch Window  locator=NEW
  Maximize Browser Window
  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Sleep  5s
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.


#VERIFY
Verificar o campo Planta
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr/td[1]/span/table/tbody/tr[1]/td/table/tbody/tr/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr/td[1]/span/table/tbody/tr[1]/td/table/tbody/tr/td[2]/select

  Element Should Contain  ${LABEL}  Planta
  Element Attribute Value Should Be  ${CAMPO}  name  select_planta

Verificar o campo Codin
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr/td[1]/span/table/tbody/tr[2]/td/table/tbody/tr/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr/td[1]/span/table/tbody/tr[2]/td/table/tbody/tr/td[2]/select

  Element Should Contain  ${LABEL}  Codin
  Element Attribute Value Should Be  ${CAMPO}  name  select_codin[]

Verificar o campo Crachá
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr/td[1]/span/table/tbody/tr[3]/td/table/tbody/tr/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr/td[1]/span/table/tbody/tr[3]/td/table/tbody/tr/td[2]/input

  Element Should Contain  ${LABEL}  Crachá
  Element Attribute Value Should Be  ${CAMPO}  name  select_cracha

Verificar o campo Direção
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr/td[1]/span/table/tbody/tr[4]/td/table/tbody/tr/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr/td[1]/span/table/tbody/tr[4]/td/table/tbody/tr/td[2]/select

  Element Should Contain  ${LABEL}  Direção
  Element Attribute Value Should Be  ${CAMPO}  name  select_direcao

Verificar o campo Tipo de Acesso
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr/td[1]/span/table/tbody/tr[5]/td/table/tbody/tr/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr/td[1]/span/table/tbody/tr[5]/td/table/tbody/tr/td[2]/select

  Element Should Contain  ${LABEL}  Tipo de Acesso
  Element Attribute Value Should Be  ${CAMPO}  name  select_tpaces

Verificar o campo Qtde Registros
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr/td[1]/span/table/tbody/tr[6]/td/table/tbody/tr/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr/td[1]/span/table/tbody/tr[6]/td/table/tbody/tr/td[2]/input

  Element Should Contain  ${LABEL}  Qtde Registros
  Element Attribute Value Should Be  ${CAMPO}  name  fld_qtd_registros


#FIELD
Selecionar uma opção no campo Planta "${PLANTA}"
	Select From List By Label  xpath=//*[@name="select_planta"]  ${PLANTA}

Selecionar uma opção no campo Codin "${CODIN}"
	Select From List By Label  xpath=//*[@name="select_codin[]"]  ${CODIN}

Preencher o campo Crachá "${CRACHÁ}"
	Input Text  xpath=//*[@name="select_cracha"]  ${CRACHÁ}

Selecionar uma opção no campo Direção "${DIREÇÃO}"
	Select From List By Label  xpath=//*[@name="select_direcao"]  ${DIREÇÃO}

Selecionar uma opção no campo Tipo de Acesso "${TIPO_DE_ACESSO}"
	Select From List By Label  xpath=//*[@name="select_tpaces"]  ${TIPO_DE_ACESSO}

Preencher o campo Qtde Registros "${QTDE_REGISTROS}"
	Input Text  xpath=//*[@name="fld_qtd_registros"]  ${QTDE_REGISTROS}

