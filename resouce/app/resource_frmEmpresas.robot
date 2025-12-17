*** Settings ***
Library         SeleniumLibrary
Library         ../../api/data/client/company.py
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Cadastro de Empresa

# SCREEN
Acessar Tela Empresas (Atualização)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Empresa
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'Empresa')]
    Mudar Frame Aplicação "mnu_iframe"
  ELSE
    ${SCREENNAME}  Set Variable  Empresas (Atualização)
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
    Mudar Frame Aplicação "nmsc_iframe_liga_frmEmpresasOrganograma"
  END
  ${APPNAME}  Set Variable  frmEmpresas



  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Empresas (Inclusão)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Empresas
    ${ELEMENT}  Set Variable    xpath=//td[@class="scFormHeaderFont"][4]
  ELSE
    ${SCREENNAME}  Set Variable  Empresas (Inclusão)
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END

  ${APPNAME}  Set Variable  frmEmpresas
  
  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_liga_frmEmpresasOrganograma"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON

Clicar no texto "Logo Não Disponível."
  Click Element  xpath=//*[@id="id_ajax_label_foto"]/a

Clicar na imagem no campo Foto
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Sleep  2s
    Click Element  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/div[3]/table/tbody/tr[5]/td[2]/table/tbody/tr/td[1]/span/table/tbody/tr/td/a/img
  ELSE
    Click Element  xpath=//*[@id="id_ajax_label_foto"]/table/tbody/tr/td/img
  END

#FIELDS

Preencher o Campo CNPJ ${CNPJ}
  ${ELEMENT}  Set Variable  name=emprcnpj

  IF  '${CNPJ}' == 'API'
    ${CNPJ}  Run Keyword   CNPJ
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${CNPJ}

Preencher o Campo Nome ${NOME}
  ${ELEMENT}  Set Variable  name=nomeempr
  
  IF  '${NOME}' == 'API'
    ${NOME}  Run Keyword  Nome  formatted=True
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${NOME}

Preencher o Campo Fantasia ${FANTASIA}
  
  ${ELEMENT}  Set Variable  name=apelempr

  IF  '${FANTASIA}' == 'API'
    ${FANTASIA}  Run Keyword  Cidade
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${FANTASIA}

Preencher o Campo Telefone ${TELEFONE}

  ${ELEMENT}  Set Variable  name=numetele
  
  IF  '${TELEFONE}' == 'API'
    ${TELEFONE}  Run Keyword  Celular
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${TELEFONE}

Preencher o Campo Fax ${FAX}

  ${ELEMENT}  Set Variable  name=numefax
  
  IF  '${FAX}' == 'API'
    ${FAX}  Run Keyword  Telefone
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${FAX}

Preencher o Campo Home Page ${HOMEPAGE}

  ${ELEMENT}  Set Variable  name=homepage
  
  IF  '${HOMEPAGE}' == 'API'
    ${HOMEPAGE}  Run Keyword  Website
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${HOMEPAGE}


#VERIFY

Verificar a label Código da Empresa
	${LABEL}   Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/div[3]/table/tbody/tr[1]/td[3]/span
	Element Should Contain  ${LABEL}   Código da Empresa

Verificar o campo CNPJ  
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL_CNPJ}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/div[3]/table/tbody/tr[2]/td[1]/span
    ${CAMPO_CNPJ}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/div[3]/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input
  ELSE
    ${LABEL_CNPJ}  Set Variable  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[1]
    ${CAMPO_CNPJ}  Set Variable  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[2]/input
  END
  Element Should Contain  ${LABEL_CNPJ}  CNPJ
  Element Attribute Value Should Be  ${CAMPO_CNPJ}  name  emprcnpj

Verificar o campo Nome*   
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL_NOME}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/div[3]/table/tbody/tr[2]/td[3]/span[1]
    ${CAMPO_NOME}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/div[3]/table/tbody/tr[2]/td[4]/table/tbody/tr/td[1]/span[2]/input
  ELSE
    ${LABEL_NOME}  Set Variable  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[3]/td[1]
    ${CAMPO_NOME}  Set Variable  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[3]/td[2]/input
  END
  Element Text Should Be  ${LABEL_NOME}  Nome 
  Element Attribute Value Should Be  ${CAMPO_NOME}  name  nomeempr
  

Verificar o campo Nome Fantasia *
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL_NOMEF}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/div[3]/table/tbody/tr[3]/td[1]/span[1]
    ${CAMPO_NOMEF}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/div[3]/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/input
  ELSE
    ${LABEL_NOMEF}  Set Variable  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[4]/td[1]
    ${CAMPO_NOMEF}  Set Variable  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[4]/td[2]/input
  END
  Element Text Should Be  ${LABEL_NOMEF}  Nome Fantasia
  Element Attribute Value Should Be  ${CAMPO_NOMEF}  name  apelempr


Verificar o campo Telefone  
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL_TEL}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/div[3]/table/tbody/tr[3]/td[3]/span
    ${CAMPO_TEL}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/div[3]/table/tbody/tr[3]/td[4]/table/tbody/tr/td[1]/span[2]/input
  ELSE
    ${LABEL_TEL}  Set Variable  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[5]/td[1]
    ${CAMPO_TEL}  Set Variable  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[5]/td[2]/input
  END
  Element Text Should Be  ${LABEL_TEL}  Telefone
  Element Attribute Value Should Be  ${CAMPO_TEL}  name  numetele
      

Verificar o campo Fax    
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL_FAX}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/div[3]/table/tbody/tr[4]/td[1]/span
    ${CAMPO_FAX}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/div[3]/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/input
  ELSE 
    ${LABEL_FAX}  Set Variable  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[6]/td[1]   
    ${CAMPO_FAX}  Set Variable  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[6]/td[2]/input  
  END
  Element Text Should Be  ${LABEL_FAX}  Fax 
  Element Attribute Value Should Be  ${CAMPO_FAX}  name  numefax
    

Verificar o campo Home Page 
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL_HP}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/div[3]/table/tbody/tr[4]/td[3]/span
    ${CAMPO_HP}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/div[3]/table/tbody/tr[4]/td[4]/table/tbody/tr/td[1]/span[2]/input
  ELSE
    ${LABEL_HP}  Set Variable  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[7]/td[1]
    ${CAMPO_HP}  Set Variable  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[7]/td[2]/input
  END
  Element Text Should Be  ${LABEL_HP}  Home Page
  Element Attribute Value Should Be  ${CAMPO_HP}  name  homepage


Verificar a label Foto
  ${LABEL}   Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/div[3]/table/tbody/tr[5]/td[1]/span
	Element Should Contain  ${LABEL}   Foto
