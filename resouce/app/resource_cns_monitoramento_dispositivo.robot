*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Controle | Monitoramento | Dispositivo Grid

# SCREEN
Acessar Tela: Monitoramento de Dispositivos (Consulta)
#(246)(249)
  ${OBJ}      Set Variable  SCN
  ${APPNAME}  Set Variable   cns_monitoramento_dispositivo
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${SCREENNAME}  Set Variable   Monitoramento de Dispositivos
  ELSE
      ${SCREENNAME}  Set Variable   Monitoramento de Dispositivos Grid
  END
  ${ELEMENT}  Set Variable     xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela: Monitoramento de Dispositivos (Filtro)  
  #(246)
  ${OBJ}      Set Variable  SCN
  ${APPNAME}  Set Variable   cns_monitoramento_dispositivo
  ${SCREENNAME}  Set Variable   Monitoramento de Dispositivos
  ${ELEMENT}  Set Variable     xpath=//td[contains(text(),'${SCREENNAME} ')]
  
  Sleep  2
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
 

#BUTTON
#resource_btn.


#VERIFY LABELS (246)
Verificar a label Status
  ${LABEL}  Set Variable  xpath=//div[contains(text(),'Status')]
  Element Should Contain  ${LABEL}  Status

Verificar a label Tipo Dispositivo
  ${LABEL}  Set Variable  xpath=//div[contains(text(),'Tipo Dispositivo')]
  Element Should Contain  ${LABEL}   Tipo Dispositivo

Verificar a label Endereço IP
  ${LABEL}  Set Variable  xpath=(//div[contains(text(),'Endereço IP')])[2]
  Element Should Contain  ${LABEL}   Endereço IP

Verificar a label Data Atualização
  ${LABEL}  Set Variable  xpath=//div[contains(text(),'Data Atualização')]
  Element Should Contain  ${LABEL}  Data Atualização

#VERIFY CAMPOS (246)

Verificar o campo: Endereço IP	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Endereço IP')]
	${CAMPO}      Set Variable  xpath=//input[@name='numeendecole']
	Element Should Contain             ${LABEL}   Endereço IP	
 	Element Attribute Value Should Be  ${CAMPO}   name   numeendecole

