*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem
Library  String

Resource  ../variables/pageVariables.robot

*** Keywords ***
Browser acilir
    [Arguments]  ${browser}
    open browser     browser=${browser}

Web sayfasi acilir
    [Arguments]  ${page}
    go to   ${page}

Login ekrani gorulur
    Wait Until Page Contains        ${loginPage_message}
    Wait Until Element Is Visible   ${username_input}
    Wait Until Element Is Visible   ${password_input}
    Wait Until Element Is Visible   ${loginButton}

Kullanici adi girilir
    [Arguments]  ${username}
    Input text  ${username_input}   ${username}

Kullanici parolasi girilir
    [Arguments]  ${password}
    Input text  ${password_input}   ${password}

Buton tiklanir
    [Arguments]  ${button}
    Click element   ${button}

Hata mesaji gorulur
    [Arguments]  ${message}
    Wait Until page contains    ${message}

Sayfa beklenen metni icerir
    [Arguments]  ${text}
    Wait Until page contains    ${text}

Dil secenegi secilir
    [Arguments]  ${language}
    Click element   ${language}

Uyarı mesajı gorulur
    Wait until element is visible   ${uyariMesaji}

Uyarı mesajı kaybolur
    Wait until element is not visible   ${uyariMesaji}  15

Kullanici girisi yapilabilir
    wait until element is not visible   ${loginButton}
    wait until element is visible   ${solProfilMenusu}  15
    Location should contain     mebis.medipol.edu.tr/Kullanici
    Sleep   5

Cikis yapilir
    wait until element is visible   ${solmenu_cikis}
    Click element   ${solMenu_cikis}
