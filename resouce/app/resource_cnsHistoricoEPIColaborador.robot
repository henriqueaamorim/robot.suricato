*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Histórico de EPI por Colaborador

# SCREEN
Acessar Tela Histórico de EPI por Colaborador 
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Histórico de EPI por Colaborador
  ${APPNAME}  Set Variable  cnsHistoricoEPIColaborador
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
  ELSE
      ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Histórico de EPI por Colaborador (Filtro)
  ${OBJ}         Set Variable    SCN
  ${SCREENNAME}  Set Variable    Histórico de EPI por Colaborador
  ${APPNAME}     Set Variable    cnsHistoricoEPIColaborador
  ${ELEMENT}     Set Variable    xpath=(//td[contains(text(), '${SCREENNAME}')])[1]

  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"



#BUTTON
#resource_btn.

#VERIFY LABELS

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Empresa')]
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Tipo Colaborador
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo Colaborador')]
	Element Should Contain  ${LABEL}   Tipo Colaborador 

Verificar a label Matricula
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Matricula')]
	Element Should Contain  ${LABEL}   Matricula

Verificar a label Colaborador
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Colaborador')]
	Element Should Contain  ${LABEL}   Colaborador

Verificar a label Data Entrega
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data Entrega')]
	Element Should Contain  ${LABEL}   Data Entrega

Verificar a label EPI
	${LABEL}   Set Variable  xpath=//div[contains(text(),'EPI')]
	Element Should Contain  ${LABEL}   EPI

Verificar a label Quantidade
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Quantidade')]
	Element Should Contain  ${LABEL}   Quantidade

Verificar a label Chave Externa
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Chave Externa')]
	Element Should Contain  ${LABEL}   Chave Externa  

Verificar a label Status Vencimento
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Status Vencimento')]
	Element Should Contain  ${LABEL}   Status Vencimento
            
Verificar a label Código confirmado
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código confirmado')]
	Element Should Contain  ${LABEL}   Código confirmado


#VERIFY CAMPOS

E verificar o campo Empresa  
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}  Set Variable  xpath=//td[contains(text(), 'Empresa')]
      ${CAMPO}  Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[1]
	  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single
    ELSE
      ${LABEL}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]
      ${CAMPO}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/select
	Element Attribute Value Should Be  ${CAMPO}  name  codiempr 
	END
	Element Should Contain  ${LABEL}  Empresa
	

E verificar o campo Tipo Colaborador 
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}  Set Variable  xpath=//td[contains(text(), 'Tipo Colaborador')]
      ${CAMPO}  Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[2]
	Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single
    ELSE
      ${LABEL}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/select
	Element Attribute Value Should Be  ${CAMPO}  name  tipocola  
	END
	Element Should Contain  ${LABEL}  Tipo Colaborador 

E verificar o campo Matricula   
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}  Set Variable  xpath=//td[contains(text(), 'Matricula')]
      ${CAMPO}  Set Variable  xpath=//input[@name='codimatr']
    ELSE
      ${LABEL}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/input
	END
  	Element Should Contain  ${LABEL}  Matricula 
	Element Attribute Value Should Be  ${CAMPO}  name  codimatr
  
E verificar o campo Colaborador   
 	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}  Set Variable  xpath=//td[contains(text(), 'Colaborador')]
      ${CAMPO}  Set Variable  xpath=//input[@name='nomepess']
    ELSE
      ${LABEL}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input
	END
  	Element Should Contain  ${LABEL}  Colaborador
	Element Attribute Value Should Be  ${CAMPO}  name  nomepess   
  
