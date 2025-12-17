*** Settings ***
Library  SeleniumLibrary
Library  ../../superutil/Custom.py
Resource    ../resource_utils.robot

*** Variables ***
${BTN_OBJ}  Btn

*** Keywords ***
#VERIFY
E Verificar botão Incluir
  ${BTN}  Set Variable  xpath=//a[@id='sc_b_ins_t']
  Element Should Contain   ${BTN}     Incluir

E verificar o botão Voltar
  ${BTN}  Set Variable    xpath=(//a[@id='sc_b_sai_t'])[2]
  Element Should Contain   ${BTN}     Voltar

#CLICK
E Clicar No Botão Abrir Um Novo Registro
  ${NOME}  Set Variable  Abrir Um Novo Registro
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_b_new_top']|//*[@id='sc_b_new_t']|//*[@id='sc_btnNovo_top']|//*[@id='sc_btnNew_top']|//*[@id="sc_btnNovaEntrada_bot"]|//*[@id="sc_btn_novo_top"] 


  Sleep  1s
  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Agenda

  ${NOME}  Set Variable  Agenda
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btnagenda_bot']




  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Cadastro

  ${NOME}  Set Variable  Cadastro
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btn_inserecolaborar_top']




  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Buscar dados externos (Colaborador)
  ${NOME}  Set Variable  Buscar dados externos
  ${ELEMENT}   Set Variable  xpath=//a[@id='cap_idcolab'] 
  Sleep  2s
  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}  

Clicar No Botão Buscar dados externos (COD_VISITANTE)
  ${NOME}  Set Variable  Buscar dados externos
  ${ELEMENT}   Set Variable  xpath=//a[@id='cap_idvisi'] 
  Sleep  2s
  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}    

Clicar No Botão Buscar dados externos (Colaborador responsável)
  ${BTN}  Set Variable  xpath=//a[@id='cap_codiresp'] | //a[@id='cap_idcolab'] | cap_icard
  Wait Until Element is Visible  ${BTN}
  Click Element  ${BTN}
  Sleep  2s  

Clicar No Botão Buscar dados externos (Organograma)
  ${NOME}  Set Variable  Buscar dados externos
  ${ELEMENT}   Set Variable  xpath=//a[@id='cap_codiorgaloca']

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}    

Clicar No Botão Buscar dados externos (Local do Organograma)
  ${NOME}  Set Variable  Buscar dados externos
  ${ELEMENT}   Set Variable  xpath=//a[@id='cap_locaorga']

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT} 

Clicar No Botão Buscar dados externos (Situação)
  ${NOME}  Set Variable  Buscar dados externos
  ${ELEMENT}   Set Variable  xpath=//a[@id='cap_situafas']

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}    

Clicar No Botão Buscar dados externos (Grupo de Cargo)
  ${NOME}  Set Variable  Buscar dados externos 
  ${ELEMENT}   Set Variable  xpath=//a[@id='cap_codiestrcarg']

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}      

Clicar No Botão Buscar dados externos (Cargo)
  ${NOME}  Set Variable  Buscar dados externos
  ${ELEMENT}   Set Variable  xpath=//a[@id='cap_codicarg']

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}   

Clicar No Botão Buscar dados externos (Filial)
  ${NOME}  Set Variable  Buscar dados externos
  ${ELEMENT}   Set Variable  xpath=//a[@id='cap_codifili']

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}     

Clicar No Botão Buscar dados externos (COD_TERC)
  ${NOME}  Set Variable  Buscar dados externos
  ${ELEMENT}   Set Variable  xpath=//a[@id='cap_idcolab']

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}       

Clicar No Botão Buscar dados externos (COD_GRUPO_ACESSO)
  ${NOME}  Set Variable  Buscar dados externos
  ${ELEMENT}   Set Variable  xpath=//a[@id='cap_codiperm']

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}     

