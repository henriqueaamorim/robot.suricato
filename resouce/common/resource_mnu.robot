*** Settings ***
Library  SeleniumLibrary
Library  ../../superutil/Custom.py
Resource  ../resource_login.robot

*** Variables ***
${MNU_OBJ}     Mnu
${MNU_TIMER}   2s
${MNU_CLICK}  xpath=//*[@class="sc-layer-1"]  

*** Keywords ***

Clicar No Menu Estrutura | Empresa | Organograma
## 249
  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Empresa
  ${NOME_3}  Set Variable  Organograma

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]


  

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element     ${MENU_3}
  Click Element  ${MENU_3}  #action_chain=True
  # Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Empresa | Local | Organograma 
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Empresa"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Local"]
    ${MENU_4}  Set Variable  xpath=//*[@title="Organograma"]
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Empresa
    ${NOME_3}  Set Variable  Organograma

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  END

  
  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element     ${MENU_3}
  Click Element  ${MENU_3}
  
  Sleep  ${MNU_TIMER}  #action_chain=True

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}

  # Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Empresa | Cadastro de Empresa 
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable   xpath=//a[@title='Estrutura'] | //a[@id='1']
    ${MENU_2}  Set Variable   xpath=(//a[@title='Empresa'])[1] | //a[@id='12'] 
    ${MENU_3}  Set Variable   xpath=(//a[@title='Empresa'])[2] | //a[@id='21'] 
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Empresa
    ${NOME_3}  Set Variable  Cadastro de Empresa

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Empresa | Cargo
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Empresa"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Cargo"]
    ${MENU_4}  Set Variable  xpath=//a[@id='578']
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Empresa
    ${NOME_3}  Set Variable  Cargo

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Empresa | Cargo | Grupo de Cargo
  ${MENU_1}  Set Variable  xpath=//a[@id='1'] | //a[@title='Estrutura']
  ${MENU_2}  Set Variable  xpath=//a[@id='12'] | //a[@title='Empresa']
  ${MENU_3}  Set Variable  xpath=//a[@id='395'] | //a[@title='Cargo']
  ${MENU_4}  Set Variable  xpath=//a[@id='389'] | //a[@title='Grupo de Cargo']

  #${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  #${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  #${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  #${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]



  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}

# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Empresa | Cargo | Cargo
   ${MENU_1}  Set Variable   xpath=//*[@title="Estrutura"]
   ${MENU_2}  Set Variable   xpath=//*[@title="Empresa"]
   ${MENU_3}  Set Variable   xpath=(//*[@title="Cargo"])[1]
   ${MENU_4}  Set Variable   xpath=(//*[@title="Cargo"])[2] | //*[@id="22"]

  #${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  #${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  #${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  #${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]



  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}

# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Empresa | Escala | Cadastro de Escala
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Empresa"]
    ${MENU_3}  Set Variable  xpath=(//*[@title="Escala"])[1]
    ${MENU_4}  Set Variable  xpath=(//*[@title="Escala"])[2] | //a[@id="30"]
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Empresa
    ${NOME_3}  Set Variable  Escala
    ${NOME_4}  Set Variable  Cadastro de Escala

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  END


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element     ${MENU_1}
  Click Element  ${MENU_1}
  

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Empresa | Escala | Horário de Escala
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=//a[@title="Empresa"]
    ${MENU_3}  Set Variable  xpath=//a[@title="Escala"]
    ${MENU_4}  Set Variable  xpath=//a[@title="Horário de Escala"]
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Empresa
    ${NOME_3}  Set Variable  Escala
    ${NOME_4}  Set Variable  Horário de Escala

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END


Clicar No Menu Estrutura | Empresa | Centro de Custo
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Empresa"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Centro de Custo"]
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Empresa
    ${NOME_3}  Set Variable  Centro de Custo

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END


Clicar No Menu Estrutura | Empresa | Filial
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Empresa"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Filial"]
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Empresa
    ${NOME_3}  Set Variable  Filial

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Empresa | Formulário de Cadastro de Tipo de Usuário
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Empresa"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Formulário de Cadastro de Tipo de Usuário"]

  ELSE

    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Empresa
    ${NOME_3}  Set Variable  Formulário de Cadastro de Tipo de Usuário

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
 # Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END


