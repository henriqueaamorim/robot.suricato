*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Crédito de Acesso | Individual | Visitante

# SCREEN
Acessar Tela Consulta de Créditos de Acesso de Visitante
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsCreditosAcessoVisitante
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable  Crédito de Acesso de Visitante
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Créditos de Acesso de Visitante
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_cnsCreditosAcessoVisitante_3"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

Acessar tela: Crédito de Acesso de Visitante (Filtro)
  ${OBJ}   Set Variable  CSN
  ${APPNAME}   Set Variable  cnsCreditosAcessoVisitante
  ${SCREENNAME}  Set Variable   Crédito de Acesso de Visitante
  ${ELEMENT}    Set Variable   xpath=//td[contains(text(),'${SCREENNAME} ')]

  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

#BUTTON
#resource_btn.

#Aba Visitante
Clicar Na Aba Visitante
  ${AbaVisit}   Set Variable   xpath=//a[contains(text(),'Visitantes')]
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${AbaVisit}
  Click Element  ${AbaVisit}

#CAMPOS  
Verificar a label: Pesquisa
  ${LABEL}  Set Variable  xpath=//td[contains(text(),'Pesquisa')]
  Element Should Contain  ${LABEL}  Pesquisa

Verificar o campo: Código do Visitante	
  ${LABEL}  Set Variable  xpath=//td[contains(text(),'Código do Visitante')]
  ${CAMPO}  Set Variable  xpath=//input[@name='idvisi']
  Element Should Contain             ${LABEL}  Código do Visitante
  Element Attribute Value Should Be  ${CAMPO}  name  idvisi

Verificar o campo: Tipo de Documento	
  ${LABEL}  Set Variable  xpath=//td[contains(text(),'Tipo de Documento')]
  ${CAMPO}  Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[1]
  Element Should Contain             ${LABEL}  Tipo de Documento
  Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single 
 
Verificar o campo: Documento	
  ${LABEL}  Set Variable  xpath=//td[contains(text(),'Documento')]
  ${CAMPO}  Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[2]
  Element Should Contain             ${LABEL}  Documento
  Element Attribute Value Should Be  ${CAMPO}  class  select2-selection select2-selection--single

Verificar o campo: Data Inicial	
  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Data Inicial')] 
  ${CAMPO1}  Set Variable  xpath=//input[@name='datainic_dia']
  ${CAMPO2}  Set Variable  xpath=//input[@name='datainic_mes']
  ${CAMPO3}  Set Variable  xpath=//input[@name='datainic_ano']
  ${CAMPO4}  Set Variable  xpath=//input[@name='datainic_input_2_dia']
  ${CAMPO5}  Set Variable  xpath=//input[@name='datainic_input_2_mes']
  ${CAMPO6}  Set Variable  xpath=//input[@name='datainic_input_2_ano']
  Element Should Contain             ${LABEL}   Data Inicial
  Element Attribute Value Should Be  ${CAMPO1}  name  datainic_dia
  Element Attribute Value Should Be  ${CAMPO2}  name  datainic_mes
  Element Attribute Value Should Be  ${CAMPO3}  name  datainic_ano
  Element Attribute Value Should Be  ${CAMPO4}  name  datainic_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}  name  datainic_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}  name  datainic_input_2_ano

#FIELD
Selecionar uma opção no campo Tipo de Documento "${TIPO_DE_DOCUMENTO}"
	Select From List By Label  xpath=//*[@name="tbvisit_tipodocuvisi"]  ${TIPO_DE_DOCUMENTO}

Selecionar uma opção no campo Documento "${DOCUMENTO}"
	Select From List By Label  xpath=//*[@name="tbvisit_numedocuvisi_cond"]  ${DOCUMENTO}

Preencher o campo Documento "${DOCUMENTO}"
	Input Text  xpath=//*[@name="tbvisit_numedocuvisi"][@type="text"]  ${DOCUMENTO}

Selecionar uma opção no campo Data Inicial "${DATA_INICIAL}"
	Select From List By Label  xpath=//*[@name="tbcredavisit_datainic_cond"]  ${DATA_INICIAL}

Preencher o campo Data Inicial "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="tbcredavisit_datainic_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="tbcredavisit_datainic_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="tbcredavisit_datainic_ano"][@type="text"]  ${ANO}

Selecionar uma opção no campo Início da Faixa "${INÍCIO_DA_FAIXA}"
	Select From List By Label  xpath=//*[@name="tbcredavisit_inicfaixaces_cond"]  ${INÍCIO_DA_FAIXA}

Preencher o campo Início da Faixa inicial "${INÍCIO_DA_FAIXA_INICIAL}"
	Input Text  xpath=//*[@name="tbcredavisit_inicfaixaces_hor"][@type="text"]  ${INÍCIO_DA_FAIXA_INICIAL}

Preencher o campo Início da Faixa meio "${INÍCIO_DA_FAIXA_MEIO}"
	Input Text  xpath=//*[@name="tbcredavisit_inicfaixaces_min"][@type="text"]  ${INÍCIO_DA_FAIXA_MEIO}

Preencher o campo Início da Faixa final "${INÍCIO_DA_FAIXA_FINAL}"
	Input Text  xpath=//*[@name="tbcredavisit_inicfaixaces_seg"][@type="text"]  ${INÍCIO_DA_FAIXA_FINAL}

