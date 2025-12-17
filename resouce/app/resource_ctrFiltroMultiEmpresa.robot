*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Filtro de Abrangência

# SCREEN
Acessar Tela Filtro de Abrangência
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Filtro de Abrangência
  ${APPNAME}  Set Variable  ctrFiltroMultiEmpresa
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Filtro de Abrangência - Empresa
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Filtro de Abrangência
  ${APPNAME}  Set Variable  ctrFiltroMultiEmpresa
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"


#VERIFY
Verificar o campo Grupo
  ${LABEL}  Set Variable  xpath=//span[@id='id_label_txtgrupos']
  ${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_txtgrupos_obj']

  Element Should Contain  ${LABEL}  Grupo
  Element Attribute Value Should Be  ${CAMPO}  class   select2-selection select2-selection--single css_txtgrupos_obj

Verificar o campo Filtro
  ${LABEL}  Set Variable  xpath=//span[@id='id_label_txtfiltros']
  ${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_txtfiltros_obj']

  Element Should Contain  ${LABEL}  Filtro
  Element Attribute Value Should Be  ${CAMPO}  class   select2-selection select2-selection--single css_txtfiltros_obj


#FIELD
Selecionar uma opção no campo Grupo "${GRUPO}"
  Select From List By Label  xpath=//*[@name="txtgrupos"]  ${GRUPO}

Selecionar uma opção no campo Filtro "${FILTRO}"
  Select From List By Label  xpath=//*[@name="txtfiltros"]  ${FILTRO}