Clicar No Menu Estrutura | Empresa | Area de Risco | Cadastro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Empresa"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Area de Risco"]
    ${MENU_4}  Set Variable  xpath=//*[@title="Área de Risco"]
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Empresa
    ${NOME_3}  Set Variable  Area de Risco
    ${NOME_4}  Set Variable  Cadastro

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(),'${NOME_4}')])[5]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Empresa | Area de Risco | Consulta
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Empresa"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Area de Risco"]
    ${MENU_4}  Set Variable  xpath=//*[@title="Consulta"]
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Empresa
    ${NOME_3}  Set Variable  Area de Risco
    ${NOME_4}  Set Variable  Consulta

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[1]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Empresa | Area de Risco | Area de Risco            

     ${MENU_1}  Set Variable  xpath=//a[@title='Estrutura'] | //a[@id='1']
     ${MENU_2}  Set Variable  xpath=//a[@title='Empresa'] | //a[@id='12']
     ${MENU_3}  Set Variable  xpath=//a[@title='Area de Risco'] | //a[@id='27'] | //a[@id='583']
     ${MENU_4}  Set Variable  xpath=//a[@title='Área de Risco'] | //a[@id='397'] | //a[@id='948']          



  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Empresa | Area de Risco | Codin
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Empresa"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Area de Risco"]
    ${MENU_4}  Set Variable  xpath=//*[@title="Codin"]
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Empresa
    ${NOME_3}  Set Variable  Area de Risco
    ${NOME_4}  Set Variable  Codin

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Empresa | Area de Risco | Colaborador
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Empresa"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Area de Risco"]
    ${MENU_4}  Set Variable  xpath=//*[@title="Colaborador"]
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Empresa
    ${NOME_3}  Set Variable  Area de Risco
    ${NOME_4}  Set Variable  Colaborador

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
 # Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Empresa | Area de Risco | Controle
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Empresa"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Area de Risco"]
    ${MENU_4}  Set Variable  xpath=//*[@title="Controle"]
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Empresa
    ${NOME_3}  Set Variable  Area de Risco
    ${NOME_4}  Set Variable  Controle

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[2]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Empresa | Area de Risco | Painel de Controle
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Empresa"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Area de Risco"] | //a[@id='583']
    ${MENU_4}  Set Variable  xpath=//*[@title="Painel de Controle"]
    


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END
Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de Tipos de EPI
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Empresa"]
    ${MENU_3}  Set Variable  xpath=//*[@title="EPI"]
    ${MENU_4}  Set Variable  xpath=//*[@title="Tipos de EPI"]
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Empresa
    ${NOME_3}  Set Variable  EPI - Equipamento de proteção individual
    ${NOME_4}  Set Variable  Cadastro de Tipos de EPI

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable   xpath=//a[@title='Estrutura'] | //a[@id='557']
    ${MENU_2}  Set Variable   xpath=//a[@title='Empresa'] | //a[@id='12']
    ${MENU_3}  Set Variable   xpath=(//a[@title='EPI'])[1] | //a[@id='396']
    ${MENU_4}  Set Variable   xpath=(//a[@title='EPI'])[2] | //a[@id='337']
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Empresa
    ${NOME_3}  Set Variable  EPI - Equipamento de proteção individual
    ${NOME_4}  Set Variable  Cadastro de EPI

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Local
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Empresa"]
    ${MENU_3}  Set Variable  xpath=//*[@title="EPI"]
    ${MENU_4}  Set Variable  xpath=//*[@title="EPI por Local"]
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Empresa
    ${NOME_3}  Set Variable  EPI - Equipamento de proteção individual
    ${NOME_4}  Set Variable  Cadastro de EPI por Local

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Centro de Custo e Cargo
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"] | //a[@id='1']
    ${MENU_2}  Set Variable  xpath=//*[@title="Empresa"] | //a[@id='12']
    ${MENU_3}  Set Variable  xpath=//*[@title="EPI"] | //a[@id='396']
    ${MENU_4}  Set Variable  xpath=//*[@title="EPI por Centro de Custo e Cargo"] | //a[@id='339']
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Empresa
    ${NOME_3}  Set Variable  EPI - Equipamento de proteção individual
    ${NOME_4}  Set Variable  Cadastro de EPI por Centro de Custo e Cargo

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Centro de Custo
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Empresa"]
    ${MENU_3}  Set Variable  xpath=//*[@title="EPI"]
    ${MENU_4}  Set Variable  xpath=//*[@title="EPI por Centro de Custo"]
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Empresa
    ${NOME_3}  Set Variable  EPI - Equipamento de proteção individual
    ${NOME_4}  Set Variable  Cadastro de EPI por Centro de Custo

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[2]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Cargo
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Empresa"]
    ${MENU_3}  Set Variable  xpath=//*[@title="EPI"]
    ${MENU_4}  Set Variable  xpath=//*[@title="EPI por Cargo"]
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Empresa
    ${NOME_3}  Set Variable  EPI - Equipamento de proteção individual
    ${NOME_4}  Set Variable  Cadastro de EPI por Cargo

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
 # Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de Termo de Compromisso para Entrega de EPI
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Empresa"]
    ${MENU_3}  Set Variable  xpath=//*[@title="EPI"]
    ${MENU_4}  Set Variable  xpath=//*[@title="Termo de Compromisso para Entrega de EPI"]
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Empresa
    ${NOME_3}  Set Variable  EPI - Equipamento de proteção individual
    ${NOME_4}  Set Variable  Cadastro de Termo de Compromisso para Entrega de EPI

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
 # Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Grupo de Email - EPI
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Empresa"]
    ${MENU_3}  Set Variable  xpath=//*[@title="EPI"]
    ${MENU_4}  Set Variable  xpath=//*[@title="Grupo de Email - EPI"]
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Empresa
    ${NOME_3}  Set Variable  EPI - Equipamento de proteção individual
    ${NOME_4}  Set Variable  Grupo de Email - EPI

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Histórico de EPI por Colaborador
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Empresa"]
    ${MENU_3}  Set Variable  xpath=//*[@title="EPI"]
    ${MENU_4}  Set Variable  xpath=//*[@title="Histórico de EPI por Colaborador"]
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Empresa
    ${NOME_3}  Set Variable  EPI - Equipamento de proteção individual
    ${NOME_4}  Set Variable  Histórico de EPI por Colaborador

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[1]
  END



  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Relatórios | Histórico de EPI por Colaborador
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Empresa"]
    ${MENU_3}  Set Variable  xpath=//*[@title="EPI"]
    ${MENU_4}  Set Variable  xpath=//*[@title="Relatórios"]
    ${MENU_5}  Set Variable  xpath=//*[@title="Histórico de EPI por Colaborador"]
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Empresa
    ${NOME_3}  Set Variable  EPI - Equipamento de proteção individual
    ${NOME_4}  Set Variable  Relatórios
    ${NOME_5}  Set Variable  Histórico de EPI por Colaborador

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[2]
    ${MENU_5}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_5}')])[2]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_5}
  Highlight Element      ${MENU_5}
  Click Element  ${MENU_5}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Relatórios | Histórico de EPI por Visitante
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Empresa"]
    ${MENU_3}  Set Variable  xpath=//*[@title="EPI"]
    ${MENU_4}  Set Variable  xpath=//*[@title="Relatórios"]
    ${MENU_5}  Set Variable  xpath=//*[@title="Histórico de EPI por Visitante"]
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Empresa
    ${NOME_3}  Set Variable  EPI - Equipamento de proteção individual
    ${NOME_4}  Set Variable  Relatórios
    ${NOME_5}  Set Variable  Histórico de EPI por Visitante

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[2]
    ${MENU_5}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_5}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_5}
  Highlight Element      ${MENU_5}
  Click Element  ${MENU_5}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Empresa | Ambiente
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Empresa"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Ambiente"]
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Empresa
    ${NOME_3}  Set Variable  Ambiente

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Empresa | Refeitório
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Empresa"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Refeitório"]
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Empresa
    ${NOME_3}  Set Variable  Refeitório

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[1]
  END



  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Empresa | Estacionamento | Cadastro de Estacionamentos
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Empresa"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Estacionamento"]

  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Empresa
    ${NOME_3}  Set Variable  Estacionamento
    ${NOME_4}  Set Variable  Cadastro de Estacionamentos

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[1]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}
  IF  "${SERVER}" == "172.16.14.249" or "${SERVER}" == "172.16.14.248"
  

    Wait Until Element is Visible  ${MENU_4}
    Highlight Element      ${MENU_4}
    Click Element  ${MENU_4}
  END
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Empresa | Cadastro de Tipo de Contrato
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Empresa"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Cadastro de Tipo de Contrato"]
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Empresa
    ${NOME_3}  Set Variable  Cadastro de Tipo de Contrato

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Empresa Terceira | Cadastro de Empresa Terceira
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=(//*[@title="Empresa Terceira"])[1]
    ${MENU_3}  Set Variable  xpath=(//*[@title="Empresa Terceira"])[2]
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Empresa Terceira
    ${NOME_3}  Set Variable  Cadastro de Empresa Terceira

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Empresa Terceira | Contratos
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Empresa Terceira"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Contrato"]
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Empresa Terceira
    ${NOME_3}  Set Variable  Contratos

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Situação Trabalhista
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Situação Trabalhista"]
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Situação Trabalhista

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Feriado
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable   xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable   xpath=//*[@title="Feriado"]
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Feriado

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Planta
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable   xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable   xpath=//*[@title="Planta"]
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Planta

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Portaria e Recepção
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Portaria"]
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Portaria e Recepção

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Integração TOTVS
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable   xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable   xpath=//*[@title="Integração TOTVS"]
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Integração TOTVS

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  END



  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Elevador
  ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
  ${MENU_2}  Set Variable  xpath=//*[@title="Elevador"]



  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Configuração Elevadores | Cadastro de Torres
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Configuração Elevadores"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Torres"]
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Configuração Elevadores
    ${NOME_3}  Set Variable  Cadastro de Torres

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element              ${MENU_1}
  Click Element                  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element              ${MENU_2}
  Click Element                  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element              ${MENU_3}
  Click Element                  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Configuração Elevadores | Cadastro de Andares
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Configuração Elevadores"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Andares"]
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Configuração Elevadores
    ${NOME_3}  Set Variable  Cadastro de Andares

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Estrutura | Configuração Elevadores | Cadastro de Elevadores
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Estrutura"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Configuração Elevadores"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Elevadores"]
  ELSE
    ${NOME_1}  Set Variable  Estrutura
    ${NOME_2}  Set Variable  Configuração Elevadores
    ${NOME_3}  Set Variable  Cadastro de Elevadores

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Dispositivo | Gateway
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Dispositivo"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Gateway"]
  ELSE
    ${NOME_1}  Set Variable  Dispositivo
    ${NOME_2}  Set Variable  Gateway

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Dispositivo | Codin | Cadastro de Codin
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Dispositivo"] | //*[@id="2"]
    ${MENU_2}  Set Variable  xpath=(//*[@title="Codin"][1])
    ${MENU_3}  Set Variable  xpath=(//*[@title="Codin"][2]) | //*[@id="45"]

  ELSE  
    ${NOME_1}  Set Variable  Dispositivo
    ${NOME_2}  Set Variable  Codin
    ${NOME_3}  Set Variable  Cadastro de Codin

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Dispositivo | Codin | Modelo de Equipamento
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Dispositivo"] | //*[@id="2"]
    ${MENU_2}  Set Variable  xpath=//span[contains(text(),'Codin')]
    ${MENU_3}  Set Variable  xpath=//a[@title='Modelo de Equipamento']
  ELSE
    ${NOME_1}  Set Variable  Dispositivo
    ${NOME_2}  Set Variable  Codin
    ${NOME_3}  Set Variable  Modelo de Equipamento

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Dispositivo | Codin | Grupo de Codin
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Dispositivo"] | //*[@id="2"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Codin"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Grupo de Codin"]
  ELSE
    ${NOME_1}  Set Variable  Dispositivo
    ${NOME_2}  Set Variable  Codin
    ${NOME_3}  Set Variable  Grupo de Codin

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Dispositivo | Codin | Função
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable    xpath=//*[@title="Dispositivo"] | //*[@id="2"]
    ${MENU_2}  Set Variable    xpath=//*[@title="Codin"]
    ${MENU_3}  Set Variable    xpath=//*[@title="Função"]
  ELSE
    ${NOME_1}  Set Variable  Dispositivo
    ${NOME_2}  Set Variable  Codin
    ${NOME_3}  Set Variable  Função

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Dispositivo | Codin | Grupo de REP | Cadastro de Grupo de REP
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Dispositivo"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Codin"]
    ${MENU_3}  Set Variable  xpath=(//*[@title="Grupo de REP"])[1]
    ${MENU_4}  Set Variable  xpath=(//*[@title="Grupo de REP"])[2]
  ELSE
    ${NOME_1}  Set Variable  Dispositivo
    ${NOME_2}  Set Variable  Codin
    ${NOME_3}  Set Variable  Grupo de REP
    ${NOME_4}  Set Variable  Cadastro de Grupo de REP

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  END

  Wait Until Element is Visible    ${MENU_1}    15
  Highlight Element                ${MENU_1}
  Click Element                    ${MENU_1}

  Sleep  ${MNU_TIMER}

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Dispositivo | Codin | Grupo de REP | Cadastro de Locais de Prestação de Serviços
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Dispositivo"] | //*[@id="2"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Codin"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Grupo de REP"]
    ${MENU_4}  Set Variable  xpath=//*[@title="Locais de Prestação de Serviços"]
  ELSE
    ${NOME_1}  Set Variable  Dispositivo
    ${NOME_2}  Set Variable  Codin
    ${NOME_3}  Set Variable  Grupo de REP
    ${NOME_4}  Set Variable  Cadastro de Locais de Prestação de Serviços

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Dispositivo | Codin | Grupo de REP | Atualizar Grupo de REP Coletivo
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Dispositivo"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Codin"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Grupo de REP"]
    ${MENU_4}  Set Variable  xpath=//*[@title="Atualizar Grupo de REP Coletivo"]
  ELSE
    ${NOME_1}  Set Variable  Dispositivo
    ${NOME_2}  Set Variable  Codin
    ${NOME_3}  Set Variable  Grupo de REP
    ${NOME_4}  Set Variable  Atualizar Grupo de REP Coletivo

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Dispositivo | Codin | Grupo de REP | AFD
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Dispositivo"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Codin"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Grupo de REP"]
    ${MENU_4}  Set Variable  xpath=//*[@title="AFD"]
  ELSE
    ${NOME_1}  Set Variable  Dispositivo
    ${NOME_2}  Set Variable  Codin
    ${NOME_3}  Set Variable  Grupo de REP
    ${NOME_4}  Set Variable  AFD

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Dispositivo | Codin | Histórico de Codin por Filial
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Dispositivo"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Codin"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Histórico Codin Por Filial"]
  ELSE
    ${NOME_1}  Set Variable  Dispositivo
    ${NOME_2}  Set Variable  Codin
    ${NOME_3}  Set Variable  Histórico de Codin por Filial

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Dispositivo | Codin | Comandos para Equipamentos
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title="Dispositivo"]
    ${MENU_2}  Set Variable  xpath=//a[@title="Codin"]
    ${MENU_3}  Set Variable  xpath=//a[@title='Comando para Equipamento']
  ELSE
    ${NOME_1}  Set Variable  Dispositivo
    ${NOME_2}  Set Variable  Codin
    ${NOME_3}  Set Variable  Comandos para Equipamentos

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Dispositivo | Grupo de Acessos
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Dispositivo"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Grupo de Acessos"]
  ELSE
    ${NOME_1}  Set Variable  Dispositivo
    ${NOME_2}  Set Variable  Grupo de Acessos

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Dispositivo | Tipo de Acesso
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Dispositivo"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Tipo de Acesso"]
  ELSE
    ${NOME_1}  Set Variable  Dispositivo
    ${NOME_2}  Set Variable  Tipo de Acesso

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Dispositivo | Alarme | Sinal de Alarme
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Dispositivo"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Alarme"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Sinal de Alarme"]
  ELSE
    ${NOME_1}  Set Variable  Dispositivo
    ${NOME_2}  Set Variable  Alarme
    ${NOME_3}  Set Variable  Sinal de Alarme

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu43')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END



  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Dispositivo | Alarme | Procedimento de Alarme
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Dispositivo"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Alarme"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Procedimento de Alarme"]
  ELSE
    ${NOME_1}  Set Variable  Dispositivo
    ${NOME_2}  Set Variable  Alarme
    ${NOME_3}  Set Variable  Procedimento de Alarme

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu43')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Dispositivo | Alarme | Lote de Comando
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Dispositivo"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Alarme"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Lote de Comando"]
  ELSE
    ${NOME_1}  Set Variable  Dispositivo
    ${NOME_2}  Set Variable  Alarme
    ${NOME_3}  Set Variable  Lote de Comando

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu43')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Dispositivo | Alarme | Reação de Alarme
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Dispositivo"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Alarme"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Reação de Alarme"]
  ELSE
    ${NOME_1}  Set Variable  Dispositivo
    ${NOME_2}  Set Variable  Alarme
    ${NOME_3}  Set Variable  Reação de Alarme

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu43')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Dispositivo | Alarme | Reação de Acesso
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Dispositivo"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Alarme"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Reação de Acesso"]
  ELSE
    ${NOME_1}  Set Variable  Dispositivo
    ${NOME_2}  Set Variable  Alarme
    ${NOME_3}  Set Variable  Reação de Acesso

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu43')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Dispositivo | Alarme | Notificações
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Dispositivo"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Alarme"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Notificações"]
  ELSE
    ${NOME_1}  Set Variable  Dispositivo
    ${NOME_2}  Set Variable  Alarme
    ${NOME_3}  Set Variable  Notificações

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu43')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Dispositivo | CFTV
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Dispositivo"]
    ${MENU_2}  Set Variable  xpath=//*[@title="CFTV"]
  ELSE
    ${NOME_1}  Set Variable  Dispositivo
    ${NOME_2}  Set Variable  CFTV

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END



  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Dispositivo | Grupo de Cameras | Cadastros de Grupos
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Dispositivo"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Grupo de Cameras"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Cadastros de Grupos"]
  ELSE
    ${NOME_1}  Set Variable  Dispositivo
    ${NOME_2}  Set Variable  Grupo de Cameras
    ${NOME_3}  Set Variable  Cadastros de Grupos

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Dispositivo | Grupo de Cameras | Cadastro de Cameras por Grupo
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Dispositivo"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Grupo de Cameras"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Cadastro de Cameras por Grupo"]
  ELSE
    ${NOME_1}  Set Variable  Dispositivo
    ${NOME_2}  Set Variable  Grupo de Cameras
    ${NOME_3}  Set Variable  Cadastro de Cameras por Grupo

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Dispositivo | Grupo de Cameras | Cadastro de Tipos de Alarmes de Trânsito
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Dispositivo"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Grupo de Cameras"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Cadastro de Tipos de Alarmes de Trânsito"]
  ELSE
    ${NOME_1}  Set Variable  Dispositivo
    ${NOME_2}  Set Variable  Grupo de Cameras
    ${NOME_3}  Set Variable  Cadastro de Tipos de Alarmes de Trânsito

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Dispositivo | Trânsito | Câmera
  ${MENU_1}  Set Variable  xpath=//*[@title="Dispositivo"]
  ${MENU_2}  Set Variable  xpath=//*[@title="Trânsito"]
  ${MENU_3}  Set Variable  xpath=//*[@title="Câmera"]



  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Dispositivo | Trânsito | Tipo de Alarme
  ${MENU_1}  Set Variable  xpath=//*[@title="Dispositivo"]
  ${MENU_2}  Set Variable  xpath=//*[@title="Trânsito"]
  ${MENU_3}  Set Variable  xpath=//*[@title="Tipo de Alarme"]



  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Colaborador | Empregado
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=(//a[@title="Colaborador"])[1]
    ${MENU_3}  Set Variable  xpath=//a[@title="Empregado"]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Colaborador
    ${NOME_3}  Set Variable  Empregado

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[1]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Colaborador | Terceiro | Cadastro de Terceiro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=(//a[@title="Colaborador"])[1]
    ${MENU_3}  Set Variable  xpath=(//a[@title="Terceiro"])[1]
    ${MENU_4}  Set Variable  xpath=(//a[@title="Terceiro"])[2]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Colaborador
    ${NOME_3}  Set Variable  Terceiro
    ${NOME_4}  Set Variable  Cadastro de Terceiro

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[1]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Colaborador | Terceiro | Tipo de Terceiro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=(//a[@title='Colaborador'])[1]
    ${MENU_3}  Set Variable  xpath=(//a[@title="Terceiro"])[1]
    ${MENU_4}  Set Variable  xpath=//a[@title="Tipo de Terceiro"]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Colaborador
    ${NOME_3}  Set Variable  Terceiro
    ${NOME_4}  Set Variable  Tipo de Terceiro

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[1]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Colaborador | Parceiro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Colaborador"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Parceiro"]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Colaborador
    ${NOME_3}  Set Variable  Parceiro

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[1]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Colaborador | Histórico | Crachá
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=(//a[@title="Colaborador"])[1]
    ${MENU_3}  Set Variable  xpath=(//a[@title="Histórico"])[1]
    ${MENU_4}  Set Variable  xpath=(//a[@title="Crachá"])[1]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Colaborador
    ${NOME_3}  Set Variable  Histórico
    ${NOME_4}  Set Variable  Crachá

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu66')][contains(text(), '${NOME_3}')])
    ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[2]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Colaborador | Histórico | Afastamento
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Colaborador"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Histórico"]
    ${MENU_4}  Set Variable  xpath=//*[@title="Afastamento"]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Colaborador
    ${NOME_3}  Set Variable  Histórico
    ${NOME_4}  Set Variable  Afastamento

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu66')][contains(text(), '${NOME_3}')])
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Colaborador | Histórico | Escala
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=//a[@title="Colaborador"]
    ${MENU_3}  Set Variable  xpath=//a[@title="Histórico"]
    ${MENU_4}  Set Variable  xpath=(//a[@title="Escala"])[3]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Colaborador
    ${NOME_3}  Set Variable  Histórico
    ${NOME_4}  Set Variable  Escala

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu66')][contains(text(), '${NOME_3}')])
    ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[4]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}


  Sleep  2s
  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Colaborador | Histórico | Baixa de Crachá
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Colaborador"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Histórico"]
    ${MENU_4}  Set Variable  xpath=//*[@title="Baixa de Crachá"]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Colaborador
    ${NOME_3}  Set Variable  Histórico
    ${NOME_4}  Set Variable  Baixa de Crachá

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu66')][contains(text(), '${NOME_3}')])
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Colaborador | Histórico | Cargo
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=//a[@title="Colaborador"]
    ${MENU_3}  Set Variable  xpath=//a[@title="Histórico"]
    ${MENU_4}  Set Variable  xpath=(//a[@title="Cargo"])[3]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Colaborador
    ${NOME_3}  Set Variable  Histórico
    ${NOME_4}  Set Variable  Cargo

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu66')][contains(text(), '${NOME_3}')])
    ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[4]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Colaborador | Histórico | Local
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=//a[@title="Colaborador"]
    ${MENU_3}  Set Variable  xpath=//a[@title="Histórico"]
    ${MENU_4}  Set Variable  xpath=(//a[@title='Local'])[2]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Colaborador
    ${NOME_3}  Set Variable  Histórico
    ${NOME_4}  Set Variable  Local

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu66')][contains(text(), '${NOME_3}')])
    ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[2]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Colaborador | Histórico | Filial
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Colaborador"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Histórico"]
    ${MENU_4}  Set Variable  xpath=(//a[@title="Filial"])[2]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Colaborador
    ${NOME_3}  Set Variable  Histórico
    ${NOME_4}  Set Variable  Filial

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu66')][contains(text(), '${NOME_3}')])
    ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[3]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Colaborador | Histórico | Centro de Custo
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable   xpath=//a[@title='Identificação']
    ${MENU_2}  Set Variable   xpath=(//a[@title='Colaborador'])[1]
    ${MENU_3}  Set Variable   xpath=//a[@title='Histórico']
    ${MENU_4}  Set Variable   xpath=(//a[@title='Centro de Custo'])[2]

  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Colaborador
    ${NOME_3}  Set Variable  Histórico
    ${NOME_4}  Set Variable  Centro de Custo

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu66')][contains(text(), '${NOME_3}')])
    ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[4]
  END
  

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Colaborador | Histórico | Contrato
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Colaborador"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Histórico"]
    ${MENU_4}  Set Variable  xpath=(//*[@title="Contrato"])[2]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Colaborador
    ${NOME_3}  Set Variable  Histórico
    ${NOME_4}  Set Variable  Contrato

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu66')][contains(text(), '${NOME_3}')])
    ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[3]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Colaborador | Programação | Troca de Escala
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Colaborador"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Programação"] | (//*[@title="Programação"])[1]
    ${MENU_4}  Set Variable  xpath=//*[@title="Troca de Escala"]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Colaborador
    ${NOME_3}  Set Variable  Programação
    ${NOME_4}  Set Variable  Troca de Escala

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Colaborador | Programação | Troca de Grupo de Acesso
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=(//*[@title="Colaborador"])[1]
    ${MENU_3}  Set Variable  xpath=(//*[@title="Programação"])[1]
    ${MENU_4}  Set Variable  xpath=//*[@title="Troca de Grupo de Acesso"]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Colaborador
    ${NOME_3}  Set Variable  Programação
    ${NOME_4}  Set Variable  Troca de Grupo de Acesso

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Colaborador | Programação | Troca de Horário
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Colaborador"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Programação"]
    ${MENU_4}  Set Variable  xpath=//*[@title="Troca de Horário"]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Colaborador
    ${NOME_3}  Set Variable  Programação
    ${NOME_4}  Set Variable  Troca de Horário

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Colaborador | Programação | Troca de Ponte
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Colaborador"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Programação"]
    ${MENU_4}  Set Variable  xpath=//*[@title="Troca de Ponte"]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Colaborador
    ${NOME_3}  Set Variable  Programação
    ${NOME_4}  Set Variable  Troca de Ponte

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  END 
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Colaborador | Grupo de Acesso Coletivo
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Colaborador"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Grupo de Acesso Coletivo"]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Colaborador
    ${NOME_3}  Set Variable  Grupo de Acesso Coletivo

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Colaborador | Lote de Crachá
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Colaborador"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Lote de Crachá"]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Colaborador
    ${NOME_3}  Set Variable  Lote de Crachá

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Colaborador | Senha
   IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Colaborador"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Senha de Acesso para Equipamento"]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Colaborador
    ${NOME_3}  Set Variable  Senha

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[1]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Colaborador | Matriz de Acesso
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Colaborador"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Matriz de Acesso"]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Colaborador
    ${NOME_3}  Set Variable  Matriz de Acesso

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Colaborador | Cadastro de Senha de Acesso Temporária
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Colaborador"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Cadastro de Senha de Acesso Temporária"]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Colaborador
    ${NOME_3}  Set Variable  Cadastro de Senha de Acesso Temporária

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Visitante | Cadastro de Visitante
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=(//a[@title="Visitante"])[1]
    ${MENU_3}  Set Variable  xpath=(//a[@title="Visitante"])[2]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Visitante
    ${NOME_3}  Set Variable  Cadastro de Visitante

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), 'Identificação')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), 'Visitante')])[2]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), 'Cadastro de Visitante')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Visitante | Tipo de Visita
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Visitante"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Tipo de Visita"]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Visitante
    ${NOME_3}  Set Variable  Tipo de Visita

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Visitante | Agendamento Visitante
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Visitante"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Agendamento Visitante"]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Visitante
    ${NOME_3}  Set Variable  Agendamento Visitante

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Visitante | Grupo de Visitante
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Visitante"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Grupo de Visitante"]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Visitante
    ${NOME_3}  Set Variable  Grupo de Visitante

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Visitante | Agendamento de Grupo
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Visitante"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Agendamento de Grupo"]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Visitante
    ${NOME_3}  Set Variable  Agendamento de Grupo

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Visitante | Solicitar Aprovação de Visita
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=(//*[@title="Visitante"])[1]
    ${MENU_3}  Set Variable  xpath=//*[@title="Solicitar Aprovação de Visita"]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Visitante
    ${NOME_3}  Set Variable  Solicitar Aprovação de Visita

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Visitante | Aprovar Solicitação de Visita
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Visitante"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Aprovar Solicitação de Visita"]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Visitante
    ${NOME_3}  Set Variable  Aprovar Solicitação de Visita

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END



  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Candidato | Cadastro de Candidato
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=(//a[@title="Candidato"])[1]
    ${MENU_3}  Set Variable  xpath=(//a[@title="Candidato"])[2]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Candidato
    ${NOME_3}  Set Variable  Cadastro de Candidato

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Candidato | Agendamento
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Candidato"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Agendamento"]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Candidato
    ${NOME_3}  Set Variable  Agendamento

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[3]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Candidato | Autorização Acesso
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Candidato"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Autorização Acesso"]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Candidato
    ${NOME_3}  Set Variable  Autorização Acesso

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Candidato | Motivo de Acesso
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Candidato"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Motivo de Acesso"]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Candidato
    ${NOME_3}  Set Variable  

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Pessoa Não Grata | Cadastro de Pessoa Não Grata
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=(//a[@title="Pessoa Não Grata"])[1]
    ${MENU_3}  Set Variable  xpath=(//a[@title="Pessoa Não Grata"])[2]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Pessoa Não Grata
    ${NOME_3}  Set Variable  Cadastro de Pessoa Não Grata

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Pessoa Não Grata | Motivo
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Pessoa Não Grata"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Motivo"]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Pessoa Não Grata
    ${NOME_3}  Set Variable  Motivo

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[1]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Colaborador | Tipo de Contrato
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Colaborador"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Tipo de Contrato"]
  ELSE
    ${NOME_1}  Set Variable  Identificação
    ${NOME_2}  Set Variable  Pessoa Não Grata
    ${NOME_3}  Set Variable  Motivo

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[1]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Identificação | Colaborador | Tipo de Usuário
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Identificação"]
    ${MENU_2}  Set Variable  xpath=(//*[@title="Colaborador"])[1]
    ${MENU_3}  Set Variable  xpath=//*[@title="Tipo de Usuário"]
  ELSE
    ${NOME_1}  Set Variable 
    ${NOME_2}  Set Variable  
    ${NOME_3}  Set Variable  

    ${MENU_1}  Set Variable  xpath=
    ${MENU_2}  Set Variable  xpath=
    ${MENU_3}  Set Variable  xpath=
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}
  Sleep  ${MNU_TIMER}


  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
  Sleep  ${MNU_TIMER}


  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END



