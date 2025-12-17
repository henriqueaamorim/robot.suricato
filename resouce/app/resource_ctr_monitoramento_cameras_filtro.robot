*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Controle | Monitoramento | Monitoramento de Acesso Câmeras


# SCREEN
Acessar Tela Monitoramento de Acesso Cameras (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Monitoramento de Acesso Cameras (Filtro)
  ${APPNAME}     Set Variable  ctr_monitoramento_cameras_filtro
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  
  Switch Window  locator=NEW
  Maximize Browser Window

  Mudar Frame Aplicação "mnu_iframe"
  Sleep  5s

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.



#VERIFY
Verificar o campo CFTV
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr/td[1]/span/table/tbody/tr[1]/td/table/tbody/tr/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr/td[1]/span/table/tbody/tr[1]/td/table/tbody/tr/td[2]/select

  Element Should Contain  ${LABEL}  CFTV
  Element Attribute Value Should Be  ${CAMPO}  id  select_cftv

Verificar o campo Câmera
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr/td[1]/span/table/tbody/tr[2]/td/table/tbody/tr/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr/td[1]/span/table/tbody/tr[2]/td/table/tbody/tr/td[2]/select

  Element Should Contain  ${LABEL}  Câmera
  Element Attribute Value Should Be  ${CAMPO}  name  select_camera[]

Verificar o campo Qualidade
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr/td[1]/span/table/tbody/tr[3]/td/table/tbody/tr/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr/td[1]/span/table/tbody/tr[3]/td/table/tbody/tr/td[2]/select

  Element Should Contain  ${LABEL}  Qualidade
  Element Attribute Value Should Be  ${CAMPO}  name  select_qualidade

Verificar o campo Imagem
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr/td[1]/span/table/tbody/tr[4]/td/table/tbody/tr/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/table/tbody/tr/td/div/table/tbody/tr/td/table/tbody/tr/td[1]/span/table/tbody/tr[4]/td/table/tbody/tr/td[2]/select

  Element Should Contain  ${LABEL}  Imagem
  Element Attribute Value Should Be  ${CAMPO}  name  select_imagem


#FIELD
Selecionar uma opção no campo CFTV "${CFTV}"
	Select From List By Label  xpath=//*[@name="select_cftv "]  ${CFTV}

Selecionar uma opção no campo Câmera "${CÂMERA}"
	Select From List By Label  xpath=//*[@name="select_camera[]"]  ${CÂMERA}

Selecionar uma opção no campo Qualidade "${QUALIDADE}"
	Select From List By Label  xpath=//*[@name="select_qualidade"]  ${QUALIDADE}

Selecionar uma opção no campo Imagem "${IMAGEM}"
	Select From List By Label  xpath=//*[@name="select_imagem"]  ${IMAGEM}

