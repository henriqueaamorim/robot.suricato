*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Envio de Mensagem | Individual

# SCREEN
Acessar Tela: Mensagem de Acesso do Visitante (Consulta)
  ${OBJ}         Set Variable   SCN
  ${SCREENNAME}  Set Variable   Mensagem de Acesso do Visitante 
  ${APPNAME}     Set Variable   consmensagemacessovisitante
  ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME}')]
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_consmensagemacessovisitante_3"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela: Mensagem de Acesso do Visitante (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Mensagem de Acesso do Visitante
  ${APPNAME}     Set Variable  consmensagemacessovisitante
  ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME} ')]
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

#BUTTON
#resource_btn.

#Aba: Visitantes
Clicar Na Aba Visitante
  ${AbaVisit}   Set Variable   xpath=//a[contains(text(),'Visitantes')]
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${AbaVisit}
  Click Element  ${AbaVisit}

#VERIFICAR CAMPOS
Verificar a label: Pesquisa
  ${LABEL}  Set Variable  xpath=//td[contains(text(),'Pesquisa')]
  Element Should Contain  ${LABEL}  Pesquisa

Verificar o campo: Nome   
  ${LABEL}  Set Variable  xpath=//td[contains(text(),'Nome')]
  ${CAMPO}  Set Variable  xpath=//input[@name='tbpessoa_nomepess']
  Element Should Contain  ${LABEL}  Nome
  Element Attribute Value Should Be  ${CAMPO}  name  tbpessoa_nomepess

Verificar o campo: Data Inicial	 
  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Data Inicial')]
  ${CAMPO1}  Set Variable  xpath=//input[@name='datainic_dia']
  ${CAMPO2}  Set Variable  xpath=//input[@name='datainic_mes']
  ${CAMPO3}  Set Variable  xpath=//input[@name='datainic_ano']
  ${CAMPO4}  Set Variable  xpath=//input[@name='datainic_input_2_dia']
  ${CAMPO5}  Set Variable  xpath=//input[@name='datainic_input_2_mes']
  ${CAMPO6}  Set Variable  xpath=//input[@name='datainic_input_2_ano']
  Element Should Contain  ${LABEL}  Data Inicial
  Element Attribute Value Should Be  ${CAMPO1}  name  datainic_dia
  Element Attribute Value Should Be  ${CAMPO2}  name  datainic_mes
  Element Attribute Value Should Be  ${CAMPO3}  name  datainic_ano
  Element Attribute Value Should Be  ${CAMPO4}  name  datainic_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}  name  datainic_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}  name  datainic_input_2_ano

Verificar o campo: Mensagem  
  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Mensagem')]
  ${CAMPO1}  Set Variable  xpath=//input[@name='tbmensavisit_menscole'] 
  Element Should Contain  ${LABEL}  Mensagem
  Element Attribute Value Should Be  ${CAMPO1}  name  tbmensavisit_menscole

#FIELD
Selecionar uma opção no campo Empresa "${EMP}"
  Select from list by label  xpath=//*[@name="tbcolab_codiempr"]  ${EMP}

Selecionar uma opção no campo Tipo de Colaborador "${TIPCOL}"
  Select from list by label  xpath=//*[@name="tbcolab_tipocola"]  ${TIPCOL}

Preencher o campo Matrícula "${MAT}"
  Input Text  xpath=//*[@name="tbcolab_codimatr"][@type="text"]  ${MAT}

Preencher o campo X "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="tbmensacolab_datainic_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="tbmensacolab_datainic_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="tbmensacolab_datainic_ano"][@type="text"]  ${ANO}

Preencher o campo X "${HORA}/${MIN}"
  Input Text  xpath=//*[@name="tbmensacolab_horainic_hor"][@type="text"]  ${HORA}
  Input Text  xpath=//*[@name="tbmensacolab_horainic_min"][@type="text"]  ${MIN} 

Preencher o campo Mensagem "${MENSAGEM}"
  Input Text  xpath=//*[@name="tbmensacolab_menscole"][@type="text"]  ${MENSAGEM}