*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Escala | Cadastro de Escala

# SCREEN
Acessar Tela Relacionamento Horários X Escala (Atualização)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmescalahorarios
  ${SCREENNAME}  Set Variable   Relacionamento Horários X Escala (Atualização)
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
    
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Mudar Frame Aplicação "nmsc_iframe_liga_frmescalahorarios"
    Sleep  2s
  ELSE
    Mudar Frame Aplicação "nmsc_iframe_frmescalahorarios_2"
    Wait Until Element is Visible  ${ELEMENT}
    Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  END

  Run Keyword If    '${MODE}' == 'DOC'    Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

Acessar Tela Relacionamento Horários X Escala (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmescalahorarios
  ${SCREENNAME}  Set Variable   Relacionamento Horários X Escala (Inclusão)
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  IF  "${SERVER}" == "172.16.14.248" or "${SERVER}" == "172.16.14.249"
    Wait Until Element is Visible  ${ELEMENT}
    Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  END  

  Mudar Frame Aplicação "nmsc_iframe_liga_frmescalahorarios"
  Sleep  2s
  
  Run Keyword If  '${MODE}' == 'DOC'    Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

#BUTTON
Clicar No Botão Buscar Dados Externos Para Horário
  ${ELEMENT}  Set Variable  xpath=//*[@id="cap_codihora1"] | //*[@id="id_img_cap_codihora_1"] | //*[@id="cap_codihora_1"]

  Wait Until Element Is Visible    ${ELEMENT}  
  Click Element  ${ELEMENT}

  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Sleep  2s
    Mudar Frame Aplicação "TB_iframeContent"
  ELSE
    Switch Window  locator=NEW
    Maximize Browser Window
  END
Clicar na checkbox "${NUM}"
  Click Element  xpath=//*[@type="checkbox"][@id="id-opt-chkdelete_${NUM}-1"]

#FIELD
Preencher o campo Horário "${HORARIO}"
  Input Text  xpath=//*[@name="codihora1"][@type="text"] | //*[@name="codihora_1"][@type="text"]  ${HORARIO}
  # Necessário clicar fora para validar a inserção do registro
  Click Element  xpath=//*[@id="hidden_field_data_codihora_1"]/table/tbody/tr/td[1]

Selecionar uma opção no campo Semana "${DIA}"
  Click Element  xpath=//*[@id="idAjaxSelect_sequregi_1"]/span/span[1]/span/span[2]
  IF  "${DIA}" == "Dom"
    Click Element  xpath=//*[@id="id_sc_field_sequregi_1"]/option[1]
  END

#VERIFY
E verificar o campo SEQ
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[1]
  Element Should Contain  ${LABEL}    SEQ  

E verificar a checkbox 
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[2]/td[2]/input
	Element Attribute Value Should Be  ${CAMPO}  name  sc_check_vert[1] 

E verificar o campo Horário
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[3]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[2]/td[3]/input[1]

  Element Should Contain  ${LABEL}   Horário 
	Element Attribute Value Should Be  ${CAMPO}  name  codihora1


#VERIFY (Atualização)

Verificar a label Semana
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[1]/td[3]
	Element Should Contain  ${LABEL}   Semana *

Verificar o campo Horário
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[1]/td[4]/div
  #${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[2]/td[6]/table/tbody/tr/td[1]/span[2]/input

  Element Should Contain  ${LABEL}   Horário 
	#Element Attribute Value Should Be  ${CAMPO}  name  codihora_1