Clicar No Botão Buscar dados externos (COD_EMPR_TERC)
  ${NOME}  Set Variable  Buscar dados externos
  ${ELEMENT}   Set Variable  xpath=//a[@id='cap_codiemprcont']

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}   
  

Clicar No Botão Buscar dados externos (CONTRATO)
  ${NOME}  Set Variable  Buscar dados externos
  ${ELEMENT}   Set Variable  xpath=//a[@id='cap_idcont']

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}   

Clicar No Botão Buscar dados externos (CENTRO_CUSTO)
  ${NOME}  Set Variable  Buscar dados externos
  ${ELEMENT}   Set Variable  xpath=//a[@id='cap_idcentcust']

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}      

Clicar No Botão Buscar dados externos (CRACHÁ)
  ${NOME}  Set Variable  Buscar dados externos
  ${ELEMENT}   Set Variable  xpath=//a[@id='cap_icard']

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}  

Clicar No Botão Buscar dados externos (Dia_Util)
  ${NOME}  Set Variable  Buscar dados externos
  ${ELEMENT}   Set Variable  xpath=//a[@id='cap_codiperm']

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}  

Clicar No Botão Buscar dados externos (Sábado)
  ${NOME}  Set Variable  Buscar dados externos
  ${ELEMENT}   Set Variable  xpath=//a[@id='cap_permacessaba']

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}      

Clicar No Botão Buscar dados externos (Domingo)
  ${NOME}  Set Variable  Buscar dados externos
  ${ELEMENT}   Set Variable  xpath=//a[@id='cap_permacesdomi']

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}     

Clicar No Botão Buscar dados externos (Feriado)
  ${NOME}  Set Variable  Buscar dados externos
  ${ELEMENT}   Set Variable  xpath=//a[@id='cap_permacesferi']

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}      

Clicar No Botão Buscar dados externos (Cod_Autorizador)
  ${NOME}  Set Variable  Buscar dados externos
  ${ELEMENT}   Set Variable  xpath=//a[@id='cap_idcolaautolibe']

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}     

Clicar No Botão Buscar dados externos (EMP_TERC)
  ${NOME}  Set Variable  Buscar dados externos
  ${ELEMENT}   Set Variable  xpath=//a[@id='cap_codiemprcont']

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}     

Clicar No Botão Buscar dados externos (VEICULO)
  ${NOME}  Set Variable  Buscar dados externos
  ${ELEMENT}   Set Variable  xpath=//a[@id='cap_idveic']

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}        


Clicar No Botão Agendamento
  ${NOME}  Set Variable  Agendamento
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btnagendamento_bot']|//*[@id='sc_btn_Agendamento_top']|//*[@id='sc_btnNovoAgendado_top']|//*[@id="id_img_sc_btn_agendamento2_top"] | //a[@id='link_7']



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Editar o Registro "${NUM}"
  ${NOME}       Set Variable      Editar o Registro
  ${ELEMENT}    Set Variable      xpath=(//a[@title='Editar o Registro'])[${NUM}]
  Sleep  2s
  Element Should Be Visible   ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element    ${ELEMENT}


${ARGUMENTO} Clicar no Botão Incluir o Registro
  ${NOME}  Set Variable  Incluir o Registro  
  ${ELEMENT}   Set Variable  xpath=//a[@id='sc_b_ins_t']
  ${POP_UP}  Set Variable  xpath=//*[@id="swal2-content" and contains(text(), "Novo registro inserido com sucesso!")]

  Wait Until Element is Visible  ${ELEMENT}    timeout=10s
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}
  Wait Until Element is Visible   ${POP_UP}     timeout=10s  
  Element Should Contain    ${POP_UP}  Novo registro inserido com sucesso!

 

