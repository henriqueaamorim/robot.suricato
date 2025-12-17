*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Grupo de Acesso Coletivo

# SCREEN
Acessar Tela Grupo de Acesso Coletivo
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  ctrPermissaoColetiva
  ${SCREENNAME}  Set Variable  Grupo de Acesso Coletivo
  IF	"${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247"
  ${ELEMENT}  Set Variable    xpath=//div[contains(text(),'${SCREENNAME}')]
  ELSE
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END

  sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"




#BUTTON
#resource_btn.


#VERIFY 

Selecionar box Permanente
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${ELEMENT}     Set Variable   xpath=//input[@id='id-opt-tipopermissao-1']
  ELSE
    ${ELEMENT}  Set Variable  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[2]/table/tbody/tr[2]/td/input
  END
  sleep  2
  Wait Until Element Is Visible    ${ELEMENT}
  Click Element    ${ELEMENT}


Selecionar box Temporária
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${ELEMENT}     Set Variable   xpath=//input[@id='id-opt-tipopermissao-2']
  ELSE
    ${ELEMENT}  Set Variable  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[2]/table/tbody/tr[2]/td/input
  END
  sleep  2
  Wait Until Element Is Visible    ${ELEMENT}
  Click Element    ${ELEMENT}  


E verificar o campo Tipo de Permissão	
	${LABEL}      Set Variable  xpath=//span[@id='id_label_tipopermissao']
	${CAMPO}      Set Variable  xpath=//input[@id='id-opt-tipopermissao-1']
	Element Should Contain             ${LABEL}    Tipo de Permissão	
 	Element Attribute Value Should Be  ${CAMPO}    id   id-opt-tipopermissao-1

E verificar a label: Permanente
	${LABEL}     Set Variable   xpath=//label[contains(text(),'Permanente')]
	sleep  2s
    Element Should Contain               ${LABEL}   Permanente

E verificar a label: Temporária
	${LABEL}     Set Variable   xpath=//label[contains(text(),'Temporária')]
	sleep  2s
    Element Should Contain               ${LABEL}   Temporária


E verificar o campo Tipo de Acesso
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td[1]/span[2]/span/select
	Element Attribute Value Should Be  ${CAMPO}  name  tipopermissao
	

E verificar a label Novo Código de Acesso 
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Novo Código de Acesso
	
