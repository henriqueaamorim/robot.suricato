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
Acessar Tela Monitoramento Acesso - Grid
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Monitoramento Acesso - Grid
  ${APPNAME}  Set Variable  ctr_monitoramento_acesso
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.

#BUTTON

Verificar BTN OFF (Bloco)
  ${BTN}  Set Variable  xpath=//input[@name='btnOnOff']
  Element Attribute Value Should Be  ${BTN}   name  btnOnOff  

Verificar BTN Filtro (Bloco)
  ${BTN}  Set Variable  xpath=//input[@name='btnFiltro']
  Element Attribute Value Should Be  ${BTN}   name  btnFiltro  

Verificar BTN Limpar (Bloco)
  ${BTN}  Set Variable  xpath=//input[@name='btnLimpar']
  Element Attribute Value Should Be  ${BTN}   name  btnLimpar   


#VERIFY LABELS
Verificar o label Foto
  ${LABEL}  Set Variable  xpath=//th[contains(text(),'Foto')]
  Element Should Contain  ${LABEL}  Foto

Verificar o label Nome
  ${LABEL}  Set Variable  xpath=//th[contains(text(),'Nome')]
  Element Should Contain  ${LABEL}  Nome

Verificar o label Dados
  ${LABEL}  Set Variable  xpath=//th[contains(text(),'Dados')]
  Element Should Contain  ${LABEL}  Dados

Verificar o label Codin
  ${LABEL}  Set Variable  xpath=//th[contains(text(),'Codin')]
  Element Should Contain  ${LABEL}  Codin

Verificar o label Data
  ${LABEL}  Set Variable  xpath=//th[contains(text(),'Data')]
  Element Should Contain  ${LABEL}  Data

Verificar o label Crachá
  ${LABEL}  Set Variable  xpath=//th[contains(text(),'Crachá')]
  Element Should Contain  ${LABEL}  Crachá

Verificar o label Direção
  ${LABEL}  Set Variable  xpath=//th[contains(text(),'Direção')]
  Element Should Contain  ${LABEL}  Direção

Verificar o label Tipo de Acesso
  ${LABEL}  Set Variable  xpath=//th[contains(text(),'Tipo de Acesso')]
  Element Should Contain  ${LABEL}  Tipo de Acesso

Verificar o label Veículo
  ${LABEL}  Set Variable  xpath=//th[contains(text(),'Veículo')]
  Element Should Contain  ${LABEL}  Veículo

Verificar o label MultiAcesso
  ${LABEL}  Set Variable  xpath=//th[contains(text(),'MultiAcesso')]
  #Element Should Contain  ${LABEL}   MultiAcesso

Verificar o label Planta (Bloco)
  ${LABEL}  Set Variable  xpath=//th[contains(text(),'Planta')]
  Element Should Contain  ${LABEL}  Planta

Verificar o label Codin (Bloco)
  ${LABEL}  Set Variable  xpath=//th[contains(text(),'Codin')]
  Element Should Contain  ${LABEL}  Codin

Verificar o label Crachá (Bloco)
  ${LABEL}  Set Variable  xpath=//th[contains(text(),'Crachá')]
  Element Should Contain  ${LABEL}  Crachá

Verificar o label Direção (Bloco)
  ${LABEL}  Set Variable  xpath=//th[contains(text(),'Direção')]
  Element Should Contain  ${LABEL}  Direção

Verificar o label Tipo de Acesso (Bloco)
  ${LABEL}  Set Variable  xpath=//th[contains(text(),'Tipo de Acesso')]
  Element Should Contain  ${LABEL}  Tipo de Acesso

