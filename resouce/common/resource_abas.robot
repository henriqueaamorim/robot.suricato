Clicar Na Aba Organograma
  ${ELEMENT}  Set Variable  id=cel2_txt

  Unselect Frame
  Select Frame  mnu_iframe

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element    ${ELEMENT}
