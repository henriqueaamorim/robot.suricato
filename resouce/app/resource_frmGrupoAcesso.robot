*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Grupo de Acessos

# SCREEN
Acessar Tela Grupo de Acesso
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Grupo de Acesso
  ${APPNAME}  Set Variable  frmGrupoAcesso
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[4]

  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Grupo de Acesso - Cadastro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Grupo de Acesso
  ${APPNAME}  Set Variable  frmGrupoAcesso
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[4]

  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"



#BUTTON



#FIELD
Preencher o campo Código do Grupo de Acesso "${CODIGO}"
  Input Text  xpath=//*[@name="codiperm"][@type="text"]  ${CODIGO}

Preencher o campo Descrição do Grupo de Acesso "${DESCRICAO}"
  Input Text  xpath=//*[@name="descperm"][@type="text"]  ${DESCRICAO}

Clicar na opção "Sim" no campo Grupo Acesso Tipo Veículo
  Click Element  xpath=//*[@id="idAjaxCheckbox_tipoacesveic"]/table/tbody/tr/td/input

Clicar na opção "Sim" no campo Grupo Acesso Alfandegado
  Click Element  xpath=//*[@id="idAjaxCheckbox_tipoacesalfa"]/table/tbody/tr/td/input


#VERIFY 

E verificar o campo Código do Grupo de Acesso 
  ${LABEL}  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[1]/table/tbody/tr/td[1]/span[1]/span[1]
	
	Element Should Contain  ${LABEL}  Código do Grupo de Acesso
	
E verificar o campo Descrição do Grupo de Acesso 
  ${LABEL}  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[2]/table/tbody/tr/td[1]/span[1]/span[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[2]/table/tbody/tr/td[1]/span[3]/input
	
	Element Should Contain  ${LABEL}  Descrição do Grupo de Acesso
	Element Attribute Value Should Be  ${CAMPO}  name  descperm

E verificar o campo Tipo de Grupo de Acesso 
  ${LABEL}  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[3]/table/tbody/tr/td[1]/span[1]/span
	${CAMPO}  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[3]/table/tbody/tr/td[1]/span[3]/span/select
	
	Element Should Contain  ${LABEL}   Tipo de Grupo de Acesso
	Element Attribute Value Should Be  ${CAMPO}  name  tipoacaoperm
 
E verificar o campo Grupo Acesso Tipo Veículo 
  ${LABEL}  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[4]/table/tbody/tr/td[1]/span[1]/span
	${CAMPO}  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[4]/table/tbody/tr/td[1]/span[3]/div/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}  Grupo Acesso Tipo Veículo
	Element Attribute Value Should Be  ${CAMPO}  name  tipoacesveic[]

E verificar o campo Cód. Planta 
  Mudar Frame Aplicação "ifNovo"

  ${LABEL}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr[1]/td/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr[1]/td/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr/td[1]/input[1]
	
	Element Should Contain  ${LABEL}   Cód. Planta
	Element Attribute Value Should Be  ${CAMPO}  name  codiplan

E verificar o campo Planta 
  ${LABEL}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr[1]/td/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr/td[2]
	${CAMPO}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr[1]/td/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr/td[2]/select
	
	Element Should Contain  ${LABEL}  Planta
	Element Attribute Value Should Be  ${CAMPO}  name  descplan[]

E verificar o campo Cód.Codin 
  ${LABEL}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr[1]/td/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr/td[3]
	${CAMPO}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr[1]/td/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr/td[3]/input[1]
	
	Element Should Contain  ${LABEL}   Cód. Codin
	Element Attribute Value Should Be  ${CAMPO}  name  codicole

E verificar o campo Codin    
  ${LABEL}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr[1]/td/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr/td[4]
	${CAMPO}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr[1]/td/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr/td[4]/input[1]
	
	Element Should Contain  ${LABEL}   Codin
	Element Attribute Value Should Be  ${CAMPO}  name  desccole
 
