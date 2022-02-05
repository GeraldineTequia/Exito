*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Navegador}     chrome
${URL}     https://www.exito.com/
${correo}	maria_tequia23211@elpoli.edu.co 
${password}	Mariatequia123

*** Keywords ***
Abrir Navegador y Esperar Logo
    Open Browser    ${URL}     ${Navegador}
    Wait Until Element Is Visible   xpath=//*[@id="Trazado_7822"]
    sleep  5s

*** Test Cases ***
G001 Login Pagina Exito
    Abrir Navegador y Esperar Logo
    Click Element       xpath=//*[@id="Trazado_2182"]
    Sleep  5s
    Click Element	xpath=/html/body/div[14]/div[3]/div[2]/div/div/div/div[1]/div/div/div/div[1]/ul/li[2]/div/button/div
    Sleep  5s
    Input Text	xpath=/html/body/div[14]/div[3]/div[2]/div/div/div/div[1]/div/div/div/div/form/div[1]/label/div/input	${correo}
    Sleep  5s
    Input Text	xpath=/html/body/div[14]/div[3]/div[2]/div/div/div/div[1]/div/div/div/div/form/div[2]/div/label/div/input	${password}
    Sleep  5s
    Click Element	xpath=/html/body/div[14]/div[3]/div[2]/div/div/div/div[1]/div/div/div/div/form/div[4]/div[2]/button/div
    Sleep  5s

G002 Compra Exito
    Input Text      xpath=//*[@id="downshift-0-input"]     celulares 
    Sleep  10s
    Click Element   xpath=//*[@id="imagen"]/div/div/img[1]
    Sleep  15s
    Click Element   xpath=/html/body/div[2]/div/div[1]/div/div/div/div[2]/div/div[11]/div/section/div/div[2]/div/div/div/div/div/div/div[2]/div/div[1]/div[1]/div/div/div[8]/div/div/div/div[2]/div[2]/button/div/div
    Sleep  10s
    Sleep  20s
    Input Text      xpath=//*[@id="client-phone"]     3146813428
    Sleep  2s
    input text      xpath=//*[@id="client-new-document"]     1000414313
    Sleep  2s
    Sleep  15s
    Click Element   xpath=//*[@id="go-to-shipping"]
    sleep  8s
    Click Element   xpath=//*[@id="ship-state"]
    Sleep  2s
    Click Element   xpath=//*[@id="ship-state"]/option[2]
    Sleep  2s
    Click Element   xpath=//*[@id="ship-city"]
    Sleep  2s
    Click Element   xpath=//*[@id="ship-city"]/option[71]
    Sleep  5s
    Input Text      xpath=//*[@id="ship-street"]     castilla
    Sleep  8s
    Close Browser