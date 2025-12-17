*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Estacionamento | Cadastro de Estacionamentos

# SCREEN
Acessar Tela Cadastro de Estacionamento
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Estacionamento
  ${APPNAME}  Set Variable  frmEstacionamento
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
  ELSE
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Descrição do Estacionamento "${DESCRICAO}"
  Input Text  xpath=//*[@name="estadesc"][@type="text"]  ${DESCRICAO}

Preencher o campo Quantidade de Vagas Fixas "${VAGAS_FIX}"
  Input Text  xpath=//*[@name="vagafixa"][@type="text"]  ${VAGAS_FIX}

Preencher o campo Quantidade de Vagas Rotativas "${VAGAS_ROT}"
  Input Text  xpath=//*[@name="vagarota"][@type="text"]  ${VAGAS_ROT}

Selecionar uma Planta no campo Planta "${Descrição}"
  Select From List By Label  xpath=//*[@name="codiplan"]  ${Descrição}   

Selecionar um Codin no campo Codins
  ${CODIN}  Set Variable   xpath=//*[@id="id_sc_field_estaccodins"]/option[1]
  ${SETA}   Set Variable   xpath=//a[@title="Campo Mover para a direita"]
  
  Click Element   ${CODIN}
  Click Element   ${SETA}


#VERIFY 

E verificar o campo Descrição do Estacionamento 
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 																			
    ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]/span
    ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/input
    Element Should Contain  ${LABEL}  Descrição
  ELSE
    ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
    ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input
	  Element Should Contain  ${LABEL}  Descrição do Estacionamento 
  END

	Element Attribute Value Should Be  ${CAMPO}  name  estadesc

E verificar o campo Quantidade de Vagas Fixas 
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span
    ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input

    Element Should Contain  ${LABEL}  Vagas Fixas
  ELSE
    ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
	
	  Element Should Contain  ${LABEL}  Quantidade de Vagas Fixas  
	END
  
  Element Attribute Value Should Be  ${CAMPO}  name  vagafixa

E verificar o campo Quantidade de Vagas Rotativas 
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span
    ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/input

    Element Should Contain  ${LABEL}  Vagas Rotativas
  ELSE
    ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input
	  
    Element Should Contain  ${LABEL}  Quantidade de Vagas Rotativas 
	END
	
  Element Attribute Value Should Be  ${CAMPO}  name  vagarota

E verificar o campo Planta 
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[1]/span
    ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
  ELSE
    ${LABEL}  Set Variable  xpath=
    ${CAMPO}  Set Variable  xpath=
  END

  Element Should Contain  ${LABEL}  Planta
  Element Attribute Value Should Be  ${CAMPO}  name  codiplan

E verificar o campo Permite Utilização das Vagas Rotativas  
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]/span
    ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
  ELSE
    ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[2]/select
	END

  Element Should Contain  ${LABEL}  Permite Utilização das Vagas Rotativas
	Element Attribute Value Should Be  ${CAMPO}  name  permfixo

E verificar o campo Codins 
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
   ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[1]/span
   ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[2]/table/tbody/tr/td[1]/span[2]/table/tbody/tr/td[1]/span/select
   #${CAMPO2}  Set Variable xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[2]/table/tbody/tr/td[1]/span[2]/table/tbody/tr/td[3]/select
  ELSE
   ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	 ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td[1]/select
   ${CAMPO2}  Set Variable xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td[3]/select
  END
  
	Element Should Contain  ${LABEL}  Codins   
	Element Attribute Value Should Be  ${CAMPO}  name  estaccodins_orig
  #Element Attribute Value Should Be  ${CAMPO2}  name  estaccodins_dest

E verificar o campo Ajustar Quantidade de Vagas do Contador (0ffline)
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[7]/td[1]/span
    ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[7]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
  ELSE
    ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[2]/select
	END
  
  Element Should Contain  ${LABEL}  Ajustar Quantidade de Vagas do Contador (Offline)
	Element Attribute Value Should Be  ${CAMPO}  name  ajustacont