E verificar o campo Data Entrega 
 	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}   Set Variable  xpath=//td[contains(text(), 'Data Entrega')]
    ${CAMPO1}  Set Variable  xpath=//input[@name='dataentre_dia']
    ${CAMPO2}  Set Variable  xpath=//input[@name='dataentre_mes']
    ${CAMPO3}  Set Variable  xpath=//input[@name='dataentre_ano']
    ${CAMPO4}  Set Variable  xpath=//input[@name='dataentre_input_2_dia']
    ${CAMPO5}  Set Variable  xpath=//input[@name='dataentre_input_2_mes']
    ${CAMPO6}  Set Variable  xpath=//input[@name='dataentre_input_2_ano']
  ELSE
    ${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
	  ${CAMPO1}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[1]/td/input[1]
    ${CAMPO2}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[1]/td/input[2]
    ${CAMPO3}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[1]/td/input[3]
    ${CAMPO4}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[2]/td/input[1]
    ${CAMPO5}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[2]/td/input[2]
    ${CAMPO6}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[2]/td/input[3]
	END
	Element Should Contain  ${LABEL}  Data Entrega 
	Element Attribute Value Should Be  ${CAMPO1}  name  dataentre_dia 
	Element Attribute Value Should Be  ${CAMPO2}  name  dataentre_mes
	Element Attribute Value Should Be  ${CAMPO3}  name  dataentre_ano
	Element Attribute Value Should Be  ${CAMPO4}  name  dataentre_input_2_dia
	Element Attribute Value Should Be  ${CAMPO5}  name  dataentre_input_2_mes
	Element Attribute Value Should Be  ${CAMPO6}  name  dataentre_input_2_ano


E verificar o campo EPI   
 	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}  Set Variable  xpath=//td[contains(text(),'EPI')]
    ${CAMPO}  Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[3]
	Element Attribute Value Should Be  ${CAMPO}  class  select2-selection select2-selection--single
    ELSE
    ${LABEL}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/select
	END
	Element Should Contain  ${LABEL}  EPI

E verificar o campo Status Vencimento 
 	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}  Set Variable  xpath=//td[contains(text(), 'Status Vencimento')]
	${CAMPO}  Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[4]
	Element Attribute Value Should Be  ${CAMPO}  class  select2-selection select2-selection--single 
    ELSE
    ${LABEL}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr/td/select
	END
	Element Should Contain  ${LABEL}  Status Vencimento 
	


E verificar o campo Código confirmado 
 	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}  Set Variable  xpath=//td[contains(text(), 'Código confirmado')]
    ${CAMPO}  Set Variable  xpath=//td[@class='scGridLabelFont css_etb_quanretibene_label'] 
    ELSE
    ${LABEL}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr/td/select
	END
	Element Should Contain  ${LABEL}  Código confirmado
    Element Attribute Value Should Be  ${CAMPO}   class   scGridLabelFont css_etb_quanretibene_label   
         


#FIELD
Selecionar uma opção no campo Empresa "${EMPRESA}"
	Select From List By Label  xpath=//*[@name="codiempr"]  ${EMPRESA}

Selecionar uma opção no campo Tipo Colaborador "${TIPO_COLABORADOR}"
	Select From List By Label  xpath=//*[@name="tipocola"]  ${TIPO_COLABORADOR}

Preencher o campo Matricula "${MATRICULA}"
	Input Text  xpath=//*[@name="codimatr"][@type="text"]  ${MATRICULA}

Preencher o campo Colaborador "${COLABORADOR}"
	Input Text  xpath=//*[@name="nomepess"][@type="text"]  ${COLABORADOR}

Preencher o campo Data Entrega inicial "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="dataentre_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="dataentre_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="dataentre_ano"][@type="text"]  ${ANO}

Preencher o campo Data Entrega final "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="dataentre_input_2_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="dataentre_input_2_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="dataentre_input_2_ano"][@type="text"]  ${ANO}

Selecionar uma opção no campo EPI "${EPI}"
	Select From List By Label  xpath=//*[@name="codiepi"]  ${EPI}

Selecionar uma opção no campo Status Vencimento "${STATUS_VENCIMENTO}"
	Select From List By Label  xpath=//*[@name="statvencepi"]  ${STATUS_VENCIMENTO}

