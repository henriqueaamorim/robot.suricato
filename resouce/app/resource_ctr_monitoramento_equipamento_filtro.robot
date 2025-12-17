*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Controle | Monitoramento | Monitoramento Gráfico de Equipamentos

# SCREEN
Acessar Tela Monitoramento Gráfico de Equipamentos - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Monitoramento Gráfico de Equipamentos - Filtro
  ${APPNAME}     Set Variable  ctr_monitoramento_equipamento_filtro
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
Verificar o campo Empresa
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr/td[1]/span/table/tbody/tr[1]/td/table/tbody/tr/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr/td[1]/span/table/tbody/tr[1]/td/table/tbody/tr/td[2]/select

  Element Should Contain  ${LABEL}  Empresa
  Element Attribute Value Should Be  ${CAMPO}  name  select_empresa

Verificar o campo Planta
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr/td[1]/span/table/tbody/tr[2]/td/table/tbody/tr/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr/td[1]/span/table/tbody/tr[2]/td/table/tbody/tr/td[2]/select

  Element Should Contain  ${LABEL}  Planta
  Element Attribute Value Should Be  ${CAMPO}  name  select_planta

Verificar o campo Codin
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr/td[1]/span/table/tbody/tr[3]/td/table/tbody/tr/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr/td[1]/span/table/tbody/tr[3]/td/table/tbody/tr/td[2]/select

  Element Should Contain  ${LABEL}  Codin
  Element Attribute Value Should Be  ${CAMPO}  name  select_codin[]


#FIELD
Selecionar uma opção no campo Empresa "${EMPRESA}"
	Select From List By Label  xpath=//*[@name="select_empresa"]  ${EMPRESA}

Selecionar uma opção no campo Planta "${PLANTA}"
	Select From List By Label  xpath=//*[@name="select_planta"]  ${PLANTA}

Selecionar uma opção no campo Codin "${CODIN}"
	Select From List By Label  xpath=//*[@name="select_codin[]"]  ${CODIN}

