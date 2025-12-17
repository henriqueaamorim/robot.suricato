*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Guarda-Volumes | Relatório de Movimentação de Guarda-Volumes

# SCREEN
Acessar Tela Relatório de Utilização de Guarda-Volumes
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Relatorio de Utilização de Guarda-Volumes
  ${APPNAME}  Set Variable  cnsMovimentoGVolumes
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Relatório de Utilização de Guarda-Volumes - Filtro
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsMovimentoGVolumes
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable   Relatorio de Utilização de Guarda-Volumes
  ${ELEMENT}  Set Variable     xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
  ${SCREENNAME}  Set Variable  Relatorio de Utilização de Guarda-Volumes - Filtro 
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

#VERIFY LABELS

Verificar a label: Guarda-Volumes
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Guarda-Volumes')]
	Element Should Contain  ${LABEL}  Guarda-Volumes

Verificar a label: Tipo
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo')]
	Element Should Contain  ${LABEL}  Tipo

Verificar a label: Colaborador/Visitante
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Colaborador/Visitante')]
	Element Should Contain  ${LABEL}  Colaborador/Visitante

Verificar a label: Data Utilização
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data Utilização')]
	Element Should Contain  ${LABEL}  Data Utilização

Verificar a label: Hora Utilização
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora Utilização')]
	Element Should Contain  ${LABEL}  Hora Utilização

Verificar a label: Data Liberação
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data Liberação')]
	Element Should Contain  ${LABEL}  Data Liberação

Verificar a label: Hora Liberação
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora Liberação')]
	Element Should Contain  ${LABEL}  Hora Liberação

Verificar a label: Observação
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Observação')]
	Element Should Contain  ${LABEL}   Observação            


#VERIFY CAMPOS

E verificar o campo Guarda-Volumes 
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]
    ${CAMPO}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/input
  ELSE
    ${LABEL}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]
    ${CAMPO}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/input
	END
	Element Should Contain  ${LABEL}  Guarda-Volumes
	Element Attribute Value Should Be  ${CAMPO}  name  codiguarvolu

E verificar o campo Tipo     
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  	${LABEL}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
  	${CAMPO}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/select
  ELSE
  	${LABEL}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
  	${CAMPO}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/select
  END
	Element Should Contain  ${LABEL}  Tipo
	Element Attribute Value Should Be  ${CAMPO}  name  tipousua

E verificar o campo Data Utilização  
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	  ${CAMPO1}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[1]/td/span[1]/input
    ${CAMPO2}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[1]/td/span[2]/input
    ${CAMPO3}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[1]/td/span[3]/input
    ${CAMPO4}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[2]/td/span[1]/input
    ${CAMPO5}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[2]/td/span[2]/input
    ${CAMPO6}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[2]/td/span[3]/input
  ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	  ${CAMPO1}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[1]/td/input[1]
    ${CAMPO2}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[1]/td/input[2]
    ${CAMPO3}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[1]/td/input[3]
    ${CAMPO4}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[2]/td/input[1]
    ${CAMPO5}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[2]/td/input[2]
    ${CAMPO6}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[2]/td/input[3]
	END
	Element Should Contain  ${LABEL}   Data Utilização
	Element Attribute Value Should Be  ${CAMPO1}  name  dataacesso_dia
  Element Attribute Value Should Be  ${CAMPO2}  name  dataacesso_mes
  Element Attribute Value Should Be  ${CAMPO3}  name  dataacesso_ano
  Element Attribute Value Should Be  ${CAMPO4}  name  dataacesso_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}  name  dataacesso_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}  name  dataacesso_input_2_ano

E verificar o campo Hora Utilização   
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	  ${CAMPO1}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td/span[1]/input
    ${CAMPO2}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td/span[2]/input
    ${CAMPO3}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr[2]/td/span[1]/input
    ${CAMPO4}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr[2]/td/span[2]/input
  ELSE
    ${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	  ${CAMPO1}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td/input[1]
    ${CAMPO2}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td/input[2]
    ${CAMPO3}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr[2]/td/input[1]
    ${CAMPO4}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr[2]/td/input[2]
	END
	Element Should Contain  ${LABEL}  Hora Utilização 
	Element Attribute Value Should Be  ${CAMPO1}  name  horauso_hor
  Element Attribute Value Should Be  ${CAMPO2}  name  horauso_min
  Element Attribute Value Should Be  ${CAMPO3}  name  horauso_input_2_hor
  Element Attribute Value Should Be  ${CAMPO4}  name  horauso_input_2_min

E verificar o campo Data Liberação  
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
	  ${CAMPO1}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[1]/td/span[1]/input
    ${CAMPO2}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[1]/td/span[2]/input
    ${CAMPO3}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[1]/td/span[3]/input
    ${CAMPO4}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[2]/td/span[1]/input
    ${CAMPO5}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[2]/td/span[2]/input
    ${CAMPO6}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[2]/td/span[3]/input
  ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
	  ${CAMPO1}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[1]/td/input[1]
    ${CAMPO2}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[1]/td/input[2]
    ${CAMPO3}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[1]/td/input[3]
    ${CAMPO4}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[2]/td/input[1]
    ${CAMPO5}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[2]/td/input[2]
    ${CAMPO6}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[2]/td/input[3]
	END
	Element Should Contain  ${LABEL}   Data Liberação
	Element Attribute Value Should Be  ${CAMPO1}  name  datadevolucao_dia
  Element Attribute Value Should Be  ${CAMPO2}  name  datadevolucao_mes
  Element Attribute Value Should Be  ${CAMPO3}  name  datadevolucao_ano
  Element Attribute Value Should Be  ${CAMPO4}  name  datadevolucao_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}  name  datadevolucao_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}  name  datadevolucao_input_2_ano

E verificar o campo Hora Liberação 
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
	  ${CAMPO1}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr[1]/td/span[1]/input
    ${CAMPO2}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr[1]/td/span[2]/input
    ${CAMPO3}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr[2]/td/span[1]/input
    ${CAMPO4}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr[2]/td/span[2]/input
  ELSE
    ${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
    ${CAMPO1}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr[1]/td/input[1]
    ${CAMPO2}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr[1]/td/input[2]
    ${CAMPO3}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr[2]/td/input[1]
    ${CAMPO4}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr[2]/td/input[2]
	END
	Element Should Contain  ${LABEL}  Hora Liberação
	Element Attribute Value Should Be  ${CAMPO1}  name  horareti_hor
  Element Attribute Value Should Be  ${CAMPO2}  name  horareti_min
  Element Attribute Value Should Be  ${CAMPO3}  name  horareti_input_2_hor
  Element Attribute Value Should Be  ${CAMPO4}  name  horareti_input_2_min


