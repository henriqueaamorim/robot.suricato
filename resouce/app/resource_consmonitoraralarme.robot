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
Acessar Tela Monitorar Alarmes
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Monitorar Alarmes
  ${APPNAME}  Set Variable  consmonitoraralarme
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
  END
  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Monitorar Alarmes (Filtro)
      ${OBJ}         Set Variable  SCN
      ${APPNAME}  Set Variable  consmonitoraralarme
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${SCREENNAME}  Set Variable  Monitorar Alarmes
      ${ELEMENT}  Set Variable     xpath=//td[contains(text(),'${SCREENNAME} ')]
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"    
  ELSE
      ${SCREENNAME}  Set Variable  Monitorar Alarmes (Filtro)  
      ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
  Mudar Frame Aplicação "mnu_iframe"    
  END
    
    Wait Until Element is Visible  ${ELEMENT}
    Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#BUTTON
#resource_btn.

#VERIFY LABEL

Verificar a label Planta - 1
	    ${LABEL}   Set Variable  xpath=//div[contains(text(),'Planta')]
	Element Should Contain  ${LABEL}   Planta

Verificar a label Planta - 2
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	    ${LABEL}   Set Variable  xpath=//div[contains(text(),'Planta')]
  ELSE    
	    ${LABEL}   Set Variable  xpath=//b[contains(text(),'Planta')]
  END
	Element Should Contain  ${LABEL}   Planta

Verificar a label Prioridade
   IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	    ${LABEL}   Set Variable  xpath=//div[contains(text(),'Prioridade')]
  ELSE 
	    ${LABEL}   Set Variable  xpath=//b[contains(text(),'Prioridade')]
  END
	Element Should Contain  ${LABEL}   Prioridade

Verificar a label Data/Hora
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	    ${LABEL}   Set Variable  xpath=//div[contains(text(),'Data/Hora')]
  ELSE
      ${LABEL}   Set Variable  xpath=//b[contains(text(),'Data/Hora')]
  END    
	Element Should Contain  ${LABEL}   Data/Hora

Verificar a label Situação
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	    ${LABEL}   Set Variable  xpath=//div[contains(text(),'Situação')]
  ELSE 
	    ${LABEL}   Set Variable  xpath=//b[contains(text(),'Situação')]
  END
	Element Should Contain  ${LABEL}   Situação

Verificar a label Alarme
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	    ${LABEL}   Set Variable  xpath=//div[contains(text(),'Alarme')]
  ELSE 
	    ${LABEL}   Set Variable  xpath=//b[contains(text(),'Alarme')]
  END
	Element Should Contain  ${LABEL}   Alarme

Verificar a label Codin
   IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	    ${LABEL}   Set Variable  xpath=//div[contains(text(),'Codin')]
  ELSE 
	    ${LABEL}   Set Variable  xpath=//b[contains(text(),'Codin')]
  END    
	Element Should Contain  ${LABEL}   Codin
  
Verificar a label Status
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	    ${LABEL}   Set Variable  xpath=//div[contains(text(),'Status')]
  ELSE 
	    ${LABEL}   Set Variable  xpath=//b[contains(text(),'Status')]
  END    
	Element Should Contain  ${LABEL}   Status
  
Verificar a label Informações
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	    ${LABEL}   Set Variable  xpath=//div[contains(text(),'Informações')]
  ELSE 
	    ${LABEL}   Set Variable  xpath=//b[contains(text(),'Informações')]
  END    
	Element Should Contain  ${LABEL}   Informações

Verificar a label Rec
   IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	    ${LABEL}   Set Variable  xpath=//div[contains(text(),'Rec.')]
   ELSE 
	${LABEL}   Set Variable  xpath=//b[contains(text(),'Rec.')]
   END
	 Element Should Contain  ${LABEL}   Rec.

Verificar a label Tra
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	    ${LABEL}   Set Variable  xpath=//div[contains(text(),'Tra.')]
  ELSE 
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tra.')]
  END
	Element Should Contain  ${LABEL}   Tra.


#VERIFY CAMPOS

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Planta
  ${LABEL}  Set Variable  xpath=//td[contains(text(),'Planta')]
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"  
    ${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
  Element Attribute Value Should Be  ${CAMPO}  class  select2-selection select2-selection--single
  ELSE
    ${CAMPO}  Set Variable  xpath=//select[@name='tbalarstrata_codiplan']
   Element Attribute Value Should Be  ${CAMPO}  name  tbalarstrata_codiplan  
  END
  Element Should Contain  ${LABEL}  Planta

Verificar o campo Codigo do Coletor
  ${LABEL}  Set Variable  xpath=//td[contains(text(),'Codigo do Coletor')]
  ${CAMPO}  Set Variable  xpath=//select[@name='tbalarstrata_codicole[]']
  Element Should Contain  ${LABEL}  Codigo do Coletor
   Element Attribute Value Should Be  ${CAMPO}  name  tbalarstrata_codicole[]  
  
Verificar o campo Situação
  ${LABEL}  Set Variable  xpath=//td[contains(text(),'Situação')]
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
  Element Attribute Value Should Be  ${CAMPO}  class   select2-selection select2-selection--single
  ELSE
    ${CAMPO}  Set Variable  xpath=//select[@name='tbalarstrata_tipoalar']
  Element Attribute Value Should Be  ${CAMPO}  name  tbalarstrata_tipoalar  
  END
  Element Should Contain  ${LABEL}  Situação

Verificar o campo Sinal de Alarme
  ${LABEL}  Set Variable  xpath=//td[contains(text(),'Sinal de Alarme')]
  ${CAMPO}  Set Variable  xpath=//input[@name='tbalarstrata_codisind']
  Element Should Contain  ${LABEL}  Sinal de Alarme
  Element Attribute Value Should Be  ${CAMPO}  name  tbalarstrata_codisind  

Verificar o campo Equipamento
  ${LABEL}  Set Variable  xpath=//td[contains(text(),'Equipamento')]
  ${CAMPO}  Set Variable  xpath=//input[@name='tbcodin_desccole']
  Element Should Contain  ${LABEL}  Equipamento
  Element Attribute Value Should Be  ${CAMPO}  name  tbcodin_desccole  
  