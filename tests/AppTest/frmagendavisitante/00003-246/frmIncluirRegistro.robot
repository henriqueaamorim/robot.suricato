*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmagendavisitante.robot
Resource        ../../../../resource/app/resource_consagendamentovisitante.robot
Resource        ../../../../resource/app/resource_cnsPermissoesAcessoPesquisa.robot
Resource        ../../../../resource/app/resource_cnscolab.robot
Resource        ../../../../resource/app/resource_consvisitantecorpcad.robot
Resource        ../../../../resource/app/resource_cnsveiculos.robot


Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Agendamento de Visitante (Inclusão)


*** Test Cases ***
Testcase: Acessar Tela: Agendamento de Visitante (Inclusão)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Visitante | Agendamento Visitante
  Quando eu visualizar a tela: Agendamento de Visitante (Consulta)
  E clicar no botão: Abrir um novo registro
  E visualizar a tela: Agendamento de Visitante (Inclusão)
  #Agendamento	
  Então devo preencher o campo: Data Prevista * "14/01/2025"
  E preencher o campo: Hora Prevista * "08:00"
  E selecionar uma opção no campo: Tipo de Visita * "AUTOMAÇÃO"
  E preencher o campo: Data Validade * "14/01/2025"
  E preencher o campo: Hora Validade * "20:00"
  E clicar no botão: Buscar dados externos do campo: Código Grupo de Acesso *	
  E visualizar a tela: Grupo de Acesso (Consulta)
  E no campo: Busca rápida, pesquisar por "Automação" (Agendamento)
  E clicar no botão: Selecionar esta linha (Agendamento)
  E novamente visualizar a tela: Agendamento de Visitante (Inclusão)
  #Visitado	
  E clicar no botão: Buscar dados externos do campo: Código * (Visitado)
  E visualizar a tela: Colaborador (Filtro)
  E preencher o campo: Nome "Automação"
  E clicar no botão: Pesquisa
  E visualizar a tela: Colaborador (Consulta)
  E clicar no campo: Buscar rápida e pesquisar por "Automação"
  E clicar no botão: Selecionar esta linha (Visuitado)
  E mais uma vez visualizar a tela: Agendamento de Visitante (Inclusão)
  #Visitante	
  E clicar no botão: Buscar dados externos do campo: Código * (Visitante)
  E visualizar a tela: Visitante (Consulta)
  E no campo: Buscar rápida pesquisar por "Automa" (Visitante)
  E clicar no botão: Selecionar esta linha (Visitante)
  E novamente visualizar a tela: Agendamento de Visitante
  E clicar no botão: Buscar dados externos do campo: Código (Veiculo)
  E visualizar a tela: Veículos (Consulta)
  E clicar no botão: Selecionar esta linha (Veículo)
  E mais uma vez visualizar a tela: Agendamento de Visitante
  E clicar no botão: Incluir
  E visualizar a tela: Agendamento de Visitante (Edição)
  

*** Keywords ***
Dado que eu acesse o menu: Identificação | Visitante | Agendamento Visitante
  resource_mnu.Clicar No Menu Identificação | Visitante | Agendamento Visitante

Quando eu visualizar a tela: Agendamento de Visitante (Consulta)
  resource_consagendamentovisitante.Acessar Tela Consulta de Agendamento de Visitantes

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

E visualizar a tela: Agendamento de Visitante (Inclusão)
  resource_frmagendavisitante.Acessar Tela Agendamento de Visitas - Visitante (Inclusão)

Então devo preencher o campo: Data Prevista * "${DATA}"
   resource_frmagendavisitante.Preencher o campo Data Prevista "${DATA}"

E preencher o campo: Hora Prevista * "${HORA}"
  resource_frmagendavisitante.Preencher o campo Hora Prevista "${HORA}"

E selecionar uma opção no campo: Tipo de Visita * "${TIPO}"
  resource_frmagendavisitante.Preencher o campo Tipo de Visita "${TIPO}"

