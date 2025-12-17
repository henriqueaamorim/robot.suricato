*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAutorizarAcessoColaboradores.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Autorizar Acesso de Colaboradores (Filtro)
${SCREENNAME}  Autorizar Acesso de Colaboradores
${APPNAME}     cnsAutorizarAcessoColaboradores

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Autorizar Acesso de Colaboradores (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Área Restrita | Autorizar Acesso
  Quando visualizar a tela: Autorizar Acesso de Colaboradores (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo visualizar a tela: Autorizar Acesso de Colaboradores (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Empresa	
  E verificar o campo: Tipo do Colaborador	
  E verificar o campo: Cadastro
  E verificar o campo: Nome
  E verificar o campo: Permissão	
  E verificar o campo: Data Inicial	
  E verificar o campo: Hora Inicial	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Registro | Área Restrita | Autorizar Acesso
  resource_mnu.Clicar No Menu Registro | Área Restrita | Autorizar Acesso

Quando visualizar a tela: Autorizar Acesso de Colaboradores (Consulta)
  resource_cnsAutorizarAcessoColaboradores.Acessar Tela Consulta Autorizar Acesso de Colaboradores

E clicar no botão: Pesquisar Registro
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Autorizar Acesso de Colaboradores (Filtro)  
    resource_cnsAutorizarAcessoColaboradores.Acessar Tela: Autorizar Acesso de Colaboradores (Filtro)

E verificar a label: Pesquisa
    resource_cnsAutorizarAcessoColaboradores.Verificar a label Pesquisa

E verificar o campo: Empresa	
    resource_cnsAutorizarAcessoColaboradores.Verificar o campo: Empresa

E verificar o campo: Tipo do Colaborador	
    resource_cnsAutorizarAcessoColaboradores.Verificar o campo: Tipo do Colaborador

E verificar o campo: Cadastro
    resource_cnsAutorizarAcessoColaboradores.Verificar o campo: Cadastro

E verificar o campo: Nome
    resource_cnsAutorizarAcessoColaboradores.Verificar o campo: Nome

E verificar o campo: Permissão	
    resource_cnsAutorizarAcessoColaboradores.Verificar o campo: Permissão

E verificar o campo: Data Inicial	
    resource_cnsAutorizarAcessoColaboradores.Verificar o campo: Data Inicial

E verificar o campo: Hora Inicial	
    resource_cnsAutorizarAcessoColaboradores.Verificar o campo: Hora Inicial

E verificar se existe o campo Teste na tela     
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"