Clicar No Menu Registro | Perfil de Acesso
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Perfil de Acesso"]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Perfil de Acesso

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Ocorrência | Cadastro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Ocorrência"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Cadastro"]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Ocorrência
    ${NOME_3}  Set Variable  Cadastro

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[31]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Ocorrência | Tipos de Ocorrência
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Ocorrência"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Tipos de Ocorrência"]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Ocorrência
    ${NOME_3}  Set Variable  Tipos de Ocorrência

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Dado que eu Acesse o Menu Registro | Crachá | Pré-Cadastro de Crachá
#Clicar No Menu Registro | Crachá | Pré-Cadastro de Crachá
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=(//*[@title="Crachá"])[2]
    ${MENU_3}  Set Variable  xpath=//*[@title="Pré-Cadastro de Crachá"]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Crachá
    ${NOME_3}  Set Variable  Pré-Cadastro de Crachá

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END

  Wait Until Element is Visible  ${MENU_1}    timeout=10s
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Wait Until Element is Visible  ${MENU_2}    timeout=15s
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}




  Wait Until Element is Visible  ${MENU_3}    timeout=10s
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Crachá | Pré-Cadastro de Crachás Por Faixa
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=(//*[@title="Crachá"])[2]
    ${MENU_3}  Set Variable  xpath=//*[@title="Pré-Cadastro de Crachás Por Faixa"]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Crachá
    ${NOME_3}  Set Variable  Pré-Cadastro de Crachás Por Faixa

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Crachá | Ler Smart Card
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=(//*[@title="Crachá"])[2]
    ${MENU_3}  Set Variable  xpath=//*[@title="Ler Smart Card"]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Crachá
    ${NOME_3}  Set Variable  Ler Smart Card

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Crachá | Mestre e Acesso Geral
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=(//*[@title="Crachá"])[2]
    ${MENU_3}  Set Variable  xpath=//*[@title="Mestre e Acesso Geral"]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Crachá
    ${NOME_3}  Set Variable  Mestre e Acesso Geral

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Crachá | Troca de Crachá
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=(//*[@title="Crachá"])[2]
    ${MENU_3}  Set Variable  xpath=//*[@title="Troca de Crachá"]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Crachá
    ${NOME_3}  Set Variable  Troca de Crachá

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Crachá | Gravação Por faixa
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=(//*[@title="Crachá"])[2]
    ${MENU_3}  Set Variable  xpath=//*[@title="Gravação Por faixa"]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Crachá
    ${NOME_3}  Set Variable  Gravação Por faixa

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Bloqueio e Desbloqueio | Motivo de Bloqueio
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Bloqueio e Desbloqueio"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Motivo de Bloqueio"]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Bloqueio e Desbloqueio
    ${NOME_3}  Set Variable  Motivo de Bloqueio

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Bloqueio e Desbloqueio | Colaborador | Bloqueio
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Bloqueio e Desbloqueio"]
    ${MENU_3}  Set Variable  xpath=(//*[@title="Colaborador"])[2]
    ${MENU_4}  Set Variable  xpath=(//*[@title="Bloqueio"])[1]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Bloqueio e Desbloqueio
    ${NOME_3}  Set Variable  Colaborador
    ${NOME_4}  Set Variable  Bloqueio

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]
    ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[3]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Bloqueio e Desbloqueio | Colaborador | Desbloqueio
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Bloqueio e Desbloqueio"]
    ${MENU_3}  Set Variable  xpath=(//*[@title="Colaborador"])[2]
    ${MENU_4}  Set Variable  xpath=(//*[@title="Desbloqueio"])[1]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Bloqueio e Desbloqueio
    ${NOME_3}  Set Variable  Colaborador
    ${NOME_4}  Set Variable  Desbloqueio

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]
    ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[2]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Bloqueio e Desbloqueio | Crachá | Bloqueio
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title='Registro']
    ${MENU_2}  Set Variable  xpath=//*[@title='Bloqueio e Desbloqueio']
    ${MENU_3}  Set Variable  xpath=(//*[@title='Crachá'])[3]
    ${MENU_4}  Set Variable  xpath=(//*[@title='Bloqueio'])[2]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Bloqueio e Desbloqueio
    ${NOME_3}  Set Variable  Crachá
    ${NOME_4}  Set Variable  Bloqueio

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[8]
    ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[4]
  END
  Sleep  2s


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Bloqueio e Desbloqueio | Crachá | Desbloqueio
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Bloqueio e Desbloqueio"]
    ${MENU_3}  Set Variable  xpath=(//*[@title="Crachá"])[3]
    ${MENU_4}  Set Variable  xpath=(//*[@title="Desbloqueio"])[2]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Bloqueio e Desbloqueio
    ${NOME_3}  Set Variable  Crachá
    ${NOME_4}  Set Variable  Desbloqueio

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[8]
    ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[3]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Envio de Mensagem
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable   xpath=//a[@title='Registro']
    ${MENU_2}  Set Variable   xpath=//a[@title='Envio de Mensagem']
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Envio de Mensagem

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}


 
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Liberação Faixa Horária | Individual
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Liberação Faixa Horária"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Individual"]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Liberação Faixa Horária
    ${NOME_3}  Set Variable  Individual

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[1]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Liberação Faixa Horária | Coletiva
#Clicar No Menu Registro | Liberação Faixa Horária  (246)
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=//a[@title='Liberação de Faixa Horária']
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Liberação Faixa Horária
    ${NOME_3}  Set Variable  Coletiva

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END

  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}
  Sleep  ${MNU_TIMER}


  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
  Sleep  ${MNU_TIMER}

# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  ELSE

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}
  Sleep  ${MNU_TIMER}


  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
  Sleep  ${MNU_TIMER}


  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END



Clicar No Menu Registro | Envio de Mensagem | Individual
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Envio de Mensagem"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Individual"]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Envio de Mensagem
    ${NOME_3}  Set Variable  Individual

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[2]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Envio de Mensagem | Coletiva
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Envio de Mensagem"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Coletiva"]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Envio de Mensagem
    ${NOME_3}  Set Variable  Coletiva

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[2]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Configuração | Programação
    ${MENU_1}  Set Variable  xpath=//a[@title="Configuração"]
    ${MENU_2}  Set Variable  xpath=(//a[@title="Programação"])[2]



  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
  # Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Envio de Mensagem | Mensagens Pré-definidas
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Configuração"]
    ${MENU_2}  Set Variable  xpath=//a[@id="15002"]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Envio de Mensagem
    ${NOME_3}  Set Variable  Mensagens Pré-definidas

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Crédito de Acesso | Individual | Empregado/Terceiro/Parceiro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=//a[@title='Créditos de Acessos']

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}  

  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Crédito de Acesso
    ${NOME_3}  Set Variable  Individual
    ${NOME_4}  Set Variable  Empregado/Terceiro/Parceiro  

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[3]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  
  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}

  END  
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END
  
Clicar No Menu Registro | Créditos de Acessos  
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title='Registro']
    ${MENU_2}  Set Variable  xpath=//a[@title='Créditos de Acessos']
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Créditos de Acessos

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END
  
  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Crédito de Acesso | Individual | Visitante
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable   xpath=//a[@title='Registro']
    ${MENU_2}  Set Variable   xpath=//a[@title="Créditos de Acessos"]

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Crédito de Acesso
    ${NOME_3}  Set Variable  Individual
    ${NOME_4}  Set Variable  Visitante

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[3]
    ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[7]
  
  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
  END
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Crédito de Acesso | Coletivo
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Crédito de Acesso"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Coletivo"]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Crédito de Acesso
    ${NOME_3}  Set Variable  Coletivo

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[3]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Benefício | Cadastro de Benefício
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=(//*[@title="Benefício"])[1]
    ${MENU_3}  Set Variable  xpath=(//*[@title="Benefício"])[2]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Benefício
    ${NOME_3}  Set Variable  Cadastro de Benefício

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Benefício | Atribuição
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Benefício"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Atribuição"]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Benefício
    ${NOME_3}  Set Variable  Atribuição

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Benefício | Consumo
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Benefício"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Consumo"]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Benefício
    ${NOME_3}  Set Variable  Consumo

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Benefício | Histórico
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=(//*[@title="Benefício"])[1]
    ${MENU_3}  Set Variable  xpath=(//*[@title="Histórico"])[2]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Benefício
    ${NOME_3}  Set Variable  Histórico

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[8]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Benefício | Autorização de Devedores
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Benefício"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Autorização de Devedores"]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Benefício
    ${NOME_3}  Set Variable  Autorização de Devedores

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Área Restrita | Autorizar Acesso
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Área Restrita"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Autorizar Acesso"]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Ýrea Restrita
    ${NOME_3}  Set Variable  Autorizar Acesso

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Área Restrita | Consultar Acesso
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Área Restrita"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Consultar Acesso"]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Área Restrita
    ${NOME_3}  Set Variable  Consultar Acesso

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Chave | Cadastro de Chave
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=(//*[@title="Chave"])[1]
    ${MENU_3}  Set Variable  xpath=(//*[@title="Chave"])[2]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Chave
    ${NOME_3}  Set Variable  Cadastro de Chave

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Chave | Movimentação de Chave
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
     ${MENU_1}  Set Variable  xpath=//*[@title="Registro"] | //a[@id='4']
     ${MENU_2}  Set Variable  xpath=(//*[@title="Chave"])[1] | //a[@id='348']
     ${MENU_3}  Set Variable  xpath=//*[@title="Movimentação de Chave"] | //a[@id='350']
  ELSE
     ${NOME_1}  Set Variable  Registro
     ${NOME_2}  Set Variable  Chave
     ${NOME_3}  Set Variable  Movimentação de Chave

     ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
     ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
     ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}


  Sleep  2s
  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
   IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
     Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END
 

Clicar No Menu Registro | Chave | Relatório de Cadastro de Chave
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Chave"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Relatório de Cadastro de Chave"]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Chave
    ${NOME_3}  Set Variable  Relatório de Cadastro de Chave

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Chave | Relatório de Movimentação de Chave
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Chave"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Relatório de Movimentação de Chave"]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Chave
    ${NOME_3}  Set Variable  Relatório de Movimentação de Chave

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Guarda-Volumes | Cadastro de Guarda-Volumes
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=(//a[@title="Guarda-Volumes"])[1]
    ${MENU_3}  Set Variable  xpath=(//a[@title="Guarda-Volumes"])[2]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Guarda-Volumes
    ${NOME_3}  Set Variable  Cadastro de Guarda-Volumes

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Guarda-Volumes | Movimentação de Guarda-Volumes
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Guarda-Volumes"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Movimentação de Guarda-Volumes"]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Guarda-Volumes
    ${NOME_3}  Set Variable  Movimentação de Guarda-Volumes

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Guarda-Volumes | Relatório Guarda-Volumes
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=(//*[@title="Guarda-Volumes"])[1]
    ${MENU_3}  Set Variable  xpath=//*[@title="Relatório Guarda-Volumes"]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Guarda-Volumes
    ${NOME_3}  Set Variable  Relatório Guarda-Volumes

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Registro | Guarda-Volumes | Relatório de Movimentação de Guarda-Volumes
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Guarda-Volumes"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Relatório de Movimentação de Guarda-Volumes"]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Guarda-Volumes
    ${NOME_3}  Set Variable  Relatório de Movimentação de Guarda-Volumes

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Registro | Liberação de Nível
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Registro"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Liberação de Nível"]
  ELSE
    ${NOME_1}  Set Variable  Registro
    ${NOME_2}  Set Variable  Liberação de Nível

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END