E verificar o campo Endereço IP    
  ${LABEL}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr[1]/td/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr/td[5]
	${CAMPO}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr[1]/td/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr/td[5]/input
	
	Element Should Contain  ${LABEL}   Endereço IP
	Element Attribute Value Should Be  ${CAMPO}  name  numeendecole

E verificar a label Incluir 
  Mudar Frame Aplicação "nmsc_iframe_consIncluirCodinGrupoAcesso"
  ${LABEL}  Set Variable  xpath=/html/body/table/tbody/tr[1]/td/table/tbody/tr[2]/td/table/tbody/tr[1]/td[1]/font/b
	
	Element Should Contain  ${LABEL}  Incluir
	

E verificar a label Planta   
  ${LABEL}  Set Variable  xpath=/html/body/table/tbody/tr[1]/td/table/tbody/tr[2]/td/table/tbody/tr[1]/td[2]
	
	Element Should Contain  ${LABEL}  Planta 
	

E verificar a label Codin          
  ${LABEL}  Set Variable  xpath=/html/body/table/tbody/tr[1]/td/table/tbody/tr[2]/td/table/tbody/tr[1]/td[3]

	Element Should Contain  ${LABEL}  Codin
	

E verificar a label Endereço IP     
  ${LABEL}  Set Variable  xpath=/html/body/table/tbody/tr[1]/td/table/tbody/tr[2]/td/table/tbody/tr[1]/td[4]
	
	Element Should Contain  ${LABEL}   Endereço IP

E verificar o segundo campo Cód. Planta 
  Unselect Frame 
  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "ifEdit"  

  ${LABEL}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr[1]/td/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr[1]/td/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr/td[1]/input[1]

	Element Should Contain  ${LABEL}   Cód. Planta
	Element Attribute Value Should Be  ${CAMPO}  name  codiplan

E verificar o segundo campo Planta 
  ${LABEL}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr[1]/td/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr/td[2]
	${CAMPO}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr[1]/td/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr/td[2]/select

	Element Should Contain  ${LABEL}  Planta
	Element Attribute Value Should Be  ${CAMPO}  name  descplan[]

E verificar o segundo campo Cód.Codin 
  ${LABEL}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr[1]/td/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr/td[3]
	${CAMPO}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr[1]/td/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr/td[3]/input[1]

	Element Should Contain  ${LABEL}   Cód. Codin
	Element Attribute Value Should Be  ${CAMPO}  name  codicole
  
E verificar o segundo campo Codin    
  ${LABEL}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr[1]/td/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr/td[4]
	${CAMPO}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr[1]/td/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr/td[4]/input[1]

	Element Should Contain  ${LABEL}   Codin
  Element Attribute Value Should Be  ${CAMPO}  name  desccole

E verificar o segundo campo Endereço IP    
  ${LABEL}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr[1]/td/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr/td[5]
  ${CAMPO}  Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr[1]/td/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr/td[5]/input

	Element Should Contain  ${LABEL}   Endereço IP 
  Element Attribute Value Should Be  ${CAMPO}  name  numeendecole

E verificar a segunda label Excluir 
  Mudar Frame Aplicação "nmsc_iframe_consEditarCodinGrupoAcesso"
  ${LABEL}  Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td[2]/table/tbody/tr[1]/td[1]
	
	Element Should Contain  ${LABEL}  Excluir 
	

E verificar a segunda label Planta   
  ${LABEL}  Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td[2]/table/tbody/tr[1]/td[2]
	
	Element Should Contain  ${LABEL}  Planta 
	

E verificar a segunda label Codin          
  ${LABEL}  Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td[2]/table/tbody/tr[1]/td[3]
	
	Element Should Contain  ${LABEL}  Codin
	

E verificar a segunda label Endereço IP  
  ${LABEL}  Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td[2]/table/tbody/tr[1]/td[4]
	
	Element Should Contain  ${LABEL}  Endereço IP
	

E verificar a segunda label Faixa Acesso 
  ${LABEL}  Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td[2]/table/tbody/tr[1]/td[5]
	
	Element Should Contain  ${LABEL}  Faixa Acesso
	