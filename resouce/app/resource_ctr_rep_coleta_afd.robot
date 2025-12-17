*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Codin | Grupo de REP | AFD

# SCREEN
Acessar Tela AFD
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  AFD
  ${APPNAME}  Set Variable  ctr_rep_coleta_afd
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
  ELSE
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[4]
  END

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela AFD - Empresa
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  AFD
  ${APPNAME}  Set Variable  ctr_rep_coleta_afd
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"


Acessar Tela AFD - Grupo de Rep
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  AFD
  ${APPNAME}  Set Variable  ctr_rep_coleta_afd
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V3.png"


# BOX
Selecionar box Empresa
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${ELEMENT}  Set Variable  xpath=//input[@id="id-opt-pesquisar-1"]
  ELSE
    ${ELEMENT}  Set Variable  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[2]/table/tbody/tr[1]/td/input
  END
  Sleep  2s
  Wait Until Element Is Visible    ${ELEMENT}
  Click Element    ${ELEMENT}

Selecionar box Grupo de Rep
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${ELEMENT}  Set Variable  xpath=//input[@id="id-opt-pesquisar-2"]
  ELSE
    ${ELEMENT}  Set Variable  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[2]/table/tbody/tr[2]/td/input
  END
  sleep  2
  Wait Until Element Is Visible    ${ELEMENT}
  Click Element    ${ELEMENT}


#BUTTON
#resource_btn.


#FIELD
Selecionar uma opção no campo Empresa "${EMPRESA}"
  Select From List By Label  xpath=//*[@name="cmpempresa"]  ${EMPRESA}

Selecionar uma opção no campo Planta "${PLANTA}"
  Select From List By Label  xpath=//*[@name="codiplan[]"]  ${PLANTA}

Selecionar uma opção no campo Codin "${CODIN}"
  Select From List By Label  xpath=//*[@name="idcodin[]"]  ${CODIN}

Preencher o campo Indelével "${INDELEVEL}"
  Input Text  xpath=//*[@name="nrcodinrep"][@type="text"]  ${INDELEVEL}
  
Preencher o campo Matrícula "${MATRICULA}"
  Input Text  xpath=//*[@name="cmpmatricula"][@type="text"]  ${MATRICULA}
  
Preencher o campo data Inicial "${DATA_INICIAL}"
  Input Text  xpath=//*[@name="datamarcini"][@type="text"]  ${DATA_INICIAL}
  
Preencher o campo data Final "${DATA_FINAL}"
  Input Text  xpath=//*[@name="datamarcfin"][@type="text"]  ${DATA_FINAL}
  
Selecionar uma opção no campo Tipo de Registro "${TIPO_DE_REGISTRO}"
  IF  '${TIPO_DE_REGISTRO}' == '2 - Inc/Alt Empresa'
    Click Element  xpath=//*[@type='checkbox'][@value=2]
  
  ELSE IF  '${TIPO_DE_REGISTRO}' == '3 - Marcações'
    Click Element  xpath=//*[@type='checkbox'][@value=3]
  
  ELSE IF  '${TIPO_DE_REGISTRO}' == '4 - Ajuste Relógio'
    Click Element  xpath=//*[@type='checkbox'][@value=4]
  
  ELSE IF  '${TIPO_DE_REGISTRO}' == '5 - Inc/Alt/Exec Empregado'
    Click Element  xpath=//*[@type='checkbox'][@value=5]
  
  ELSE IF  '${TIPO_DE_REGISTRO}' == '6 - Alarmes'
    Click Element  xpath=//*[@type='checkbox'][@value=6]
  
  ELSE IF  '${TIPO_DE_REGISTRO}' == '7 - Marcação do REP P'
    Click Element  xpath=//*[@type='checkbox'][@value=7]
  END


Selecionar uma opção no campo Geração do Arquivo "${GERACAO_DO_ARQUIVO}"
  IF  '${GERACAO_DO_ARQUIVO}' == 'Arquivo Único'
    Click Element  xpath=//*[@type='radio'][@value=0]
  
  ELSE IF  '${GERACAO_DO_ARQUIVO}' == 'Separado Por Planta'
    Click Element  xpath=//*[@type='radio'][@value=1]

  ELSE IF  '${GERACAO_DO_ARQUIVO}' == 'Separado Por Codin'
    Click Element  xpath=//*[@type='radio'][@value=2]
  END

Marcar a opção Exibir Arquivo em Tela
  Click Element  xpath=//*[@type='checkbox'][@name='exibirtela']

Selecionar uma opção no campo Grupo de REP "${GRUPO_DE_REP}"
  Select From List By Label  xpath=//*[@name="gruporep"]  ${GRUPO_DE_REP}


#VERIFY CAMPOS

Verificar o campo Pesquisar Por
	${LABEL}       Set Variable   xpath=//td[@id='hidden_field_label_pesquisar']
  ${CAMPO1}      Set Variable   xpath=//input[@id='id-opt-pesquisar-1']
  ${LABEL1}      Set Variable   xpath=//label[@for='id-opt-pesquisar-1']
  ${CAMPO2}      Set Variable   xpath=//input[@id='id-opt-pesquisar-2']
  ${LABEL2}      Set Variable   xpath=//label[@for='id-opt-pesquisar-2']
  sleep  2s
  Element Should Contain    ${LABEL}    Pesquisar Por
   

