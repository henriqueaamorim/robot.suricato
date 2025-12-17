*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Créditos de Acessos 

# SCREEN
Acessar Tela: Créditos de Acessos
  ${OBJ}         Set Variable    SCN
  ${APPNAME}     Set Variable    ctrCreditoAcessos
  ${SCREENNAME}  Set Variable    Créditos de Acessos
  ${ELEMENT}     Set Variable     xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe""
  Mudar Frame Aplicação "nmsc_iframe_ctrCreditoAcessos_1"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

Acessar Tela: Pesquisa de Colaboradores
  ${OBJ}         Set Variable    SCN
  ${APPNAME}     Set Variable    ctrCreditoAcessos
  ${SCREENNAME}  Set Variable    Pesquisa de Colaboradores
  ${ELEMENT}     Set Variable     xpath=//h5[contains(text(),'${SCREENNAME}')]

  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
#BUTTON
#resource_btn.

Clicar na Aba: Crédito de Acesso
  ${AbaColab}   Set Variable   xpath=//a[contains(text(),'Crédito de Acesso')]
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${AbaColab}
  Click Element  ${AbaColab}

#VERIFY CAMPOS: Crédito de Acesso
Verificar o campo: Tipo
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Tipo')]
	${CAMPO1}      Set Variable  xpath=//input[@name='tipopessoa']
  ${CAMPO2}      Set Variable  xpath=//input[@name='tipopessoa']
	Element Should Contain             ${LABEL}   Tipo
 	Element Attribute Value Should Be  ${CAMPO1}   name  tipopessoa
    Element Attribute Value Should Be  ${CAMPO2}   name  tipopessoa

Verificar o campo: Quantidade de Crédito	
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Quantidade de Crédito')]
	${CAMPO}      Set Variable  xpath=//input[@name='creddiasfaix']
	Element Should Contain             ${LABEL}   Quantidade de Crédito	
 	Element Attribute Value Should Be  ${CAMPO}   name  creddiasfaix

Verificar o campo: Data Inicial	
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Data Inicial')]
	${CAMPO}      Set Variable  xpath=//input[@name='datainic']
	Element Should Contain             ${LABEL}   Data Inicial	
 	Element Attribute Value Should Be  ${CAMPO}   name  datainic

Verificar o campo: Data Final	
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Data Final')]
	${CAMPO}      Set Variable  xpath=//input[@name='datafim']
	Element Should Contain             ${LABEL}   Data Final	
 	Element Attribute Value Should Be  ${CAMPO}   name  datafim

Verificar o campo: Início da Faixa	
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Início da Faixa')]
	${CAMPO}      Set Variable  xpath=//input[@name='horainicsc9bugfixed']
	Element Should Contain             ${LABEL}   Início da Faixa	
 	Element Attribute Value Should Be  ${CAMPO}   name  horainicsc9bugfixed

Verificar o campo: Final da Faixa	
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Final da Faixa')]
	${CAMPO}      Set Variable  xpath=//input[@name='horafimsc9bugfixed']
	Element Should Contain             ${LABEL}   Final da Faixa	
 	Element Attribute Value Should Be  ${CAMPO}   name  horafimsc9bugfixed

Verificar o campo: Colaboradores selecionados	
	${LABEL}      Set Variable  xpath=//span[contains(text(),'Colaboradores selecionados')]
	Element Should Contain             ${LABEL}   Colaboradores selecionados

#VERIFY CAMPOS: Pesquisa de Colaboradores
Verificar o campo: Nome do Colaborador
  ${CAMPO}  Set Variable  xpath=//input[@name='nome']
  Element Attribute Value Should Be   ${CAMPO}  name  nome

Verificar o campo: Crachá
  ${CAMPO}  Set Variable  xpath=//input[@name='icard']
  Element Attribute Value Should Be   ${CAMPO}  name  icard  

Verificar o campo: Matrícula
  ${CAMPO}  Set Variable  xpath=//input[@name='codimatr']
  Element Attribute Value Should Be   ${CAMPO}  name  codimatr    

Verificar o campo: Tipo do Colaborador
  ${CAMPO}  Set Variable  xpath=//select[@id='colab_tipocola']
  Element Attribute Value Should Be   ${CAMPO}  id  colab_tipocola    

Verificar o campo: Empresa
  ${CAMPO}  Set Variable  xpath=//select[@id='colab_codiempr']
  Element Attribute Value Should Be   ${CAMPO}  id  colab_codiempr

Verificar o campo: Código da Filial
  ${CAMPO}  Set Variable  xpath=//select[@id='colab_codifilia']
  Element Attribute Value Should Be   ${CAMPO}  id  colab_codifilia  

Verificar o campo: Centro de custo
  ${CAMPO}  Set Variable  xpath=//select[@id='colab_codicentcusto']
  Element Attribute Value Should Be   ${CAMPO}  id  colab_codicentcusto 

Verificar o campo: Código da Escala
  ${CAMPO}  Set Variable  xpath=//select[@id='colab_codiesca']
  Element Attribute Value Should Be   ${CAMPO}  id  colab_codiesca  

Verificar o campo: Código do Organograma Local 
  ${CAMPO}  Set Variable  xpath=//select[@id='colab_codiorgaloca']
  Element Attribute Value Should Be   ${CAMPO}  id  colab_codiorgaloca  

Verificar o campo: Local 
  ${CAMPO}  Set Variable  xpath=//select[@id='colab_codiloca']
  Element Attribute Value Should Be   ${CAMPO}  id  colab_codiloca

Verificar o campo: Grupo de Cargos 
  ${CAMPO}  Set Variable  xpath=//select[@id='colab_codiestrutcargo']
  Element Attribute Value Should Be   ${CAMPO}  id  colab_codiestrutcargo

Verificar o campo: Código do Cargo 
  ${CAMPO}  Set Variable  xpath=//select[@id='colab_codicargo']
  Element Attribute Value Should Be   ${CAMPO}  id  colab_codicargo

Verificar o campo: Empresa Terceira 
  ${CAMPO}  Set Variable  xpath=//select[@id='colab_codiemprterc']
  Element Attribute Value Should Be   ${CAMPO}  id  colab_codiemprterc

Verificar o campo: Contrato
  ${CAMPO}  Set Variable  xpath=//select[@id='colab_codicontr']
  Element Attribute Value Should Be   ${CAMPO}  id  colab_codicontr 

Verificar o campo: External Key
  ${CAMPO}  Set Variable  xpath=//input[@name='chave_externa']
  Element Attribute Value Should Be   ${CAMPO}  name  chave_externa

Verificar o campo: Total de registros à exibir na consulta
  ${CAMPO}  Set Variable  xpath=//input[@name='contador']
  Element Attribute Value Should Be   ${CAMPO}  name  contador  	

          