E preencher o campo: Data Validade * "${VALIDADE}"
  resource_frmagendavisitante.Preencher o campo Data de Validade da Visita "${VALIDADE}"

E preencher o campo: Hora Validade * "${HORA}"
  resource_frmagendavisitante.Preencher o campo Hora Validade "${HORA}"

E clicar no botão: Buscar dados externos do campo: Código Grupo de Acesso *	
  resource_btn.Clicar No Botão Buscar dados externos (COD_GRUPO_ACESSO)

E visualizar a tela: Grupo de Acesso (Consulta)
  resource_cnsPermissoesAcessoPesquisa.Acessar Tela Consulta de Grupo de Acesso

E no campo: Busca rápida, pesquisar por "${BUSCAR}" (Agendamento)
  resource_btn.Clicar No Campo: Busca Rápida "${BUSCAR}"

E clicar no botão: Selecionar esta linha (Agendamento)
  resource_btn.Clicar No Botão Selecionar esta linha

E novamente visualizar a tela: Agendamento de Visitante (Inclusão)
  resource_frmagendavisitante.Acessar Tela Agendamento de Visitas - Visitante (Inclusão)

#Visitado	
E clicar no botão: Buscar dados externos do campo: Código * (Visitado)
  resource_btn.Clicar No Botão Buscar dados externos (Colaborador)

E visualizar a tela: Colaborador (Filtro)
  resource_cnscolab.Acessar Tela: Colaboradores (Consulta e Filtro)

E preencher o campo: Nome "${NOME}"
  resource_cnscolab.Preencher o campo Nome "${NOME}"

E clicar no botão: Pesquisa
  resource_btn.Clicar No Botão Pesquisa

E visualizar a tela: Colaborador (Consulta)
  resource_cnscolab.Acessar Tela: Colaboradores (Consulta e Filtro)

E clicar no campo: Buscar rápida e pesquisar por "${BUSCAR}"
  resource_btn.Clicar No Campo: Busca Rápida "${BUSCAR}"

E clicar no botão: Selecionar esta linha (Visuitado)
  resource_btn.Clicar No Botão Selecionar esta linha

E mais uma vez visualizar a tela: Agendamento de Visitante (Inclusão)
  resource_frmagendavisitante.Acessar Tela Agendamento de Visitas - Visitante (Inclusão)
 
#Visitante	
E clicar no botão: Buscar dados externos do campo: Código * (Visitante)
  resource_btn.Clicar No Botão Buscar dados externos (COD_VISITANTE)

E visualizar a tela: Visitante (Consulta)
  resource_consvisitantecorpcad.Acessar Tela: Visitante (Consulta)

E no campo: Buscar rápida pesquisar por "${BUSCAR}" (Visitante)
  resource_btn.Clicar No Campo: Busca Rápida "${BUSCAR}"

E clicar no botão: Selecionar esta linha (Visitante)
  resource_btn.Clicar No Botão Selecionar esta linha

E novamente visualizar a tela: Agendamento de Visitante
  resource_frmagendavisitante.Acessar Tela Agendamento de Visitas - Visitante (Inclusão)

E clicar no botão: Buscar dados externos do campo: Código (Veiculo)
  resource_btn.Clicar No Botão Buscar dados externos (VEICULO)

E visualizar a tela: Veículos (Consulta)
  resource_cnsveiculos.Acessar Tela Cadastro Veículos - Consulta

E clicar no botão: Selecionar esta linha (Veículo)
  resource_btn.Clicar No Botão Selecionar esta linha

E mais uma vez visualizar a tela: Agendamento de Visitante 
  resource_frmagendavisitante.Acessar Tela Agendamento de Visitas - Visitante (Inclusão)

E clicar no botão: Incluir
  resource_btn.Clicar no Botão Incluir o Registro

E visualizar a tela: Agendamento de Visitante (Edição)
  resource_frmagendavisitante.Acessar Tela Agendamento de Visitas - Visitante (Atualização)