Verificar o campo Empresa *
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Empresa *')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_cmpempresa_obj']
   sleep  2s
   Element Should Contain    ${LABEL}   Empresa *
   Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single css_cmpempresa_obj

Verificar o campo Planta
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Planta')]
	${CAMPO}      Set Variable  xpath=//select[@id='id_sc_field_codiplan']
   sleep  2s
   Element Should Contain    ${LABEL}    Planta
   Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_codiplan
  
Verificar o campo Codin
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Codin')]
	${CAMPO}      Set Variable  xpath=//select[@id='id_sc_field_idcodin']
   sleep  2s
   Element Should Contain    ${LABEL}    Codin
   Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_idcodin

Verificar o campo Indelével
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Indelével')]
	${CAMPO}      Set Variable  xpath=//input[@id='id_sc_field_nrcodinrep']
  sleep  2s
  Element Should Contain    ${LABEL}    Indelével
  Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_nrcodinrep

Verificar o campo Matrícula
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Matrícula')]
	${CAMPO}      Set Variable  xpath=//input[@id='id_sc_field_cmpmatricula']
  sleep  2s
  Element Should Contain    ${LABEL}    Matrícula
  Element Attribute Value Should Be  ${CAMPO}  id   id_sc_field_cmpmatricula

Verificar o campo Data Inicial
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Data Inicial')]
	${CAMPO}      Set Variable  xpath=//input[@id='id_sc_field_datamarcini']
  sleep  2s
  Element Should Contain    ${LABEL}    Data Inicial
  Element Attribute Value Should Be  ${CAMPO}  id   id_sc_field_datamarcini

Verificar o campo Data Final
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Data Final')]
	${CAMPO}      Set Variable  xpath=//input[@id='id_sc_field_datamarcfin']
  sleep  2s
  Element Should Contain    ${LABEL}    Data Final
  Element Attribute Value Should Be  ${CAMPO}  id   id_sc_field_datamarcfin

Verificar o campo Tipo de Registro *
	${LABEL}      Set Variable   xpath=//span[contains(text(),'Tipo de Registro *')]
	${CAMPO1}     Set Variable   xpath=//input[@id='id-opt-tiporegistro-1']
  ${LABEL1}     Set Variable   xpath=//label[@for='id-opt-tiporegistro-1']
  ${CAMPO2}     Set Variable   xpath=//input[@id='id-opt-tiporegistro-2']
  ${LABEL2}     Set Variable   xpath=//label[@for='id-opt-tiporegistro-2']
  ${CAMPO3}     Set Variable   xpath=//input[@id='id-opt-tiporegistro-3']
  ${LABEL3}     Set Variable   xpath=//label[@for='id-opt-tiporegistro-3']
  ${CAMPO4}     Set Variable   xpath=//input[@id='id-opt-tiporegistro-4']
  ${LABEL4}     Set Variable   xpath=//label[@for='id-opt-tiporegistro-4']
  ${CAMPO5}     Set Variable   xpath=//input[@id='id-opt-tiporegistro-5']
  ${LABEL5}     Set Variable   xpath=//label[@for='id-opt-tiporegistro-5']
  ${CAMPO6}     Set Variable   xpath=//input[@id='id-opt-tiporegistro-6']
  ${LABEL6}     Set Variable   xpath=//label[@for='id-opt-tiporegistro-6']
 
  sleep  2s
  Element Should Contain    ${LABEL}    Tipo de Registro *

Verificar o campo Geração do Arquivo
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Geração do Arquivo')]
	${CAMPO1}     Set Variable  xpath=//input[@id='id-opt-opcaoarquivo-0']
  ${LABEL1}     Set Variable   xpath=//label[@for='id-opt-opcaoarquivo-0']
	${CAMPO2}     Set Variable   xpath=//input[@id='id-opt-opcaoarquivo-1']
  ${LABEL2}     Set Variable   xpath=//label[@for='id-opt-opcaoarquivo-1']
  ${CAMPO3}     Set Variable   xpath=//input[@id='id-opt-opcaoarquivo-2']
  ${LABEL3}     Set Variable   xpath=//label[@for='id-opt-opcaoarquivo-2']

  sleep  2s
  Element Should Contain             ${LABEL}   Geração do Arquivo

Verificar o campo Exibir Arquivo em Tela
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Exibir Arquivo em Tela')]
	${CAMPO}      Set Variable  xpath=//input[@id='id-opt-exibirtela-1']
  sleep  2s
  Element Should Contain    ${LABEL}    Exibir Arquivo em Tela
  Element Attribute Value Should Be  ${CAMPO}  id  id-opt-exibirtela-1
 
Verificar o campo Grupo REP	
	${LABEL}      Set Variable  xpath=//label[@for='id-opt-pesquisar-2']
	${CAMPO}      Set Variable  xpath=//input[@id='id-opt-pesquisar-2']
  sleep  2s
  Element Should Contain    ${LABEL}    Grupo REP	
  Element Attribute Value Should Be  ${CAMPO}  id  id-opt-pesquisar-2

Verificar o campo Grupo de REP	
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Grupo de REP')]
	${CAMPO}      Set Variable  xpath=//td[@id='hidden_field_label_gruporep']
  sleep  2s
  Element Should Contain    ${LABEL}     Grupo de REP	
  Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_label_gruporep

 