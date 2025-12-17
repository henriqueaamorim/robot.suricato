*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Crachá

# SCREEN
Acessar Tela Definições do Crachá - Provisórios
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Definições do Crachá - Provisórios
  ${APPNAME}  Set Variable  ctrdefinicoescrachaprovisorios
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_ctrdefinicoescrachaprovisorios_3"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.


#VERIFY
Verificar o campo Número de Provisório por Empregados (mês) *
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/input

  Element Should Contain  ${LABEL}  Número de Provisório por Empregados (mês) *
  Element Attribute Value Should Be  ${CAMPO}  name  txtqtdprc

#FIELD
Preencher o campo Número de Provisório por Empregados (mês) "${NUM}"
  Input Text  xpath=//*[@name="txtqtdprc"][@type="text"]  ${NUM}