Clicar No Botão Alterar o Registro
  ${NOME}  Set Variable  Alterar o Registro
  ${ELEMENT}   Set Variable  xpath=//a[@title='Gravar o registro'] | //a[@id='sc_b_upd_t']
  ${POP_UP}  Set Variable  xpath=//*[@id='swal2-content']//*[contains(text(), "Novo registro inserido com sucesso!")]

  
  Sleep  2s
  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

  Unselect Frame
  Sleep  2s
  Wait Until Element is Visible  ${POP_UP}
  Element Should Contain   ${POP_UP}  Registro atualizado com sucesso!
  Sleep  2s

Clicar No Botão Alterar o Registro (Inferior)
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${NOME}  Set Variable   Alterar o Registro
    ${ELEMENT}   Set Variable  xpath=//span[contains(text(),'Alterar o Registro')]
  ELSE
    ${NOME}  Set Variable  Alterar o Registro
    ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btnSubmit_bot']|//*[@id='sc_btnsubmit_bot']|//*[@id='sc_btnSave_bot']|//*[@id='sc_b_upd_b']
  END
 
  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}
  
Clicar No Botão Salvar (Inferior)
  ${NOME}  Set Variable  Alterar o Registro
  ${ELEMENT}   Set Variable  xpath=//*[@id="sc_btnSave_bot"]
  
  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Apagar
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${NOME}  Set Variable  Excluir
    ${ELEMENT}   Set Variable  xpath=//a[@id='sc_b_del_t']
  ELSE
    ${NOME}  Set Variable  Apagar
    ${ELEMENT}   Set Variable  xpath=//*[@id="sc_b_del_t"] | //*[@id="sc_btnExcluir_top"] | //*[@id="sc_b_exc_top"] | //*[@id="sc_btndelete_top"] | //*[@id="sc_exc_line_1"] 
  END

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}
  sleep  1s
  Click Element  xpath=/html/body/div[7]/div/div[3]/button[1] | /html/body/div[8]/div/div[3]/button[1] | /html/body/div[9]/div/div[3]/button[1]
Clicar No Botão Apagar (Inferior)

  ${NOME}  Set Variable  Apagar
  ${ELEMENT}   Set Variable  id=sc_b_del_b

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

E Clicar No Botão Pesquisar Registros
  ${NOME}     Set Variable   Pesquisar Registros  
  ${ELEMENT}  Set Variable   xpath=//a[@id='pesq_top']

  Wait Until Element is Visible  ${ELEMENT}    10s
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Nova Entrada
  ${NOME}  Set Variable  Nova Entrada
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btnnovaentrada_bot'] | //a[@id="link_5"]



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Cadastrar Entrada
  ${NOME}      Set Variable   Cadastrar Entrada
  ${ELEMENT}   Set Variable   xpath=//a[@id='link_5']


  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}  


Clicar No Botão Pesquisar Registros (Inferior)
  ${NOME}  Set Variable  Pesquisar Registros
  ${ELEMENT}   Set Variable  xpath=//a[@id='sc_b_pesq_bot']

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element              ${ELEMENT}
  Click Element                  ${ELEMENT}

E Clicar No Botão Pesquisa
  ${NOME}     Set Variable   Pesquisa  
  ${ELEMENT}  Set Variable   xpath=//*[@id="sc_b_pesq_bot"]

  Wait Until Element is Visible  ${ELEMENT}    10s
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}
  

Clicar No Botão Pesquisar
  ${NOME}      Set Variable   Pesquisar registros
  ${ELEMENT}   Set Variable   xpath=//a[@title='Pesquisar registros']
  Sleep  2s
  Wait Until Element is Visible   ${ELEMENT}
  Highlight Element               ${ELEMENT}
  Click Element                   ${ELEMENT}

