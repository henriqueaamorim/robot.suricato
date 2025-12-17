*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Envio de Mensagem | Mensagens Pré-definidas

# SCREEN
Acessar Tela Programação
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Programação
  ${APPNAME}  Set Variable  frmprogMensal
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
#FIELD
Preencher o campo Mensagem "${MSG}"
	Input Text  xpath=//*[@name="mensagem1"][@type="text"]  ${MSG}

Preencher o campo Situação "${SITUACAO}"
	Input Text  xpath=//*[@name="situa1"][@type="text"]  ${SITUACAO}

#VERIFY LABELS

Verificar a label: Descrição
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]
	Element Should Contain  ${LABEL}   Descrição

Verificar a label: Mensagem
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Mensagem')]
	Element Should Contain  ${LABEL}   Mensagem

Verificar a label: Situação
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Situação')]
	Element Should Contain  ${LABEL}   Situação




#VERIFY CAMPOS

E verificar o campo 1
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL1}  Set Variable  xpath=//td[@id='hidden_field_data_sc_seq1']
	  ${LABEL2}  Set Variable  xpath=//td[@id='hidden_field_data_desc_1']
	  ${CAMPO1}  Set Variable  xpath=//input[@id='id_sc_field_mensagem_1']
	  ${CAMPO2}  Set Variable  xpath=//input[@id='id_sc_field_situa_1']
	  ${ÍCONE}   Set Variable  xpath=//a[@id='cap_situa_1']
	  ${LABEL3}  Set Variable  xpath=//span[@id='id_lookup_situa_1']

	Element Should Contain  ${LABEL1}   1
    Element Attribute Value Should Be  ${LABEL2}  id    hidden_field_data_desc_1
    Element Attribute Value Should Be  ${CAMPO1}  id    id_sc_field_mensagem_1
    Element Attribute Value Should Be  ${CAMPO2}  name   situa_1  
	Element Attribute Value Should Be  ${ÍCONE}   id    cap_situa_1
	Element Attribute Value Should Be  ${LABEL3}  id    id_lookup_situa_1 
	ELSE
	  ${LABEL1}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[2]/td[1]
 	  ${LABEL2}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[2]/td[2]
	  ${CAMPO1}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[2]/td[3]/input
	  ${CAMPO2}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[2]/td[4]/input[1]
    
	Element Should Contain  ${LABEL1}   1 
    Element Should Contain  ${LABEL2}   ANIVERSARIO 
    Element Attribute Value Should Be  ${CAMPO1}  name  mensagem1
    Element Attribute Value Should Be  ${CAMPO2}  name  situa1
	END

E verificar o campo 2   
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL1}  Set Variable  xpath=//td[@id='hidden_field_data_sc_seq2']
	  ${LABEL2}  Set Variable  xpath=//td[@id='hidden_field_data_desc_2']
	  ${CAMPO1}  Set Variable  xpath=//input[@id='id_sc_field_mensagem_2']
	  ${CAMPO2}  Set Variable  xpath=//input[@id='id_sc_field_situa_2']
	  ${ÍCONE}   Set Variable  xpath=//a[@id='cap_situa_2']
	  ${LABEL3}  Set Variable  xpath=//span[@id='id_lookup_situa_2']

	Element Should Contain  ${LABEL1}   2
    Element Attribute Value Should Be  ${LABEL2}  id   hidden_field_data_desc_2
    Element Attribute Value Should Be  ${CAMPO1}  id   id_sc_field_mensagem_2
    Element Attribute Value Should Be  ${CAMPO2}  id   id_sc_field_situa_2
	Element Attribute Value Should Be  ${ÍCONE}   id   cap_situa_2
	Element Attribute Value Should Be  ${LABEL3}  id   id_lookup_situa_2
	ELSE
      ${LABEL1}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[3]/td[1]
 	  ${LABEL2}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[3]/td[2]
	  ${CAMPO1}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[3]/td[3]/input
      ${CAMPO2}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[3]/td[4]/input[1]
  
	Element Should Contain  ${LABEL1}   2 
    Element Should Contain  ${LABEL2}      VERIFICAR      VALIDADE ASO 
	Element Attribute Value Should Be  ${CAMPO1}  name  mensagem2
    Element Attribute Value Should Be  ${CAMPO2}  name  situa2
    END