Clicar No Menu Entrada | Visitante | Entrada de Visitante
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
     ${MENU_1}   Set Variable   xpath=(//a[@title='Entrada'])[1]
     ${MENU_2}   Set Variable   xpath=(//a[@title='Visitante'])[3]
     ${MENU_3}   Set Variable   xpath=//a[@title='Entrada de Visitante']
  ELSE
    ${NOME_1}  Set Variable  Entrada
    ${NOME_2}  Set Variable  Visitante
    ${NOME_3}  Set Variable  Entrada de Visitante

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[8]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[1]
  END
  

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}


  Sleep  2s
  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Entrada | Visitante | Saída de Visitante
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title='Entrada']
    ${MENU_2}  Set Variable  xpath=(//a[@title='Visitante'])[3]
    ${MENU_3}  Set Variable  xpath=//a[@title='Saída de Visitante']
  ELSE
    ${NOME_1}  Set Variable  Entrada
    ${NOME_2}  Set Variable  Visitante
    ${NOME_3}  Set Variable  Saída de Visitante

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[8]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}


  Sleep  2s
  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Entrada | Visitante | Entrada de Grupo
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Entrada"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Visitante"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Entrada de Grupo"]
  ELSE
    ${NOME_1}  Set Variable  Entrada
    ${NOME_2}  Set Variable  Visitante
    ${NOME_3}  Set Variable  Entrada de Grupo

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[8]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Entrada | Visitante | Entrada de Visitantes com Captura de Fotos
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Entrada"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Visitante"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Entrada de Visitantes com Captura de Fotos"]
  ELSE
    ${NOME_1}  Set Variable  Entrada
    ${NOME_2}  Set Variable  Visitante
    ${NOME_3}  Set Variable  Entrada de Visitantes com Captura de Fotos

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[7]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')][3]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Entrada | Visitante | Consultar Ticket WSG
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Entrada'])[1]
    ${MENU_2}  Set Variable  xpath=(//a[@title='Visitante'])[3]
    ${MENU_3}  Set Variable  xpath=//a[@title='Consultar Ticket WSG']
  ELSE
    ${NOME_1}  Set Variable  Entrada
    ${NOME_2}  Set Variable  Visitante
    ${NOME_3}  Set Variable  Consultar Ticket WSG

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[7]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Entrada | Candidato | Entrada
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title="Entrada"])
    ${MENU_2}  Set Variable  xpath=(//a[@title="Candidato"])[3]
    ${MENU_3}  Set Variable  xpath=(//a[@title="Entrada"])[2]
  ELSE
    ${NOME_1}  Set Variable  Entrada
    ${NOME_2}  Set Variable  Candidato
    ${NOME_3}  Set Variable  Entrada

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[3]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[4]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Entrada | Candidato | Saída
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Entrada'])[1]
    ${MENU_2}  Set Variable  xpath=(//a[@title='Candidato'])[3]
    ${MENU_3}  Set Variable  xpath=(//a[@title='Saída'])[1]
  ELSE
    ${NOME_1}  Set Variable  Entrada
    ${NOME_2}  Set Variable  Candidato
    ${NOME_3}  Set Variable  Saída

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[3]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[2]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Entrada | Provisório | Colaborador
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Entrada'])[1]
    ${MENU_2}  Set Variable  xpath=//a[@title='Provisório']
    ${MENU_3}  Set Variable  xpath=(//a[@title='Colaborador'])[3]
  ELSE
    ${NOME_1}  Set Variable  Entrada
    ${NOME_2}  Set Variable  Provisório
    ${NOME_3}  Set Variable  Colaborador

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[7]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Entrada | Provisório | Baixa Provisório
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Entrada"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Provisório"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Baixa Provisório"]
  ELSE
    ${NOME_1}  Set Variable  Entrada
    ${NOME_2}  Set Variable  Provisório
    ${NOME_3}  Set Variable  Baixa Provisório

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Entrada | Autorização | Agendamento
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Entrada'])[1]
    ${MENU_2}  Set Variable  xpath=(//a[@title='Autorização'])[1]
    ${MENU_3}  Set Variable  xpath=(//a[@title='Agendamento'])[2]
  ELSE
    ${NOME_1}  Set Variable  Entrada
    ${NOME_2}  Set Variable  Autorização
    ${NOME_3}  Set Variable  Agendamento

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[3]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[4]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Entrada | Autorização | Entrada
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Entrada'])[1]
    ${MENU_2}  Set Variable  xpath=(//a[@title='Autorização'])[1]
    ${MENU_3}  Set Variable  xpath=(//a[@title='Entrada'])[3]
  ELSE
    ${NOME_1}  Set Variable  Entrada
    ${NOME_2}  Set Variable  Autorização
    ${NOME_3}  Set Variable  Entrada

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[3]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Entrada | Autorização | Baixa de Autorização
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Entrada'])[1]
    ${MENU_2}  Set Variable  xpath=(//a[@title='Autorização'])[1]
    ${MENU_3}  Set Variable  xpath=//a[@title='Baixa de Autorização']
  ELSE
    ${NOME_1}  Set Variable  Entrada
    ${NOME_2}  Set Variable  Autorização
    ${NOME_3}  Set Variable  Baixa de Autorização

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[3]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Entrada | Veículo | Cadastro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Entrada"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Veículo"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Cadastro"]
  ELSE
    ${NOME_1}  Set Variable  Entrada
    ${NOME_2}  Set Variable  Veículo
    ${NOME_3}  Set Variable  Cadastro

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[39]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Entrada | Veículo | Entrada
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Entrada'])[1]
    ${MENU_2}  Set Variable  xpath=(//a[@title='Veículo'])[1]
    ${MENU_3}  Set Variable  xpath=(//a[@title='Entrada'])[4]
  ELSE
    ${NOME_1}  Set Variable  Entrada
    ${NOME_2}  Set Variable  Veículo
    ${NOME_3}  Set Variable  Entrada

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[6]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Entrada | Veículo | Saída
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Entrada'])[1]
    ${MENU_2}  Set Variable  xpath=(//a[@title='Veículo'])[1]
    ${MENU_3}  Set Variable  xpath=(//a[@title='Saída'])[2]
  ELSE
    ${NOME_1}  Set Variable  Entrada
    ${NOME_2}  Set Variable  Veículo
    ${NOME_3}  Set Variable  Saída

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[3]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Entrada | Material | Cadastro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Entrada'])[1]
    ${MENU_2}  Set Variable  xpath=//a[@title='Material']
    ${MENU_3}  Set Variable  xpath=(//a[@title='Cadastro'])[2]

  ELSE  
    ${NOME_1}  Set Variable  Entrada
    ${NOME_2}  Set Variable  Material
    ${NOME_3}  Set Variable  Cadastro

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[40]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Entrada | Material | Material por Pessoa
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Entrada"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Material"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Material por Pessoa"]
  ELSE
    ${NOME_1}  Set Variable  Entrada
    ${NOME_2}  Set Variable  Material
    ${NOME_3}  Set Variable  Material por Pessoa

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Entrada | Material | Solicitação de Saída
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Entrada"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Material"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Solicitação de Saída"]
  ELSE
    ${NOME_1}  Set Variable  Entrada
    ${NOME_2}  Set Variable  Material
    ${NOME_3}  Set Variable  Solicitação de Saída

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Entrada | Material | Autorização
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Entrada"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Material"]
    ${MENU_3}  Set Variable  xpath=(//*[@title="Autorização"])[2]
  ELSE
    ${NOME_1}  Set Variable  Entrada
    ${NOME_2}  Set Variable  Material
    ${NOME_3}  Set Variable  Autorização

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]
  END



  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Entrada | Material | Movimentação
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Entrada"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Material"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Movimentação"]
  ELSE
    ${NOME_1}  Set Variable  Entrada
    ${NOME_2}  Set Variable  Material
    ${NOME_3}  Set Variable  Movimentação

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Entrada | Veículo de Colaborador - Cadastro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Entrada"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Veículo de Colaborador"]
  ELSE
    ${NOME_1}  Set Variable  Entrada
    ${NOME_2}  Set Variable  Veículo de Colaborador - Cadastro

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Entrada | Marcação de Acesso Manual
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Entrada"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Marcação de Acesso Manual"]
  ELSE
    ${NOME_1}  Set Variable  Entrada
    ${NOME_2}  Set Variable  Marcação de Acesso Manual

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Controle | Comando | Acesso
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Controle"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Comando"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Acesso"]
  ELSE
    ${NOME_1}  Set Variable  Controle
    ${NOME_2}  Set Variable  Comando
    ${NOME_3}  Set Variable  Acesso

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[3]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[17]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}




  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Controle | Comando | Emergência
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Controle"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Comando"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Emergência"]
  ELSE
    ${NOME_1}  Set Variable  Controle
    ${NOME_2}  Set Variable  Comando
    ${NOME_3}  Set Variable  Emergência

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[3]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[2]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Controle | Comando | Lote
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Controle"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Comando"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Lote"]
  ELSE
    ${NOME_1}  Set Variable  Controle
    ${NOME_2}  Set Variable  Comando
    ${NOME_3}  Set Variable  Lote

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[3]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[3]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Controle | Comando | Envio Individual de Comandos Player
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Controle"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Comando"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Envio Individual de Comandos Player"]
  ELSE
    ${NOME_1}  Set Variable  Controle
    ${NOME_2}  Set Variable  Comando
    ${NOME_3}  Set Variable  Envio Individual de Comandos Player

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[3]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Controle | Comando | Reprocessamento de Marcação
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Controle"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Comando"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Reprocessamento de Marcação"]
  ELSE
    ${NOME_1}  Set Variable  Controle
    ${NOME_2}  Set Variable  Comando
    ${NOME_3}  Set Variable  Reprocessamento de Marcação

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[3]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Controle | Comando | Reprocessamento de Marcações Orfãs REP
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Controle"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Comando"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Reprocessamento de Marcações Orfãs REP"]
  ELSE
    ${NOME_1}  Set Variable  Controle
    ${NOME_2}  Set Variable  Comando
    ${NOME_3}  Set Variable  Reprocessamento de Marcações Orfãs REP

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[3]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END



  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Controle | Monitoramento | Gráfico
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Controle"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Monitoramento"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Gráfico"]
  ELSE
    ${NOME_1}  Set Variable  Controle
    ${NOME_2}  Set Variable  Monitoramento
    ${NOME_3}  Set Variable  Gráfico

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), 'Controle')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), 'Monitoramento')])[2]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), 'Gráfico')])[1]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Controle | Monitoramento | Acesso - Grid
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Controle"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Monitoramento"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Acesso - Grid"]
  ELSE
    ${NOME_1}  Set Variable  Controle
    ${NOME_2}  Set Variable  Monitoramento
    ${NOME_3}  Set Variable  Acesso - Grid

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Controle | Monitoramento | Alarme - Grid
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Controle"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Monitoramento"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Alarme - Grid"]
  ELSE
    ${NOME_1}  Set Variable  Controle
    ${NOME_2}  Set Variable  Monitoramento
    ${NOME_3}  Set Variable  Alarme - Grid

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Controle | Monitoramento | Monitoramento LOG Gerenciador
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Controle"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Monitoramento"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Monitoramento LOG Gerenciador"]
  ELSE
    ${NOME_1}  Set Variable  Controle
    ${NOME_2}  Set Variable  Monitoramento
    ${NOME_3}  Set Variable  Monitoramento LOG Gerenciador

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Controle | Monitoramento | Dispositivos Grid
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title='Controle']
    ${MENU_2}  Set Variable  xpath=//a[@title='Monitoramento']
    ${MENU_3}  Set Variable  xpath=//a[@title='Dispositivos Grid']
  ELSE
    ${NOME_1}  Set Variable  Controle
    ${NOME_2}  Set Variable  Monitoramento
    ${NOME_3}  Set Variable  Dispositivos Grid

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Controle | Monitoramento | Monitoramento Gráfico de Equipamentos
   IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${MENU_1}  Set Variable  xpath=//a[@title='Controle']
      ${MENU_2}  Set Variable  xpath=//a[@title='Monitoramento']
      ${MENU_3}  Set Variable  xpath=//a[@title='Monitoramento Gráfico de Equipamentos']
   ELSE
      ${NOME_1}  Set Variable  Controle
      ${NOME_2}  Set Variable  Monitoramento
      ${NOME_3}  Set Variable  Monitoramento Gráfico de Equipamentos

      ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
      ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
      ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
   END
  

  Sleep  2s
  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Controle | Monitoramento | Monitoramento de Acesso Câmeras
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Controle"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Monitoramento"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Monitoramento de Acesso Câmeras"]
  ELSE
    ${NOME_1}  Set Variable  Controle
    ${NOME_2}  Set Variable  Monitoramento
    ${NOME_3}  Set Variable  Monitoramento de Acesso Câmeras

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Controle | Monitoramento | LOG SecurOS
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Controle"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Monitoramento"]
    ${MENU_3}  Set Variable  xpath=//*[@title="LOG SecurOS"]
  ELSE
    ${NOME_1}  Set Variable  Controle
    ${NOME_2}  Set Variable  Monitoramento
    ${NOME_3}  Set Variable  LOG SecurOS

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Controle | Monitoramento | Entrada de Agencias
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Controle"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Monitoramento"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Entrada de Agencias"]
  ELSE
    ${NOME_1}  Set Variable  Controle
    ${NOME_2}  Set Variable  Monitoramento
    ${NOME_3}  Set Variable  Entrada de Agencias

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Controle | Monitoramento | Monitoramento de Câmeras de Trânsito
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Controle"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Monitoramento"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Monitoramento de Câmeras de Trânsito"]
  ELSE
    ${NOME_1}  Set Variable  Controle
    ${NOME_2}  Set Variable  Monitoramento
    ${NOME_3}  Set Variable  Monitoramento de Câmeras de Trânsito

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Controle | Monitoramento | Monitoramento de Status de Cameras
   IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${MENU_1}  Set Variable  xpath=//a[@title="Controle"]
      ${MENU_2}  Set Variable  xpath=//a[@title="Monitoramento"]
      ${MENU_3}  Set Variable  xpath=//a[@title='Monitoramento do Status de Câmeras']
   ELSE
      ${NOME_1}  Set Variable  Controle
      ${NOME_2}  Set Variable  Monitoramento
      ${NOME_3}  Set Variable  Monitoramento de Status de Cameras

      ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
      ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
      ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
   END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Controle | Ativar Emergência
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Controle"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Ativar Emergência"]
  ELSE
    ${NOME_1}  Set Variable  Controle
    ${NOME_2}  Set Variable  Ativar Emergência

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), 'Controle')])[1]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), 'Ativar Emergência')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Processo | Geração de Lista
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Processo"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Geração de Lista"]
  ELSE
    ${NOME_1}  Set Variable  Processo
    ${NOME_2}  Set Variable  Geração de Lista

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Processo | Layout de Arquivo
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Processo"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Layout de Arquivo"]
  ELSE
    ${NOME_1}  Set Variable  Processo
    ${NOME_2}  Set Variable  Layout de Arquivo

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Processo | Layout de Relatório
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Processo"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Layout de Relatório"]
  ELSE
    ${NOME_1}  Set Variable  Processo
    ${NOME_2}  Set Variable  Layout de Relatório

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Processo | Importação
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Processo"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Importação"]
  ELSE
    ${NOME_1}  Set Variable  Processo
    ${NOME_2}  Set Variable  Importação

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END



  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Processo | Exportação
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Processo"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Exportação"]
  ELSE
    ${NOME_1}  Set Variable  Processo
    ${NOME_2}  Set Variable  Exportação

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Processo | Relatório
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Processo"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Relatório"]
  ELSE
    ${NOME_1}  Set Variable  Processo
    ${NOME_2}  Set Variable  Relatório

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[10]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Processo | Email
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Processo"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Email"]
  ELSE
    ${NOME_1}  Set Variable  Processo
    ${NOME_2}  Set Variable  Email

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Processo | Online
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Processo"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Online"]
  ELSE
    ${NOME_1}  Set Variable  Processo
    ${NOME_2}  Set Variable  Online

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Processo | Foto | Visitante
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Processo"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Foto"]
    ${MENU_3}  Set Variable  xpath=(//*[@title="Visitante"])[4]| //a[@id='193']
  ELSE
    ${NOME_1}  Set Variable  Processo
    ${NOME_2}  Set Variable  Foto
    ${NOME_3}  Set Variable  Visitante

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[10]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Processo | Foto | Colaborador
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title='Processo']
    ${MENU_2}  Set Variable  xpath=//a[@title='Foto']
    ${MENU_3}  Set Variable  xpath=(//a[@title='Colaborador'])[4]
  ELSE
    ${NOME_1}  Set Variable  Processo
    ${NOME_2}  Set Variable  Foto
    ${NOME_3}  Set Variable  Colaborador

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[8]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Configurações | Usuários | Usuário Aprovador de Solitação de Visita
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title='Configuração']
    ${MENU_2}  Set Variable  xpath=//a[@title='Usuários']
    ${MENU_3}  Set Variable  xpath=//a[@title='Aprovador de Solicitação de Visita']
  ELSE
    ${NOME_1}  Set Variable  Configurações
    ${NOME_2}  Set Variable  Usuários
    ${NOME_3}  Set Variable  Usuário Aprovador de Solitação de Visita

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Configurações | Usuários | Grupo de Usuário
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title="Configuração"]
    ${MENU_2}  Set Variable  xpath=//a[@title="Usuários"]
    ${MENU_3}  Set Variable  xpath=//a[@title="Grupo de Usuário"]
  ELSE
    ${NOME_1}  Set Variable  Configurações
    ${NOME_2}  Set Variable  Usuários
    ${NOME_3}  Set Variable  Grupo de Usuário

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[1]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Configurações | Usuários | Usuário
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title="Configuração"]
    ${MENU_2}  Set Variable  xpath=//a[@title="Usuários"]
    ${MENU_3}  Set Variable  xpath=//a[@title="Usuário"]
  ELSE
    ${NOME_1}  Set Variable  Configurações
    ${NOME_2}  Set Variable  Usuários
    ${NOME_3}  Set Variable  Usuário

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Configurações | Usuários | Histórico de Perfil
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title="Configuração"]
    ${MENU_2}  Set Variable  xpath=//a[@title="Usuários"]
    ${MENU_3}  Set Variable  xpath=//a[@title="Histórico de Perfil"]
  ELSE
    ${NOME_1}  Set Variable  Configurações
    ${NOME_2}  Set Variable  Usuários
    ${NOME_3}  Set Variable  Histórico de Perfil

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Configurações | Usuários | Diretiva de Segurança
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Configurações"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Usuários"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Diretiva de Segurança"]
  ELSE
    ${NOME_1}  Set Variable  Configurações
    ${NOME_2}  Set Variable  Usuários
    ${NOME_3}  Set Variable  Diretiva de Segurança

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Configurações | Usuários | Ativação de Usuário
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title="Configuração"]
    ${MENU_2}  Set Variable  xpath=//a[@title="Usuários"]
    ${MENU_3}  Set Variable  xpath=//a[@title="Ativação de Usuário"]
  ELSE
    ${NOME_1}  Set Variable  Configurações
    ${NOME_2}  Set Variable  Usuários
    ${NOME_3}  Set Variable  Ativação de Usuário

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Configurações | Usuários | Usuário x Portaria
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title="Configuração"]
    ${MENU_2}  Set Variable  xpath=//a[@title="Usuários"]
    ${MENU_3}  Set Variable  xpath=//a[@title="Usuário x Portaria"]
  ELSE
    ${NOME_1}  Set Variable  Configurações
    ${NOME_2}  Set Variable  Usuários
    ${NOME_3}  Set Variable  Usuário x Portaria

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), 'Configurações')])[1]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), 'Usuários')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), 'Usuário x Portaria')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Configurações | Usuários | Alterar senha
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title="Configuração"]
    ${MENU_2}  Set Variable  xpath=//a[@title="Usuários"]
    ${MENU_3}  Set Variable  xpath=//a[@title="Alterar senha"]
  ELSE
    ${NOME_1}  Set Variable  Configurações
    ${NOME_2}  Set Variable  Usuários
    ${NOME_3}  Set Variable  Alterar senha

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Configurações | Crachá
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Configurações"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Crachá"]
  ELSE
    ${NOME_1}  Set Variable  Configurações
    ${NOME_2}  Set Variable  Crachá

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[10]
  END



  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Configuração | Usuários | Filtro de Abrangência
 IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
     ${MENU_1}  Set Variable  xpath=//a[@id='8']
     ${MENU_2}  Set Variable  xpath=//a[@id='303']
     ${MENU_3}  Set Variable  xpath=//a[@id='197']



  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END   