${ARGUMENTO} Clicar No Botão Voltar Para Pagina Anterior
#Clicar No Botão Voltar
  ${NOME}  Set Variable  Voltar
  ${ELEMENT}   Set Variable   xpath=(//a[@id='sc_b_sai_t'])[2]

  Wait Until Element is Visible  ${ELEMENT}    timeout=10s
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

  
  


Clicar No Botão Voltar (Inferior)
  ${NOME}  Set Variable  Voltar
  ${ELEMENT}   Set Variable  id=sc_b_cancel_bot



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Retornar Ao Início
  ${NOME}  Set Variable  Retornar Ao Início
  ${ELEMENT}   Set Variable  id=first_top



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Retornar Um Registro
  ${NOME}  Set Variable  Retornar Um Registro
  ${ELEMENT}   Set Variable  xpath=//*[@id='back_top']|//*[@id='sc_b_ret_t']



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Avançar Para o Próximo Registro

  ${NOME}  Set Variable  Avançar Para o Próximo Registro
  ${ELEMENT}   Set Variable  id=forward_top



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Avançar Para o Final

  ${NOME}  Set Variable  Avançar Para o Final
  ${ELEMENT}   Set Variable  xpath=//*[@id='last_top']|//*[@id="sc_b_fim_t"]



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Ajuda
  ${NOME}  Set Variable  Ajuda
  ${ELEMENT}   Set Variable  id=sc_btn_ajuda_top

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


${ARGUMENTO} Clicar No Botão Editar o Registro
  ${NOME}       Set Variable      Editar o Registro
  ${ELEMENT}    Set Variable      xpath=(//a[@id='bedit'])[1] | (//a[@title='Editar o Registro'])

  Sleep  2s
  Wait Until Element is Visible  ${ELEMENT}
  Element Should Be Visible   ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element    ${ELEMENT}  
  Sleep  2s

Clicar No Botão Ajuda (Inferior)

  ${NOME}  Set Variable  Ajuda
  ${ELEMENT}   Set Variable  id=sc_btn_ajuda_bot



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}



${ARGUMENTO} Clicar No Botão OK ${ARGUMENTO}
  Wait Until Element is Visible    swal2-confirm scButton_sweetalertok swal2-styled    10s
  Highlight Element    swal2-confirm scButton_sweetalertok swal2-styled
  Click Element    swal2-confirm scButton_sweetalertok swal2-styled


Clicar no botão Local
  ${NOME}  Set Variable  Local
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btnTreeView_top']



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Ficha Complementar

  ${NOME}  Set Variable  Ficha Complementar
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btncomp_top']|//*[@id='sc_btn_complementar_top']



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Últimas Visitas
#Clicar No Botão: Acessar Visitas (246)
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${NOME}  Set Variable       Última Visita (Filtro)
  ${ELEMENT}   Set Variable   xpath=//a[contains(text(),'Acessar Visitas')]
  ELSE
  ${NOME}  Set Variable  Últimas Visitas
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btnultimas_bot']
  END

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Perfil de Acesso

  ${NOME}  Set Variable  Perfil de Acesso
  ${ELEMENT}   Set Variable  id=sc_btnacesso_top



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Veículos

  ${NOME}  Set Variable  Veículos
  ${ELEMENT}   Set Variable  id=sc_btnveiculo_top



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Imprimir

  ${NOME}  Set Variable  Imprimir
  ${ELEMENT}   Set Variable  id=sc_btnimprime_top



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Histórico Colaborador

  ${NOME}  Set Variable  Histórico Colaborador
  ${ELEMENT}   Set Variable  xpath=//*[@id="sc_btn_historico_top"] | //*[@id="sc_btnhistorico_top"]



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Faixa de Acesso

  ${NOME}  Set Variable  Faixa de Acesso
  ${ELEMENT}   Set Variable  id=sc_btn_faixahoraria_top



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Foto

  ${NOME}  Set Variable  Foto
  ${ELEMENT}   Set Variable  id=sc_btnfoto_top



  Wait Until Element is Visible  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Ler Smart Card

  ${NOME}  Set Variable  Ler Smart Card
  ${ELEMENT}   Set Variable  id=sc_btnLerCracha_top



  Wait Until Element is Visible  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Limpar Dados

  ${NOME}  Set Variable  Limpar Dados
  ${ELEMENT}   Set Variable  id=limpa_frm_bot



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Processar

  ${NOME}  Set Variable  Processar
  ${ELEMENT}   Set Variable  id=sc_btnProcessar_top



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Retornar a Página Anterior

  ${NOME}  Set Variable  Retornar a Página Anterior 
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_b_cancel_bot'] | //*[@id='sai_top']



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Gerar PDF
  ${NOME}  Set Variable  Gerar PDF
  ${ELEMENT}   Set Variable  id=pdf_top



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Gerar XLS

  ${NOME}  Set Variable  Gerar XLS
  ${ELEMENT}   Set Variable  id=xls_top



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Gerar XML

  ${NOME}  Set Variable  Gerar XML
  ${ELEMENT}   Set Variable  id=xml_top



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Gerar CSV

  ${NOME}  Set Variable  Gerar CSV
  ${ELEMENT}   Set Variable  id=csv_top



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Novo Item

  ${NOME}  Set Variable  Novo Item
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btnNovoItem_bot']|//*[@id='sc_btn_novo_bot']



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Totais

  ${NOME}  Set Variable  Totais
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btntotais_top']



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Seção
  #Botão localizado por indice sem um xpath definitivo.

  ${NOME}  Set Variable  Seção
  ${ELEMENT}   Set Variable  xpath=//*[@id="apl_cnsLayoutImportacao#?#1"]/tbody/tr[2]/td[4]/font/a/font/img



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Detalhe Titular
  #Botão localizado por indice sem um xpath definitivo. App: consrestrito
  ${NOME}  Set Variable  Detalhe Titular
  ${ELEMENT}   Set Variable  xpath=//*[@id="apl_consrestrito#?#1"]/tbody/tr[2]/td[6]/font/a/font/img



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Detalhe Acesso
  #Botão localizado por indice sem um xpath definitivo. App: consrestrito
  ${NOME}  Set Variable  Detalhe Acesso
  ${ELEMENT}   Set Variable  xpath=//*[@id="apl_consrestrito#?#1"]/tbody/tr[2]/td[7]/font/a/font/img



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Seleção
  ${NOME}  Set Variable  Seleção
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btnselecao_bot']

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Selecionar esta linha
  ${NOME}  Set Variable   Selecionar esta linha
  ${ELEMENT}   Set Variable   xpath=(//a[@title='Selecionar esta linha'])[1]
  
  Sleep  4s
  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element   ${ELEMENT}
  Click Element  ${ELEMENT}  


Clicar No Botão Detalhe
  #Botão localizado por indice sem um xpath definitivo. App: consrelclockinclockout | fichaSaidaVisitantes
  ${NOME}  Set Variable  Detalhe
  ${ELEMENT}   Set Variable  xpath=//*[@id="apl_consrelclockinclockout#?#1"]/tbody/tr[1]/td/font/a/img | //*[@id="apl_cnsSaidaVisitantes#?#1"]/tbody/tr[3]/td[7]/font/a/font/img

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Opções
  #Botão localizado por indice sem um xpath definitivo. App: consentradagrupo
  ${NOME}  Set Variable  Opções
  ${ELEMENT}   Set Variable  xpath=//*[@id="apl_consentradagrupo#?#1"]/tbody/tr[2]/td[2]/font/img



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Filtro
  ${NOME}  Set Variable  Filtro
  ${ELEMENT}   Set Variable  xpath=//input[@name='btnFiltro']


  Sleep  2s
  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Filtrar
  ${NOME}  Set Variable  Filtro
  ${ELEMENT}   Set Variable  xpath=//input[@id='btnFILTRO']


  Sleep  2s
  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}  

Clicar No Botão Iniciar
  ${NOME}  Set Variable  Filtro
  ${ELEMENT}   Set Variable  xpath=//input[@id='btnON']


  Sleep  2s
  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}  