E verificar o campo 3  
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 
	  ${LABEL1}  Set Variable  xpath=//td[@id='hidden_field_data_sc_seq3']
	  ${LABEL2}  Set Variable  xpath=//td[@id='hidden_field_data_desc_3']
	  ${CAMPO1}  Set Variable  xpath=//input[@id='id_sc_field_mensagem_3']
	  ${CAMPO2}  Set Variable  xpath=//input[@id='id_sc_field_situa_3']
	  ${ÍCONE}   Set Variable  xpath=//a[@id='cap_situa_3']
	  ${LABEL3}  Set Variable  xpath=//span[@id='id_lookup_situa_3']
	  
	Element Should Contain  ${LABEL1}   3
    Element Attribute Value Should Be  ${LABEL2}  id   hidden_field_data_desc_3
    Element Attribute Value Should Be  ${CAMPO1}  id   id_sc_field_mensagem_3
    Element Attribute Value Should Be  ${CAMPO2}  id   id_sc_field_situa_3
	Element Attribute Value Should Be  ${ÍCONE}   id    cap_situa_3
	Element Attribute Value Should Be  ${LABEL3}  id    id_lookup_situa_3
	ELSE
	  ${LABEL1}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[4]/td[1]
 	  ${LABEL2}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[4]/td[2]
	  ${CAMPO1}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[4]/td[3]/input
	  ${CAMPO2}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[4]/td[4]/input[1]
    
	Element Should Contain  ${LABEL1}   3 
    Element Should Contain  ${LABEL2}      VERIFICAR      VALIDADE TRE 
	Element Attribute Value Should Be  ${CAMPO1}  name  mensagem3
    Element Attribute Value Should Be  ${CAMPO2}  name  situa3
    END

E verificar o campo 4
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 
	  ${LABEL1}  Set Variable  xpath=//td[@id='hidden_field_data_sc_seq4']
	  ${LABEL2}  Set Variable  xpath=//td[@id='hidden_field_data_desc_4']
	  ${CAMPO1}  Set Variable  xpath=//input[@id='id_sc_field_mensagem_4']
	  ${CAMPO2}  Set Variable  xpath=//input[@id='id_sc_field_situa_4']
	  ${ÍCONE}   Set Variable  xpath=//a[@id='cap_situa_4']
	  ${LABEL3}  Set Variable  xpath=//span[@id='id_lookup_situa_4']
	  
	Element Should Contain  ${LABEL1}   4
    Element Attribute Value Should Be  ${LABEL2}  id    hidden_field_data_desc_4
    Element Attribute Value Should Be  ${CAMPO1}  id   id_sc_field_mensagem_4
    Element Attribute Value Should Be  ${CAMPO2}  id   id_sc_field_situa_4
	Element Attribute Value Should Be  ${ÍCONE}   id    cap_situa_4
	Element Attribute Value Should Be  ${LABEL3}  id    id_lookup_situa_4
	ELSE
	  ${LABEL1}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[5]/td[1]
 	  ${LABEL2}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[5]/td[2]
	  ${CAMPO1}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[5]/td[3]/input
	  ${CAMPO2}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[5]/td[4]/input[1]
   
	Element Should Contain  ${LABEL1}   4 
    Element Should Contain  ${LABEL2}      VERIFICAR      VALIDADE EPI 
	Element Attribute Value Should Be  ${CAMPO1}  name  mensagem4
    Element Attribute Value Should Be  ${CAMPO2}  name  situa4
    END

E verificar o campo 5
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 
	  ${LABEL1}  Set Variable  xpath=//td[@id='hidden_field_data_sc_seq5']
	  ${LABEL2}  Set Variable  xpath=//td[@id='hidden_field_data_desc_5']
	  ${CAMPO1}  Set Variable  xpath=//input[@id='id_sc_field_mensagem_5']
	  ${CAMPO2}  Set Variable  xpath=//input[@id='id_sc_field_situa_5']
	  ${ÍCONE}   Set Variable  xpath=//a[@id='cap_situa_5']
	  ${LABEL3}  Set Variable  xpath=//span[@id='id_lookup_situa_5']
	  
	Element Should Contain  ${LABEL1}   5
    Element Attribute Value Should Be  ${LABEL2}  id    hidden_field_data_desc_5
    Element Attribute Value Should Be  ${CAMPO1}  id   id_sc_field_mensagem_5
    Element Attribute Value Should Be  ${CAMPO2}  id   id_sc_field_situa_5
	Element Attribute Value Should Be  ${ÍCONE}   id    cap_situa_5
	Element Attribute Value Should Be  ${LABEL3}  id    id_lookup_situa_5
	ELSE
	  ${LABEL1}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[6]/td[1]
 	  ${LABEL2}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[6]/td[2]
	  ${CAMPO1}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[6]/td[3]/input
	  ${CAMPO2}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[6]/td[4]/input[1]
   
	Element Should Contain  ${LABEL1}   5    
    Element Should Contain  ${LABEL2}      VERIFICAR      VALIDADE CNH     
	Element Attribute Value Should Be  ${CAMPO1}  name  mensagem5
    Element Attribute Value Should Be  ${CAMPO2}  name  situa5
	END