Clicar No Menu Configurações | Filtro de Abrangência
  ${MENU_1}  Set Variable  xpath=//a[@title='Configuração']
  ${MENU_2}  Set Variable  xpath=//a[@title='Usuários']
  ${MENU_3}  Set Variable  xpath=//a[@title='Filtro de Abrangência']

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}


  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Configurações | Email
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title="Configuração"]
    ${MENU_2}  Set Variable  xpath=(//a[@title="Email"])[2]
  ELSE
    ${NOME_1}  Set Variable  Configurações
    ${NOME_2}  Set Variable  Email

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[3]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Configurações | Faixa de Acesso de Refeitório
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title="Configuração"]
    ${MENU_2}  Set Variable  xpath=//a[@title="Faixa de Acesso de Refeitório"]
  ELSE
    ${NOME_1}  Set Variable  Configurações
    ${NOME_2}  Set Variable  Faixa de Acesso de Refeitório

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END


Clicar No Menu Configuração | Equipamento | Conex
  ${MENU_1}  Set Variable  xpath=//a[@title='Configuração']
  ${MENU_2}  Set Variable  xpath=//a[@title='Equipamento']
  ${MENU_3}  Set Variable  xpath=//a[@title='Conex']
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Wait Until Element is Visible    ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element    ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END


Clicar No Menu Configurações | Pessoa Não Grata
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Configuração"]
    ${MENU_2}  Set Variable  xpath=(//a[@title="Pessoa Não Grata"])[3]
  ELSE
    ${NOME_1}  Set Variable  Configurações
    ${NOME_2}  Set Variable  Pessoa Não Grata

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[3]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Configurações | Câmera
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Configurações"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Câmera"]
  ELSE
    ${NOME_1}  Set Variable  Configurações
    ${NOME_2}  Set Variable  Câmera

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[3]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Configurações | Log de Aplicação | Cadastro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title="Configuração"]
    ${MENU_2}  Set Variable  xpath=//a[@title="Aplicação"]
    ${MENU_3}  Set Variable  xpath=//a[@title="Log de Aplicação"]
    ${MENU_4}  Set Variable  xpath=(//a[@title="Cadastro"])[3]



  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

  ELSE
    ${NOME_1}  Set Variable  Configurações
    ${NOME_2}  Set Variable  Log de Aplicação
    ${NOME_3}  Set Variable  Cadastro

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[43]
  



  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END
  END

Clicar No Menu Configurações | Log de Aplicação | Log Eventos Suriplayer
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title='Configuração']
    ${MENU_2}  Set Variable  xpath=//a[@title='Aplicação']
    ${MENU_3}  Set Variable  xpath=//a[@title='Log de Aplicação']
    ${MENU_4}  Set Variable  xpath=//a[@title='Log Eventos Suriplayer']

  Wait Until Element is Visible  ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}


  Wait Until Element is Visible  ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}


  Wait Until Element is Visible  ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END
  

  ELSE
    ${NOME_1}  Set Variable  Configurações
    ${NOME_2}  Set Variable  Log de Aplicação
    ${NOME_3}  Set Variable  Log Eventos Suriplayer

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])
  


  Wait Until Element is Visible  ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END
  END