Clicar No Botão Detalhe Atribuição
  #Botão localizado por indice sem um xpath definitivo. App: frmretiradacoletivabeneficios
  ${NOME}  Set Variable  Detalhe Atribuição
  ${ELEMENT}   Set Variable  xpath=//*[@id="id_imghtml_imgdetalhe"]/a/font/img



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Mostrar
  #
  ${NOME}  Set Variable  Mostrar b_mostrar
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btnmostrar_bot']|//*[@name='b_mostrar']



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Entradas - Faixas Horárias
  ${NOME}  Set Variable  Entradas - Faixas Horárias
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btnEntrColetores_top']



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Saídas
  ${NOME}  Set Variable  Saídas
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btnSaidaColetor_top']



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Favoritos
  ${NOME}  Set Variable  Favoritos
  ${ELEMENT}   Set Variable  xpath=//*[@id="tblFavoritos"]/tbody/tr[3]/td/font/img



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Cadastro de Datas
  ${NOME}  Set Variable  Cadastro de Datas
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btndata_top']



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Rec
  #Botão localizado por indice sem um xpath definitivo. App: consmonitoraralarme
  ${NOME}  Set Variable  Rec
  ${ELEMENT}   Set Variable  xpath=//*[@id="apl_consmonitoraralarme#?#1"]/tbody/tr[2]/td[10]/font/a/font/img



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Tra
  #Botão localizado por indice sem um xpath definitivo. App: consmonitoraralarme
  ${NOME}  Set Variable  Tra
  ${ELEMENT}   Set Variable  xpath=//*[@id="apl_consmonitoraralarme#?#1"]/tbody/tr[2]/td[11]/font/a/font/img



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Sair
  #Botão localizado por indice sem um xpath definitivo. App: conssaidavisitantes
  ${NOME}  Set Variable  Sair
  ${ELEMENT}   Set Variable  xpath=//*[@id="apl_conssaidavisitantes#?#1"]/tbody/tr[2]/td[2]/font/a/font/img



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Comprovante
  ${NOME}  Set Variable  Comprovante
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btnComprovanteEPI_top']



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Item
  #Botão localizado por indice sem um xpath definitivo. App: cnsSecaoLayout
  ${NOME}  Set Variable  Item
  ${ELEMENT}   Set Variable  xpath=//*[@id="apl_cnsSecaoLayout#?#1"]/tbody/tr[3]/td[5]/font/a/font/img



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Editar (Organograma)
  ${NOME}  Set Variable  Editar 
  ${ELEMENT1}   Set Variable  xpath=/html/body/div[2]/div/table/tr[1]/td/div[1]/div[2]
  ${ELEMENT2}   Set Variable  xpath=/html/body/div[2]/div/table/tr[1]/td/div[1]/div[2]/ul/li[1]/a



  Wait Until Element is Visible  ${ELEMENT1}
  Highlight Element  ${ELEMENT1}
  Click Element  ${ELEMENT1}

  Wait Until Element is Visible  ${ELEMENT2}
  Highlight Element  ${ELEMENT2}
  Click Element  ${ELEMENT2}