E verificar o campo 6
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 
	  ${LABEL1}  Set Variable  xpath=//td[@id='hidden_field_data_sc_seq6']
	  ${LABEL2}  Set Variable  xpath=//td[@id='hidden_field_data_desc_6']
	  ${CAMPO1}  Set Variable  xpath=//input[@id='id_sc_field_mensagem_6']
	  ${CAMPO2}  Set Variable  xpath=//input[@id='id_sc_field_situa_6']
	  ${ÍCONE}   Set Variable  xpath=//a[@id='cap_situa_6']
	  ${LABEL3}  Set Variable  xpath=//span[@id='id_lookup_situa_6']
	  
	Element Should Contain  ${LABEL1}   6
    Element Attribute Value Should Be  ${LABEL2}  id   hidden_field_data_desc_6
    Element Attribute Value Should Be  ${CAMPO1}  id   id_sc_field_mensagem_6
    Element Attribute Value Should Be  ${CAMPO2}  id   id_sc_field_situa_6
	Element Attribute Value Should Be  ${ÍCONE}   id   cap_situa_6
	Element Attribute Value Should Be  ${LABEL3}  id   id_lookup_situa_6
	ELSE
	  ${LABEL1}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[7]/td[1]
 	  ${LABEL2}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[7]/td[2]
	  ${CAMPO1}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[7]/td[3]/input
	  ${CAMPO2}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[7]/td[4]/input[1]
   
	Element Should Contain  ${LABEL1}   6   
    Element Should Contain  ${LABEL2}      VERIFICAR      VALIDADE CTPS     
	Element Attribute Value Should Be  ${CAMPO1}  name  mensagem6
    Element Attribute Value Should Be  ${CAMPO2}  name  situa6
	END

E verificar o campo 7
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 
	  ${LABEL1}  Set Variable  xpath=//td[@id='hidden_field_data_sc_seq7']
	  ${LABEL2}  Set Variable  xpath=//td[@id='hidden_field_data_desc_7']
	  ${CAMPO1}  Set Variable  xpath=//input[@id='id_sc_field_mensagem_7']
	  ${CAMPO2}  Set Variable  xpath=//input[@id='id_sc_field_situa_7']
	  ${ÍCONE}   Set Variable  xpath=//a[@id='cap_situa_7']
	  ${LABEL3}  Set Variable  xpath=//span[@id='id_lookup_situa_7']
	  
	Element Should Contain  ${LABEL1}   7
    Element Attribute Value Should Be  ${LABEL2}   id    hidden_field_data_desc_7
    Element Attribute Value Should Be  ${CAMPO1}  id   id_sc_field_mensagem_7
    Element Attribute Value Should Be  ${CAMPO2}  id   id_sc_field_situa_7
	Element Attribute Value Should Be  ${ÍCONE}   id    cap_situa_7
	Element Attribute Value Should Be  ${LABEL3}  id    id_lookup_situa_7
	ELSE
	  ${LABEL1}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[8]/td[1]
 	  ${LABEL2}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[8]/td[2]
	  ${CAMPO1}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[8]/td[3]/input
	  ${CAMPO2}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[8]/td[4]/input[1]
   
	Element Should Contain  ${LABEL1}   7   
    Element Should Contain  ${LABEL2}    VERIFICAR VALIDADE INTEGRACAO    
	Element Attribute Value Should Be  ${CAMPO1}  name  mensagem7
    Element Attribute Value Should Be  ${CAMPO2}  name  situa7
	END