Clicar No Menu Configurações | Log de Aplicação | Consulta
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title='Configuração']
    ${MENU_2}  Set Variable  xpath=//a[@title='Aplicação']
    ${MENU_3}  Set Variable  xpath=//a[@title='Log de Aplicação']
    ${MENU_4}  Set Variable  xpath=//a[@title='Consulta']



  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

  ELSE
    ${NOME_1}  Set Variable  Configurações
    ${NOME_2}  Set Variable  Log de Aplicação
    ${NOME_3}  Set Variable  Consulta

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[6]
  
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END
  END

Clicar No Menu Configurações | Idioma
#Menu: Configuração | Aplicação | Idioma (246)
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title='Configuração']
    ${MENU_2}  Set Variable  xpath=//a[@title='Aplicação']
    ${MENU_3}  Set Variable  xpath=//a[@title='Idioma']



  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

  ELSE
    ${NOME_1}  Set Variable  Configurações
    ${NOME_2}  Set Variable  Idioma

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END
  END

Clicar No Menu Configurações | Hora Extra
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title="Configuração"]
    ${MENU_2}  Set Variable  xpath=//a[@title="Hora Extra"]
  ELSE
    ${NOME_1}  Set Variable  Configurações
    ${NOME_2}  Set Variable  Hora Extra

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Configurações | Configurações Gerais | Entrada de Visitantes
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Configurações"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Configurações Gerais"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Entrada de Visitantes"]
  ELSE
    ${NOME_1}  Set Variable  Configurações
    ${NOME_2}  Set Variable  Configurações Gerais
    ${NOME_3}  Set Variable  Entrada de Visitantes

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[1]
  END

  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Configurações | Configurações Gerais | Matrícula Automática
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Configurações"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Configurações Gerais"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Matrícula Automática"]
  ELSE
    ${NOME_1}  Set Variable  Configurações
    ${NOME_2}  Set Variable  Configurações Gerais
    ${NOME_3}  Set Variable  Matrícula Automática

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Configurações | Configurações Gerais | Configuração de LDAP
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Configurações"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Configurações Gerais"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Configuração de LDAP"]
  ELSE
    ${NOME_1}  Set Variable  Configurações
    ${NOME_2}  Set Variable  Configurações Gerais
    ${NOME_3}  Set Variable  Configuração de LDAP

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Configurações | Configurações Gerais | Configurações Crachá
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Configurações"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Configurações Gerais"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Configurações Crachá"]
  ELSE
    ${NOME_1}  Set Variable  Configurações
    ${NOME_2}  Set Variable  Configurações Gerais
    ${NOME_3}  Set Variable  Configurações Crachá

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Configurações | Configurações Gerais | Configurações Gerais Do Sistema
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Configurações"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Configurações Gerais"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Configurações Gerais Do Sistema"]
  ELSE
    ${NOME_1}  Set Variable  Configurações
    ${NOME_2}  Set Variable  Configurações Gerais
    ${NOME_3}  Set Variable  Configurações Gerais Do Sistema

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Configurações | Configurações Gerais | Tipo de Biometria por Grupo de Usuário
#Menu Configurações | Usuários | Tipo de Biometria por Grupo de Usuário (246)
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title="Configuração"]
    ${MENU_2}  Set Variable  xpath=//a[@title="Usuários"]
    ${MENU_3}  Set Variable  xpath=//a[@title="Tipo de Biometria por Grupo de Usuário"]
  ELSE
    ${NOME_1}  Set Variable  Configurações
    ${NOME_2}  Set Variable  Configurações Gerais
    ${NOME_3}  Set Variable  Tipo de Biometria por Grupo de Usuário

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Configurações | Configurações Gerais | Integração TOTVS
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Configuração"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Sistema"]
  ELSE
    ${NOME_1}  Set Variable  Configuração
    ${NOME_2}  Set Variable  Sistema
    ${NOME_3}  Set Variable  Integração TOTVS

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  END


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Configurações | Configurações Gerais | Configurações de EPI
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Configurações"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Configurações Gerais"]
    ${MENU_3}  Set Variable  xpath=//*[@title="Configurações de EPI"]
  ELSE
    ${NOME_1}  Set Variable  Configurações
    ${NOME_2}  Set Variable  Configurações Gerais
    ${NOME_3}  Set Variable  Configurações de EPI

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Configurações | Cadastro de Tipo de Refeição
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title="Configuração"]
    ${MENU_2}  Set Variable  xpath=//a[@title="Tipo de Refeição"]
  ELSE
    ${NOME_1}  Set Variable  Configurações
    ${NOME_2}  Set Variable  Cadastro de Tipo de Refeição

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Configurações | Upload de Firmware
#Configuração | Equipamento | Upload de Firmware
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title='Configuração']
    ${MENU_2}  Set Variable  xpath=//a[@title='Equipamento']
    ${MENU_3}  Set Variable  xpath=//a[@title=' Upload de Firmware']



  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Wait Until Element is Visible    ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element    ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

  ELSE
    ${NOME_1}  Set Variable  Configurações
    ${NOME_2}  Set Variable  Upload de Firmware

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Wait Until Element is Visible    ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element    ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END
  END
  