Clicar No Botão Editar Esta Linha
  #Botão localizado por indice sem um xpath definitivo. App: frmComandosEquipamentos
  ${NOME}  Set Variable  Item
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_open_line_1']



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Engrenagem
  #Botão localizado por indice sem um xpath definitivo. App: frmDevolveChave | ctravisocreditos
  ${NOME}  Set Variable  Item
  ${ELEMENT}   Set Variable  xpath=//*[@id="apl_cnsMovimentacaoChaves#?#1"]/tbody/tr[2]/td[1]/font/a/font/img | //*[@id="apl_cnsMovimentacaoGVolumes#?#1"]/tbody/tr[2]/td[1]/font/a/font/img | //*[@id='sc_btnprocessa_bot']



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Colunas

  ${NOME}  Set Variable  Item
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btnColumns_top']



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar no Botão Testar Email

  ${NOME}  Set Variable  Item
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btnTestarEmail_top']



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Detalhe do Evento
  #Botão localizado por indice sem um xpath definitivo. App: cnsLogSuriDetalhe
  ${NOME}  Set Variable  Item
  ${ELEMENT}   Set Variable  xpath=//*[@id="apl_cnsLogSuri#?#1"]/tbody/tr[2]/td[11]/font/a/font/img



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Atualizar Esta Linha 
  
  ${NOME}  Set Variable  Atualizar esta linha 
  ${ELEMENT}   Set Variable  xpath=//a[@title="Atualizar esta linha"]
  


  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Atualizar
  ${NOME}  Set Variable  Item
  ${ELEMENT}   Set Variable  xpath=//*[@id="sc_atualizarRegistros_top"] | //*[@id="sc_btnsubmit_top"] | //*[@id="sc_btnatuliza_top"] 

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Equipamento

  ${NOME}  Set Variable  Item
  ${ELEMENT}   Set Variable  xpath=//*[@id="sc_btnTmp_top"]



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Nova Linha

  ${NOME}  Set Variable  Item
  ${ELEMENT}   Set Variable  xpath=//*[@title='Nova linha'][@onclick='do_ajax_frm_tipoUsuario_add_new_line(); return false'] | //*[@id="sc_ins_line_1"]



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Inserir Nova Linha
  ${NOME}  Set Variable  Inserir nova  linha
  ${ELEMENT}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[1]/td/div/div/table/tbody/tr[2]/td[2]/a[1]



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Termo de Consentimento (Inferior)

  ${NOME}  Set Variable  Item
  ${ELEMENT}   Set Variable  id=sc_btntermo_bot



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT} 


