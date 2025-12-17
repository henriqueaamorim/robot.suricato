*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_abaescala.robot
Resource        ../../../../resource/app/resource_frmescalahorarios.robot
Resource        ../../../../resource/app/resource_frmescala.robot
Resource        ../../../../resource/app/resource_cons_horarioEscala.robot
Resource        ../../../../resource/app/resource_consescalacad.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${OBJETIVO}    Verificar a funcionalidade dos campos na tela Consulta Horário Escala (Filtro)

*** Test Cases ***
Testcase: Verificar a funcionalidade dos campos na tela Consulta Horário Escala (Filtro)
  [Tags]  VERIFY  POPULATED  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu Estrutura | Empresa | Escala | Cadastro de Escala
  Então devo visualizar a tela: Consulta de Escalas
  E clicar no botão: Editar o Registro "1"
  Então devo visualizar a tela: Cadastro de Escala (Atualização)
  E clicar na aba Horários
  E eu visualizar a tela: Relacionamento Horários X Escala (Atualização)
  Ao clicar no botão: Buscar Dados Externos para Horário
  Então devo visualizar a tela: Consulta Horário Escala (Busca Externa)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Consulta Horário Escala (Filtro)
  E preencher o campo Código do Horário "1"
  #E preencher o campo Descrição "abc"
  E clicar novamente no botão: Pesquisar Registros
  Então devo visualizar a tela: Consulta Horário Escala (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu Estrutura | Empresa | Escala | Cadastro de Escala
  resource_mnu.Clicar No Menu Estrutura | Empresa | Escala | Cadastro de Escala

Então devo visualizar a tela: Consulta de Escalas
  resource_consescalacad.Acessar Tela Consulta de Escalas

E clicar no botão: Editar o Registro "${NUM}"
  resource_btn.Clicar No Botão Editar o Registro "${NUM}"

Então devo visualizar a tela: Cadastro de Escala (Atualização)
  resource_frmescala.Acessar Tela Cadastro de Escala (Atualização)

E clicar na aba Horários
  resource_abaescala.Clicar Na Aba Horários

E eu visualizar a tela: Relacionamento Horários X Escala (Atualização)
  resource_frmescalahorarios.Acessar Tela Relacionamento Horários X Escala (Atualização)

Ao clicar no botão: Buscar Dados Externos para Horário
  resource_frmescalahorarios.Clicar No Botão Buscar Dados Externos Para Horário

Então devo visualizar a tela: Consulta Horário Escala (Busca Externa)
  resource_cons_horarioEscala.Acessar Tela Consulta Horário Escala (Busca Externa)

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Consulta Horário Escala (Filtro)
  resource_cons_horarioEscala.Acessar Tela Consulta Horário Escala (Filtro)
  
E preencher o campo Código do Horário "${COD}"
  resource_cons_horarioEscala.Preencher o campo Código do Horário "${COD}"
  
E preencher o campo Descrição "${DESC}"
  resource_cons_horarioEscala.Preencher o campo Descrição "${DESC}"

E clicar novamente no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior) 