Clicar No Menu Configurações | Cadastro de Grupos de Abrangência
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Configurações"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Cadastro de Grupos de Abrangência"]
  ELSE
    ${NOME_1}  Set Variable  Configurações
    ${NOME_2}  Set Variable  Cadastro de Grupos de Abrangência

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Configurações | Campos Customizáveis
#Configuração | Aplicação | Campos Customizáveis (246)
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title='Configuração']
    ${MENU_2}  Set Variable  xpath=//a[@title='Aplicação']
    ${MENU_3}  Set Variable  xpath=//a[@title='Campos Customizáveis']



  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

  ELSE
    ${NOME_1}  Set Variable  Configurações
    ${NOME_2}  Set Variable  Campos Customizáveis

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END
  END

Clicar No Menu Configurações | LGPD - Configurações de Dados Sensíveis
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title="Configuração"]
    ${MENU_2}  Set Variable  xpath=//a[@title="LGPD"]
    ${MENU_3}  Set Variable  xpath=//a[@title="Dados Sensiveis"]




  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

  ELSE
    ${NOME_1}  Set Variable  Configurações
    ${NOME_2}  Set Variable  LGPD - Configurações de Dados Sensíveis

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END
  END

Clicar No Menu Configurações | LGPD
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//a[@title="Configuração"]
    ${MENU_2}  Set Variable  xpath=//a[@title="LGPD"]
    ${MENU_3}  Set Variable  xpath=//a[@title="Grupo"]



  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

  ELSE
    ${NOME_1}  Set Variable  Configurações
    ${NOME_2}  Set Variable  LGPD

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
  
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END
  END