E verificar o campo Grupo de Acesso - Normal (Temporária)
    ${LABEL}  Set Variable  xpath=(//span[contains(text(),'Grupo de Acesso - Normal')])[2]
	${CAMPO}  Set Variable  xpath=//span[@id='select2-id_sc_field_tempcodiperm-container']
	Element Should Contain  ${LABEL}     Grupo de Acesso - Normal
	Element Attribute Value Should Be  ${CAMPO}   id   select2-id_sc_field_tempcodiperm-container

E verificar o campo Grupo de Acesso - Normal (Permanente)
    ${LABEL}  Set Variable  xpath=(//span[contains(text(),'Grupo de Acesso - Normal')])[1]
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_codipermnormal_obj']
	Element Should Contain  ${LABEL}     Grupo de Acesso - Normal
	Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single css_codipermnormal_obj

E verificar o campo Início
	${LABEL}  Set Variable  xpath=(//span[contains(text(),'Início')])[1]
	${CAMPO}  Set Variable  xpath=//input[@name='tempinicio']
	Element Should Contain  ${LABEL}    Início
	Element Attribute Value Should Be  ${CAMPO}    name   tempinicio


E verificar o campo Término
	${LABEL}  Set Variable  xpath=(//span[contains(text(),'Término')])[1]
	${CAMPO}  Set Variable  xpath=//input[@name='temptermino']
	Element Should Contain  ${LABEL}    Término
	Element Attribute Value Should Be  ${CAMPO}    name   temptermino

E verificar o campo Grupo de Acesso - Sábado
    ${LABEL}  Set Variable  xpath=(//span[contains(text(),'Grupo de Acesso - Sábado')])[1]
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_codipermsabado_obj']
	Element Should Contain  ${LABEL}  Grupo de Acesso - Sábado
	Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single css_codipermsabado_obj
	
E verificar o campo Grupo de Acesso - Feriado 
  ${LABEL}  Set Variable  xpath=//span[contains(text(),'Grupo de Acesso - Feriado')]
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_codipermferiado_obj']
	Element Should Contain  ${LABEL}  Grupo de Acesso - Feriado 
	Element Attribute Value Should Be  ${CAMPO}  class  select2-selection select2-selection--single css_codipermferiado_obj

E verificar o campo Grupo de Acesso - Domingo 
  ${LABEL}  Set Variable  xpath=//span[contains(text(),'Grupo de Acesso - Domingo')]
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_codipermdomingo_obj']
	Element Should Contain  ${LABEL}  Grupo de Acesso - Domingo 
	Element Attribute Value Should Be   ${CAMPO}   class  select2-selection select2-selection--single css_codipermdomingo_obj

E verificar o campo Empresa       
    ${LABEL}  Set Variable  xpath=//span[contains(text(),'Empresa')]
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_codiempr_obj']
	Element Should Contain  ${LABEL}  Empresa
	Element Attribute Value Should Be   ${CAMPO}   class  select2-selection select2-selection--single css_codiempr_obj


E verificar o campo Tipo de Colaborador    
    ${LABEL}   Set Variable  xpath=//span[contains(text(),'Tipo de Colaborador')]
	${CAMPO1}  Set Variable  xpath=//input[@id='id-opt-tipocola-0']
	${LABEL1}  Set Variable  xpath=//label[contains(text(,'Empregado'))]
	${CAMPO2}  Set Variable  xpath=//input[@id='id-opt-tipocola-1']
	${LABEL2}  Set Variable  xpath=//label[contains(text(,'Terceiro'))]
	${CAMPO3}  Set Variable  xpath=//input[@id='id-opt-tipocola-2']
	${LABEL3}  Set Variable  xpath=//label[contains(text(,'Parceiro'))]
	
	Element Should Contain  ${LABEL}  Tipo de Colaborador
	Element Attribute Value Should Be  ${CAMPO1}  value  1  
	Element Attribute Value Should Be  ${CAMPO2}  value  2  
	Element Attribute Value Should Be  ${CAMPO3}  value  3  
	

E verificar o campo Colaborador Responsável 
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[6]/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}  Colaborador Responsável 
	Element Attribute Value Should Be  ${CAMPO}  name  edidcolab
	

E verificar o campo Colaboradores   
    ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[7]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table[7]/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}  Colaboradores
	Element Attribute Value Should Be  ${CAMPO}  name  edcolaboradores


E verificar o campo Filial       
  ${LABEL}  Set Variable  xpath=//span[contains(text(),'Filial')]
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_codifili_obj']
	Element Should Contain  ${LABEL}  Filial
	Element Attribute Value Should Be   ${CAMPO}   class  select2-selection select2-selection--single css_codifili_obj

E verificar o campo Organograma
	${LABEL}   Set Variable   xpath=//span[contains(text(),'Organograma')]	
	${CAMPO}   Set Variable   xpath=//span[@class='select2-selection select2-selection--single css_codiorgaloca_obj']
	Element Should Contain   ${LABEL}   Organograma
	Element Attribute Value Should Be   ${CAMPO}   class  select2-selection select2-selection--single css_codiorgaloca_obj
	

E verificar o campo Local      
    ${LABEL}   Set Variable  xpath=//span[contains(text(),'Local')]	
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_locaorga_obj']	
	Element Should Contain  ${LABEL}  Local
	Element Attribute Value Should Be   ${CAMPO}   class  select2-selection select2-selection--single css_locaorga_obj

E verificar o campo Situação 
    ${LABEL}  Set Variable  xpath=//span[contains(text(),'Situação')]	
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_codisitu_obj']	
	Element Should Contain  ${LABEL}  Situação
	Element Attribute Value Should Be   ${CAMPO}   class  select2-selection select2-selection--single css_codisitu_obj
	
E verficar o campo Grupo de Cargo	
	${LABEL}  Set Variable   xpath=//span[@id='id_label_codiestrcarg']
	${CAMPO}  Set Variable   xpath=//span[@class='select2-selection select2-selection--single css_codiestrcarg_obj']
	Element Should COntain   ${LABEL}   Grupo de Cargo	
	Element Attribute Value Should Be   ${CAMPO}   class  select2-selection select2-selection--single css_codiestrcarg_obj

E verificar o campo Cargo            
    ${LABEL}   Set Variable  xpath=//span[contains(text(),'Cargo')]	
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_codicarg_obj']
	Element Should Contain  ${LABEL}  Cargo
	Element Attribute Value Should Be   ${CAMPO}   class  select2-selection select2-selection--single css_codicarg_obj

E verificar o campo Grupo de Cargo	            
    ${LABEL}   Set Variable  xpath=//span[contains(text(),'Grupo de Cargo')]	
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_codiestrcarg_obj']
	Element Should Contain  ${LABEL}    Grupo de Cargo
	Element Attribute Value Should Be   ${CAMPO}   class  select2-selection select2-selection--single css_codiestrcarg_obj
	
E verificar o campo Grupo de Acesso  
    ${LABEL}  Set Variable  xpath=(//span[contains(text(),'Grupo de Acesso')])[6]	
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_codiperm_obj']
	Element Should Contain  ${LABEL}    Grupo de Acesso
	Element Attribute Value Should Be   ${CAMPO}   class  select2-selection select2-selection--single css_codiperm_obj
	
#FIELD
Selecionar uma opção no campo Grupo de Acesso - Normal "${NORMAL}"
	Select From List By Label  xpath=//*[@name="edcodipermnormal"]  ${NORMAL}

Selecionar uma opção no campo Grupo de Acesso - Sábado "${SABADO}"
	Select From List By Label  xpath=//*[@name="edcodipermsabado"]  ${SABADO}

Selecionar uma opção no campo Grupo de Acesso - Feriado "${FERIADO}"
	Select From List By Label  xpath=//*[@name="edcodipermferiado"]  ${FERIADO}

Selecionar uma opção no campo Grupo de Acesso - Domingo "${DOMINGO}"
	Select From List By Label  xpath=//*[@name="edcodipermdomingo"]  ${DOMINGO}

Preencher o campo Empresa "${EMPRESA}"
	Input Text  xpath=//*[@name="edcodiempr"][@type="text"]  ${EMPRESA}
	
Selecionar uma opção no campo Tipo do Colaborador "${TIPO}"
	IF  "${TIPO}" == "Empregado"
		Click Element  xpath=//*[@name="edtipocola[]"][@value="1"]
	
	ELSE IF  "${TIPO}" == "Terceiro"
		Click Element  xpath=//*[@name="edtipocola[]"][@value="2"]
	
	ELSE IF  "${TIPO}" == "Parceiro"
		Click Element  xpath=//*[@name="edtipocola[]"][@value="3"]
	END

Preencher o campo Colaborador Responsável "${COLAB}"
	Input Text  xpath=//*[@name="edidcolab"][@type="text"]  ${COLAB}

Preencher o campo Colaboradores "${COLAB}"
	Input Text  xpath=//*[@name="edcolaboradores"][@type="text"]  ${COLAB}

Selecionar uma opção no campo Filial "${FILIAL}"
	Select From List By Label  xpath=//*[@name="edcodifili[]"]  ${FILIAL}

Selecionar uma opção no campo Local "${LOCAL}"
	Select From List By Label  xpath=//*[@name="edcodiorgaloca"]  ${LOCAL}

Selecionar uma opção no campo Situação "${SITUACAO}"
	Select From List By Label  xpath=//*[@name="edcodisitu[]"]  ${SITUACAO}

Selecionar uma opção no campo Cargo "${CARGO}"
	Select From List By Label  xpath=//*[@name="edcodiestrcarg"]  ${CARGO}

Selecionar uma opção no campo Grupo de Acesso "${GRUPO}"
	Select From List By Label  xpath=//*[@name="edcodiperm[]"]  ${GRUPO}