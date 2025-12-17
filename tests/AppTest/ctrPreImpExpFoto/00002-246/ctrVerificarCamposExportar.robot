*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrPreImpExpFoto.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Importador/Exportador de Fotos
${APPNAME}     ctrPreImpExpFoto
${OBJETIVO}    Verificar todos os campos do checkbox - Exportar na tela: Importador/Exportador de Fotos
 

*** Test Cases ***
Testcase: Verificar todos os campos do checkbox - Exportar na tela: Importador/Exportador de Fotos
  [Tags]  VERIFY  246  247 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Foto | Colaborador
  Quando visualizar a tela: Importador/Exportador de Fotos
  E verificar o campo: Operação
  E setar a opção: Exportar
  Então devo verificar o campo: Empresa
  E verificar o campo: Tipo do Colaborador
  E verificar o campo: Cód. Matricula
  E verificar o campo: Tipo de Foto
  E verificar o campo: Tipo de Exportação
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Processo | Foto | Colaborador
  resource_mnu.Clicar No Menu Processo | Foto | Colaborador

Quando visualizar a tela: Importador/Exportador de Fotos
  resource_ctrPreImpExpFoto.Acessar Tela Importador/Exportador de Fotos

E verificar o campo: Operação
  resource_ctrPreImpExpFoto.Verificar o campo Operação

E setar a opção: Exportar  
  resource_ctrPreImpExpFoto.Selecionar box: Exportar

Então devo verificar o campo: Empresa
  resource_ctrPreImpExpFoto.Verificar o campo Empresa

E verificar o campo: Tipo do Colaborador
  resource_ctrPreImpExpFoto.Verificar o campo Tipo do Colaborador

E verificar o campo: Cód. Matricula
  resource_ctrPreImpExpFoto.Verificar o campo Cód. Matricula

E verificar o campo: Tipo de Foto
  resource_ctrPreImpExpFoto.Verificar o campo Tipo de Foto

E verificar o campo: Tipo de Exportação
  resource_ctrPreImpExpFoto.Verificar o campo Tipo de Exportação 

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"