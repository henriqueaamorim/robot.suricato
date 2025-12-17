*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Chave | Relatório de Movimentação de Chave

# SCREEN
Acessar Tela Movimentação de Chave - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Movimentação de Chave - Filtro
  ${APPNAME}  Set Variable  cnsMovimentoChave
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  



#BUTTON
#resource_btn.


#VERIFY

E verificar o campo Chave         
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/input
  ELSE
    ${LABEL}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/input
  END
	Element Should Contain  ${LABEL}  Chave
	Element Attribute Value Should Be  ${CAMPO}  name  codichav

E verificar o campo Empresa  
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/span/select
  ELSE    
 	  ${LABEL}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/span/select
	END
	Element Should Contain  ${LABEL}  Empresa
	Element Attribute Value Should Be  ${CAMPO}  name  codiemprreti

E verificar o campo Tipo Colaborador   
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/span/select
  ELSE    
	  ${LABEL}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/span/select
	END
	Element Should Contain  ${LABEL}  Tipo Colaborador
	Element Attribute Value Should Be  ${CAMPO}  name  tipocolareti

E verificar o campo Matrícula  
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input
  ELSE  
 	  ${LABEL}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input
	END
	Element Should Contain  ${LABEL}  Matrícula
	Element Attribute Value Should Be  ${CAMPO}  name  codimatrreti

E verificar o campo Data Retirada 
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
	Element Should Contain  ${LABEL}  Data Retirada
	Element Attribute Value Should Be  ${CAMPO1}  name  dataacesso_dia
  Element Attribute Value Should Be  ${CAMPO2}  name  dataacesso_mes
  Element Attribute Value Should Be  ${CAMPO3}  name  dataacesso_ano
  Element Attribute Value Should Be  ${CAMPO4}  name  dataacesso_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}  name  dataacesso_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}  name  dataacesso_input_2_ano

E verificar o campo Hora Retirada   
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
	Element Should Contain  ${LABEL}  Hora Retirada
	Element Attribute Value Should Be  ${CAMPO1}  name  horareti_hor
  Element Attribute Value Should Be  ${CAMPO2}  name  horareti_min
  Element Attribute Value Should Be  ${CAMPO3}  name  horareti_input_2_hor
  Element Attribute Value Should Be  ${CAMPO4}  name  horareti_input_2_min

E verificar o campo Data Devolução 
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 
    ${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[1]
    ${CAMPO1}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[1]/td/span[1]/input
    ${CAMPO2}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[1]/td/span[2]/input
    ${CAMPO3}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[1]/td/span[3]/input
    ${CAMPO4}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[2]/td/span[1]/input
    ${CAMPO5}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[2]/td/span[2]/input
    ${CAMPO6}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[2]/td/span[3]/input
  ELSE 
    ${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[1]
    ${CAMPO1}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[1]/td/input[1]
    ${CAMPO2}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[1]/td/input[2]
    ${CAMPO3}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[1]/td/input[3]
    ${CAMPO4}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[2]/td/input[1]
    ${CAMPO5}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[2]/td/input[2]
    ${CAMPO6}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[2]/td/input[3]
  END
	Element Should Contain  ${LABEL}  Data Devolução
	Element Attribute Value Should Be  ${CAMPO1}  name  datadevolucao_dia
  Element Attribute Value Should Be  ${CAMPO2}  name  datadevolucao_mes
  Element Attribute Value Should Be  ${CAMPO3}  name  datadevolucao_ano
  Element Attribute Value Should Be  ${CAMPO4}  name  datadevolucao_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}  name  datadevolucao_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}  name  datadevolucao_input_2_ano

E verificar o campo Hora Devolução   
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 
	  ${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[1]
	  ${CAMPO1}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr[1]/td/span[1]/input
    ${CAMPO2}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr[1]/td/span[2]/input
    ${CAMPO3}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr[2]/td/span[1]/input
    ${CAMPO4}  Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr[2]/td/span[2]/input
  ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[1]
	  ${CAMPO1}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr[1]/td/input[1]
    ${CAMPO2}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr[1]/td/input[2]
    ${CAMPO3}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr[2]/td/input[1]
    ${CAMPO4}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr[2]/td/input[2]
  END
	Element Should Contain  ${LABEL}  Hora Devolução
	Element Attribute Value Should Be  ${CAMPO1}  name  horadevo_hor
  Element Attribute Value Should Be  ${CAMPO2}  name  horadevo_min
  Element Attribute Value Should Be  ${CAMPO3}  name  horadevo_input_2_hor
  Element Attribute Value Should Be  ${CAMPO4}  name  horadevo_input_2_min

