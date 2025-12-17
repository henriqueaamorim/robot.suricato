*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Baixa de Crachá

# SCREEN
Acessar Tela Baixa de Crachá Titular/Provisório (Edição)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  frmbaixacracha
  ${SCREENNAME}  Set Variable  Baixa de Crachá Titular
  ${ELEMENT}  Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]
 
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
 
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.

#VERIFY

Verificar o campo: Crachá
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_icard']
  ${VALOR}  Set Variable  xpath=//td[@class='scFormDataFontOdd css_icard_line']

  Element Should Contain    ${LABEL}  Crachá
  Element Attribute Value Should Be   ${VALOR}  class   scFormDataFontOdd css_icard_line

Verificar o campo: Código do Colaborador *	
  ${LABEL}  Set Variable  xpath=//span[@id='id_label_idcolab']
  ${VALOR}  Set Variable  xpath=//td[@id='hidden_field_data_idcolab']

  Element Should Contain    ${LABEL}  Código do Colaborador
  Element Attribute Value Should Be  ${VALOR}  id  hidden_field_data_idcolab

Verificar o campo: Empresa	
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padnumemp']
  ${VALOR}  Set Variable  xpath=//td[@id='hidden_field_data_padnumemp']

  Element Should Contain    ${LABEL}  Empresa
  Element Attribute Value Should Be  ${VALOR}  id  hidden_field_data_padnumemp  

Verificar o campo: Tipo	
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padtipcol']
  ${VALOR}  Set Variable  xpath=//td[@id='hidden_field_data_padtipcol']

  Element Should Contain    ${LABEL}  Tipo
  Element Attribute Value Should Be  ${VALOR}  id  hidden_field_data_padtipcol    

Verificar o campo: Matrícula	
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padnumcad']
  ${VALOR}  Set Variable  xpath=//td[@id='hidden_field_data_padnumcad']

  Element Should Contain    ${LABEL}  Matrícula
  Element Attribute Value Should Be  ${VALOR}  id  hidden_field_data_padnumcad      

Verificar o campo: Nome	
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padnome']
  ${VALOR}  Set Variable  xpath=//td[@id='hidden_field_data_padnome']

  Element Should Contain    ${LABEL}  Nome
  Element Attribute Value Should Be  ${VALOR}  id  hidden_field_data_padnome       

Verificar o campo: Data de Início *		
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_datainic']
  ${VALOR}  Set Variable  xpath=//td[@id='hidden_field_data_datainic']

  Element Should Contain    ${LABEL}  Data de Início *	
  Element Attribute Value Should Be  ${VALOR}  id  hidden_field_data_datainic   

Verificar o campo: Hora de Início *			
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_horainic']
  ${VALOR}  Set Variable  xpath=//td[@id='hidden_field_data_horainic']

  Element Should Contain    ${LABEL}  Hora de Início *		
  Element Attribute Value Should Be  ${VALOR}  id  hidden_field_data_horainic       

Verificar o campo: Data de Término *				
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_datafina']
  ${VALOR}  Set Variable  xpath=//input[@id='id_sc_field_datafina']

  Element Should Contain    ${LABEL}  Data de Término *		
  Element Attribute Value Should Be  ${VALOR}  id  id_sc_field_datafina    

Verificar o campo: Hora de Término *					
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_horafina']
  ${VALOR}  Set Variable  xpath=//input[@id='id_sc_field_horafina']

  Element Should Contain    ${LABEL}  Hora de Término *			
  Element Attribute Value Should Be  ${VALOR}  id  id_sc_field_horafina      

#
Preencher o campo: Data de Término * "${DATA}"	
  Input Text  xpath=//input[@id='id_sc_field_datafina']   ${DATA}

Preencher o campo: Hora de Término * "${HORA}"	
  Input Text  xpath=//input[@id='id_sc_field_horafina']   ${HORA}  