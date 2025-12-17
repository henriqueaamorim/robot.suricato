*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Gateway

# SCREEN
Acessar Tela Gateway (Inclusão)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${SCREENNAME}  Set Variable  Gateway
      ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
  ELSE
      ${SCREENNAME}  Set Variable  Gateway (Inclusão)
      ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  ${APPNAME}  Set Variable  frmCentralGerenciamento
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Gateway (Atualização)
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Gateway
    ${ELEMENT}  Set Variable    xpath=//td[@class="scFormHeaderFont"][4]
  ELSE
    ${OBJ}         Set Variable  SCN
    ${SCREENNAME}  Set Variable  Gateway (Atualização)
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  
  ${APPNAME}  Set Variable  frmCentralGerenciamento

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
 

#BUTTON
#resource_btn.


#FIELD
Preencher o campo Código do Gateway "${COD}"
  Input Text  xpath=//*[@name="codigereaces"][@type="text"]  ${COD}

Preencher o campo Descrição "${DESCRICAO}"
  Input Text  xpath=//*[@name="desccent"][@type="text"]  ${DESCRICAO}

Preencher o campo Pasta do Gateway "${PATH}"
  Input Text  xpath=//*[@name="direserv"][@type="text"]  ${PATH}

Preencher o campo Pasta do Gateway 2 "${PASTA}"
  Input Text  xpath=//*[@name="direserv2"][@type="text"]  ${PASTA}

Preencher o campo Diretorio Aplicação Suricato "${PATH}"
  Input Text  xpath=//*[@name="pathappl"][@type="text"]  ${PATH}

Preencher o campo Unidade de Mapeamento "${UNI}"
  Input Text  xpath=//*[@name="unid"][@type="text"]  ${UNI}

Preencher o campo Senha de Usuário "${SENHA}"
  Input Text  xpath=//*[@name="senh"][@type="text"]  ${SENHA}

Preencher o campo Domínio "${DOMINIO}"
  Input Text  xpath=//*[@name="domi"][@type="text"]  ${DOMINIO}

Preencher o campo Usuário de Acesso "${USUARIO}"
  Input Text  xpath=//*[@name="usua"][@type="text"]  ${USUARIO}

Preencher o campo Pasta de Destino "${PASTA}"
  Input Text  xpath=//*[@name="locadesti"][@type="text"]  ${PASTA}

Preencher o campo Endereço IP "${IP}"
  Input Text  xpath=//*[@name="endip"][@type="text"]  ${IP}

#VERIFY

E verificar o campo Código
  #IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]/span[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/input
  #ELSE
  #END

  Element Should Contain  ${LABEL}  Código   
	Element Attribute Value Should Be  ${CAMPO}  name  codigereaces

E verificar o campo Descrição
  #IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input
  #ELSE
  #END 

  Element Should Contain  ${LABEL}  Descrição   
	Element Attribute Value Should Be  ${CAMPO}  name  desccent

E verificar o campo Diretório 
  #IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/input
  #ELSE
  #END

  Element Should Contain  ${LABEL}  Diretório     
	Element Attribute Value Should Be  ${CAMPO}  name  direserv

E verificar o campo Diretório 2
  #IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]/span
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/input
  #ELSE
  #END

  Element Should Contain  ${LABEL}  Diretório 2   
	Element Attribute Value Should Be  ${CAMPO}  name  direserv2

E verificar o campo Diretorio Aplicação Suricato 
  #IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]/span
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td[1]/span[2]/input
  #ELSE
  #END

  Element Should Contain  ${LABEL}  Diretorio Aplicação Suricato   
	Element Attribute Value Should Be  ${CAMPO}  name  pathappl

E verificar o campo Unidade de Mapeamento 
  #IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]/span
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/table/tbody/tr/td[1]/span[2]/input
  #ELSE
  #END

  Element Should Contain  ${LABEL}  Unidade de Mapeamento   
	Element Attribute Value Should Be  ${CAMPO}  name  unid

E verificar o campo Senha de Usuário 
  #IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]/span
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/table/tbody/tr/td[1]/span[2]/input
  #ELSE
  #END

  Element Should Contain  ${LABEL}  Senha de Usuário   
	Element Attribute Value Should Be  ${CAMPO}  name  senh

E verificar o campo Domínio
  #IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[1]/span
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/table/tbody/tr/td[1]/span[2]/input
  #ELSE
  #END

  Element Should Contain  ${LABEL}  Domínio   
	Element Attribute Value Should Be  ${CAMPO}  name  domi

E verificar o campo Usuário de Acesso 
  # IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[1]/span
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[2]/table/tbody/tr/td[1]/span[2]/input
  # ELSE
  # END

  Element Should Contain  ${LABEL}  Usuário de Acesso   
	Element Attribute Value Should Be  ${CAMPO}  name  usua

E verificar o campo Pasta de Destino 
  #IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[1]/span
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[2]/table/tbody/tr/td[1]/span[2]/input
  #ELSE
  #END

  Element Should Contain  ${LABEL}  Pasta de Destino    
	Element Attribute Value Should Be  ${CAMPO}  name  locadesti

E verificar o campo Endereço IP
  #IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[1]/span
  ${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[2]/table/tbody/tr/td[1]/span[2]/input
  #ELSE
  #END

  Element Should Contain  ${LABEL}  Endereço IP   
	Element Attribute Value Should Be  ${CAMPO}  name  endip