Clicar No Menu Configuração | Sistema
  ${MENU_1}  Set Variable  xpath=//a[@title='Configuração']
  ${MENU_2}  Set Variable  xpath=//a[@title='Sistema']
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Relatório | Importar
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Relatório'])[2]
    ${MENU_2}  Set Variable  xpath=//a[@title='Importar']
  ELSE
    ${NOME_1}  Set Variable  Relatórios
    ${NOME_2}  Set Variable  Importar

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Relatório | Ativar
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Relatório'])[2]
    ${MENU_2}  Set Variable  xpath=//a[@title='Ativar']
  ELSE
    ${NOME_1}  Set Variable  Relatórios
    ${NOME_2}  Set Variable  Ativar

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Relatório | Grupo de Relatório
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Relatório'])[2]
    ${MENU_2}  Set Variable  xpath=//a[@title='Grupo de Relatório']
  ELSE
    ${NOME_1}  Set Variable  Relatórios
    ${NOME_2}  Set Variable  Grupo de Relatório

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Relatório | Consulta Impressa
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Relatório'])[2]
    ${MENU_2}  Set Variable  xpath=//a[@title='Consulta Impressa']
  ELSE
    ${NOME_1}  Set Variable  Relatórios
    ${NOME_2}  Set Variable  Consulta Impressa

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Relatório | Meu Acesso
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Relatório"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Meu Acesso"]
  ELSE
    ${NOME_1}  Set Variable  Relatórios
    ${NOME_2}  Set Variable  Meu Acesso

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  0.0s



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Veículos | Prontuário de Veículos
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Veículo'])[2]
    ${MENU_2}  Set Variable  xpath=//a[@title='Prontuário de Veículos']
  ELSE
    ${NOME_1}  Set Variable  Veículos
    ${NOME_2}  Set Variable  Prontuário de Veículos

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Veículos | Cadastro | Veículo
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Veículo'])[2]
    ${MENU_2}  Set Variable  xpath=(//a[@title='Cadastro'])[4]
    ${MENU_3}  Set Variable  xpath=(//a[@title='Veículo'])[3]
  ELSE
    ${NOME_1}  Set Variable  Veículos
    ${NOME_2}  Set Variable  Cadastro
    ${NOME_3}  Set Variable  Veículo

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[44]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Veículos | Cadastro | Marcas
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Veículo'])[2]
    ${MENU_2}  Set Variable  xpath=(//a[@title='Cadastro'])[4]
    ${MENU_3}  Set Variable  xpath=//a[@title='Marcas']
  ELSE
    ${NOME_1}  Set Variable  Veículos
    ${NOME_2}  Set Variable  Cadastro
    ${NOME_3}  Set Variable  Marcas

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[44]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Veículos | Cadastro | Modelos
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Veículo'])[2]
    ${MENU_2}  Set Variable  xpath=(//a[@title='Cadastro'])[4]
    ${MENU_3}  Set Variable  xpath=//a[@title='Modelos']
  ELSE
    ${NOME_1}  Set Variable  Veículos
    ${NOME_2}  Set Variable  Cadastro
    ${NOME_3}  Set Variable  Modelos

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[44]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  



  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Veículos | Cadastro | Acessórios
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Veículo'])[2]
    ${MENU_2}  Set Variable  xpath=(//a[@title='Cadastro'])[4]
    ${MENU_3}  Set Variable  xpath=//a[@title='Acessórios']
  ELSE
    ${NOME_1}  Set Variable  Veículos
    ${NOME_2}  Set Variable  Cadastro
    ${NOME_3}  Set Variable  Acessórios

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[44]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Veículos | Cadastro | Situações
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Veículo'])[2]
    ${MENU_2}  Set Variable  xpath=(//a[@title='Cadastro'])[4]
    ${MENU_3}  Set Variable  xpath=//a[@title='Situações']
  ELSE
    ${NOME_1}  Set Variable  Veículos
    ${NOME_2}  Set Variable  Cadastro
    ${NOME_3}  Set Variable  Situações

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[44]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Veículos | Cadastro | Motivo de Uso
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Veículo'])[2]
    ${MENU_2}  Set Variable  xpath=(//a[@title='Cadastro'])[4]
    ${MENU_3}  Set Variable  xpath=//a[@title='Motivo de Uso']
  ELSE
    ${NOME_1}  Set Variable  Veículos
    ${NOME_2}  Set Variable  Cadastro
    ${NOME_3}  Set Variable  Motivo de Uso

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[44]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Veículos | Frota | Utilização Veículos | Agendamentos de Veículo - Frota
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Veículo'])[2]
    ${MENU_2}  Set Variable  xpath=//a[@title='Frota']
    ${MENU_3}  Set Variable  xpath=//span[contains(text(),'Utilização Veículos')]
    ${MENU_4}  Set Variable  xpath=//a[@title='Agendamentos de Veículo - Frota']/text()
  ELSE
    ${NOME_1}  Set Variable  Veículos
    ${NOME_2}  Set Variable  Frota
    ${NOME_3}  Set Variable  Utilização Veículos
    ${NOME_4}  Set Variable  Agendamentos de Veículo - Frota

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Veículos | Frota | Utilização Veículos | Aprovação de Agendamentos - Frota
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Veículo'])[2]
    ${MENU_2}  Set Variable  xpath=//a[@title='Frota']
    ${MENU_3}  Set Variable  xpath=//span[contains(text(),'Utilização Veículos') ]
    ${MENU_4}  Set Variable  xpath=//a[@title='Aprovação de Agendamentos - Frota']
  ELSE
    ${NOME_1}  Set Variable  Veículos
    ${NOME_2}  Set Variable  Frota
    ${NOME_3}  Set Variable  Utilização Veículos
    ${NOME_4}  Set Variable  Aprovação de Agendamentos - Frota

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Veículos | Frota | Utilização Veículos | Entrega
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Veículo'])[2]
    ${MENU_2}  Set Variable  xpath=//a[@title='Frota']
    ${MENU_3}  Set Variable  xpath=//a[@title='Utilização Veículos']
    ${MENU_4}  Set Variable  xpath=//a[@title='Entrega']
  ELSE
    ${NOME_1}  Set Variable  Veículos
    ${NOME_2}  Set Variable  Frota
    ${NOME_3}  Set Variable  Utilização Veículos
    ${NOME_4}  Set Variable  Entrega

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[2]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Veículos | Frota | Utilização Veículos | Devolução
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Veículo'])[2]
    ${MENU_2}  Set Variable  xpath=//a[@title='Frota']
    ${MENU_3}  Set Variable  xpath=//span[contains(text(),'Utilização Veículos') ]
    ${MENU_4}  Set Variable  xpath=//a[@title='Devolução']
  ELSE
    ${NOME_1}  Set Variable  Veículos
    ${NOME_2}  Set Variable  Frota
    ${NOME_3}  Set Variable  Utilização Veículos
    ${NOME_4}  Set Variable  Devolução

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Veículos | Frota | Empresa | Condutores
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Veículo'])[2]
    ${MENU_2}  Set Variable  xpath=//a[@title='Frota']
    ${MENU_3}  Set Variable  xpath=(//span[contains(text(),'Empresa')])[3]
    ${MENU_4}  Set Variable  xpath=//a[@title='Condutores']
  ELSE
    ${NOME_1}  Set Variable  Veículos
    ${NOME_2}  Set Variable  Frota
    ${NOME_3}  Set Variable  Empresa
    ${NOME_4}  Set Variable  Condutores

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Veículos | Frota | Empresa | Veículos
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Veículo'])[2]
    ${MENU_2}  Set Variable  xpath=//a[@title='Frota']
    ${MENU_3}  Set Variable  xpath=(//span[contains(text(),'Empresa')])[3]
    ${MENU_4}  Set Variable  xpath=//a[@title='Veículos']
  ELSE
    ${NOME_1}  Set Variable  Veículos
    ${NOME_2}  Set Variable  Frota
    ${NOME_3}  Set Variable  Empresa
    ${NOME_4}  Set Variable  Veículos

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]
    ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[4]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Veículos | Frota | Empresa | Históricos | Crachá Veículo
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Veículo'])[2]
    ${MENU_2}  Set Variable  xpath=//a[@title='Frota']
    ${MENU_3}  Set Variable  xpath=(//span[contains(text(),'Empresa')])[3]
    ${MENU_4}  Set Variable  xpath=//span[contains(text(),'Históricos')]
    ${MENU_5}  Set Variable  xpath=//a[@title='Crachá Veículo']
  ELSE
    ${NOME_1}  Set Variable  Veículos
    ${NOME_2}  Set Variable  Frota
    ${NOME_3}  Set Variable  Empresa
    ${NOME_4}  Set Variable  Históricos
    ${NOME_5}  Set Variable  Crachá Veículo

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
    ${MENU_5}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_5}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_5}
  Highlight Element      ${MENU_5}
  Click Element  ${MENU_5}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Veículos | Frota | Empresa | Históricos | Local Veículo
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Veículo'])[2]
    ${MENU_2}  Set Variable  xpath=//a[@title='Frota']
    ${MENU_3}  Set Variable  xpath=(//span[contains(text(),'Empresa')])[3]
    ${MENU_4}  Set Variable  xpath=//a[@title='Históricos']
    ${MENU_5}  Set Variable  xpath=//a[@title='Local Veículo']
  ELSE
    ${NOME_1}  Set Variable  Veículos
    ${NOME_2}  Set Variable  Frota
    ${NOME_3}  Set Variable  Empresa
    ${NOME_4}  Set Variable  Históricos
    ${NOME_5}  Set Variable  Local Veículo

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
    ${MENU_5}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_5}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_5}
  Highlight Element      ${MENU_5}
  Click Element  ${MENU_5}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Veículos | Frota | Empresa | Históricos | Situação Veículo
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Veículo'])[2]
    ${MENU_2}  Set Variable  xpath=//a[@title='Frota']
    ${MENU_3}  Set Variable  xpath=(//a[@title='Empresa'])[3]
    ${MENU_4}  Set Variable  xpath=//span[contains(text(),'Históricos')]
    ${MENU_5}  Set Variable  xpath=//a[contains(text(),'Situação Veículo')]/text()
  ELSE
    ${NOME_1}  Set Variable  Veículos
    ${NOME_2}  Set Variable  Frota
    ${NOME_3}  Set Variable  Empresa
    ${NOME_4}  Set Variable  Históricos
    ${NOME_5}  Set Variable  Situação Veículo

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
    ${MENU_5}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_5}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_5}
  Highlight Element      ${MENU_5}
  Click Element  ${MENU_5}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Veículos | Frota | Seguros | Cobertura
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Veículo'])[2]
    ${MENU_2}  Set Variable  xpath=//a[@title='Frota']
    ${MENU_3}  Set Variable  xpath=//a[@title='Seguros']
    ${MENU_4}  Set Variable  xpath=//a[@title='Cobertura']
  ELSE
    ${NOME_1}  Set Variable  Veículos
    ${NOME_2}  Set Variable  Frota
    ${NOME_3}  Set Variable  Seguros
    ${NOME_4}  Set Variable  Cobertura

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Veículos | Frota | Seguros | Corretores
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Veículo'])[2]
    ${MENU_2}  Set Variable  xpath=//a[@title='Frota']
    ${MENU_3}  Set Variable  xpath=//a[@title='Seguros']
    ${MENU_4}  Set Variable  xpath=//a[@title='Corretores']
  ELSE
    ${NOME_1}  Set Variable  Veículos
    ${NOME_2}  Set Variable  Frota
    ${NOME_3}  Set Variable  Seguros
    ${NOME_4}  Set Variable  Corretores

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Veículos | Frota | Seguros | Cadastro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Veículo'])[2]
    ${MENU_2}  Set Variable  xpath=//a[@title='Frota']
    ${MENU_3}  Set Variable  xpath=//a[@title='Seguros']
    ${MENU_4}  Set Variable  xpath=(//a[@title='Cadastro'])[5]
  ELSE
    ${NOME_1}  Set Variable  Veículos
    ${NOME_2}  Set Variable  Frota
    ${NOME_3}  Set Variable  Seguros
    ${NOME_4}  Set Variable  Cadastro

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[45]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Veículos | Frota | Ocorrências | Sinistros
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Veículo'])[2]
    ${MENU_2}  Set Variable  xpath=//a[@title='Frota']
    ${MENU_3}  Set Variable  xpath=//a[@title='Ocorrências']
    ${MENU_4}  Set Variable  xpath=//a[@title='Sinistros']
  ELSE
    ${NOME_1}  Set Variable  Veículos
    ${NOME_2}  Set Variable  Frota
    ${NOME_3}  Set Variable  Ocorrências
    ${NOME_4}  Set Variable  Sinistros

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[2]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Veículos | Frota | Ocorrências | Reclamações
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Veículo'])[2]
    ${MENU_2}  Set Variable  xpath=//a[@title='Frota']
    ${MENU_3}  Set Variable  xpath=//a[@title='Ocorrências']
    ${MENU_4}  Set Variable  xpath=//a[@title='Reclamações']
  ELSE
    ${NOME_1}  Set Variable  Veículos
    ${NOME_2}  Set Variable  Frota
    ${NOME_3}  Set Variable  Ocorrências
    ${NOME_4}  Set Variable  Reclamações

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[2]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Veículos | Frota | Ocorrências | Infrações | Cadastro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Veículo'])[2]
    ${MENU_2}  Set Variable  xpath=//a[@title='Frota']
    ${MENU_3}  Set Variable  xpath=//span[contains(text(),'Ocorrências ')]
    ${MENU_4}  Set Variable  xpath=//a[@title='Infrações']
    ${MENU_5}  Set Variable  xpath=(//a[@title='Cadastro'])[6]
  ELSE
    ${NOME_1}  Set Variable  Veículos
    ${NOME_2}  Set Variable  Frota
    ${NOME_3}  Set Variable  Ocorrências
    ${NOME_4}  Set Variable  Infrações
    ${NOME_5}  Set Variable  Cadastro

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[2]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
    ${MENU_5}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_5}')])[46]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_5}
  Highlight Element      ${MENU_5}
  Click Element  ${MENU_5}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Veículos | Frota | Ocorrências | Infrações | Multas
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Veículo'])[2]
    ${MENU_2}  Set Variable  xpath=//a[@title='Frota']
    ${MENU_3}  Set Variable  xpath=//a[@title='Ocorrências']
    ${MENU_4}  Set Variable  xpath=//a[@title='Infrações']
    ${MENU_5}  Set Variable  xpath=//a[@title='Multas']
  ELSE
    ${NOME_1}  Set Variable  Veículos
    ${NOME_2}  Set Variable  Frota
    ${NOME_3}  Set Variable  Ocorrências
    ${NOME_4}  Set Variable  Infrações
    ${NOME_5}  Set Variable  Multas

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[2]
    ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
    ${MENU_5}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_5}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_5}
  Highlight Element      ${MENU_5}
  Click Element  ${MENU_5}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Veículos | Frota | Consultas | Agendamento
#Veículo | Frota | Ulilização Veículos | Agendamentos de Veículos - Frota
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Veículo'])[2]
    ${MENU_2}  Set Variable  xpath=//a[@title='Frota']
    ${MENU_3}  Set Variable  xpath=//span[contains (text(),'Consultas')]
    ${MENU_4}  Set Variable  xpath=(//a[@title='Agendamento'])[3]
  ELSE
    ${NOME_1}  Set Variable  Veículos
    ${NOME_2}  Set Variable  Frota
    ${NOME_3}  Set Variable  Consultas
    ${NOME_4}  Set Variable  Agendamento

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[7]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}

  Sleep  ${MNU_TIMER}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Veículos | Frota | Consultas | Utilização
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Veículo'])[2]
    ${MENU_2}  Set Variable  xpath=//a[@title='Frota']
    ${MENU_3}  Set Variable  xpath=//span[contains (text(),'Consultas')]
    ${MENU_4}  Set Variable  xpath=//a[@title='Utilização']
  ELSE
    ${NOME_1}  Set Variable  Veículos
    ${NOME_2}  Set Variable  Frota
    ${NOME_3}  Set Variable  Consultas
    ${NOME_4}  Set Variable  Utilização

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
    ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
    ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[2]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Veículos | Definições
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=(//a[@title='Veículo'])[2]
    ${MENU_2}  Set Variable  xpath=//a[@title='Definições']
  ELSE
    ${NOME_1}  Set Variable  Veículos
    ${NOME_2}  Set Variable  Definições

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Ajuda | Conteúdo da Ajuda
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Ajuda"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Conteúdo da Ajuda"]
  ELSE
    ${NOME_1}  Set Variable  Ajuda
    ${NOME_2}  Set Variable  Conteúdo da Ajuda

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Ajuda | Sobre
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Ajuda"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Sobre"]
  ELSE
    ${NOME_1}  Set Variable  Ajuda
    ${NOME_2}  Set Variable  Sobre

    ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
    ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
  # Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END

Clicar No Menu Sair | Sair
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${MENU_1}  Set Variable  xpath=//*[@title="Sair"]
    ${MENU_2}  Set Variable  xpath=//*[@title="Sair"]
  ELSE
    ${NOME_1}  Set Variable  Sair
    ${NOME_2}  Set Variable  Sair

    ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
    ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
  END
  


  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}



  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
# Necessário clicar em algum lugar para minimizar o menu depois da navegação na 246, caso contrario o teste dará erro
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Click Element At Coordinates  locator=${MNU_CLICK}  xoffset=0  yoffset=30
  END