Clicar No Botão Gerar QRCode

  ${NOME}  Set Variable  Item
  ${ELEMENT}   Set Variable  id=sc_btnQrcode_top



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT} 


Clicar No Botão Gerar QRCode (Inferior)

  ${NOME}  Set Variable  Item
  ${ELEMENT}   Set Variable  id=sc_btncode_bot



  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT} 


Clicar No Botão Gravar o Registro
  ${NOME}  Set Variable  Alterar o Registro
  ${ELEMENT}   Set Variable  xpath=//a[@title='Gravar o registro'] | //a[@id='sc_b_upd_t']
  ${POP_UP}  Set Variable  xpath=//*[@id="swal2-content" and contains(text(), "Registro atualizado com sucesso!")]
  Sleep  2s
  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

  Unselect Frame
  Sleep  3s
  Wait Until Element is Visible  ${POP_UP}
  Element Should Contain   ${POP_UP}  Registro atualizado com sucesso!
  Sleep  2s


${ARGUMENTO} Clicar No Botão Excluir
  ${ELEMENT}   Set Variable  xpath=//a[@id='sc_b_del_t']
  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}
  Sleep  2s

Clicar No Botão Salvar
  ${NOME}  Set Variable  Alterar o Registro
  ${ELEMENT}   Set Variable  xpath=//a[@title='Gravar o registro'] | //a[@id='sc_b_upd_t'] | //a[@title='Gravar']
  ${POP_UP}  Set Variable  xpath=//*[@id="swal2-content" and contains(text(), "Registro atualizado com sucesso!")]

  Sleep  2s
  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

  Unselect Frame
  Sleep  3s
  Wait Until Element is Visible  ${POP_UP}
  Element Should Contain   ${POP_UP}  Registro atualizado com sucesso!
  Sleep  2s


Clicar No Campo: Busca Rápida "${BUSCAR}"
  ${VALOR}  Set Variable   Busca Rapida
  ${ELEMENT}  Set Variable  xpath=//input[@id="SC_fast_search_top"]
  ${BUTTON}    Set Variable  xpath=//img[@id='SC_fast_search_submit_top']
  
  Sleep  2s
  Wait Until Element is Visible  ${ELEMENT} 
  Click Element   ${ELEMENT}
  Input Text      ${ELEMENT}  ${BUSCAR}
  Click Element   ${BUTTON}




  
