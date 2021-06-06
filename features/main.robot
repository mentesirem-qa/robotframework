*** Settings ***
Resource  ../stepsDefinition/steps.robot
Resource  ../variables/pageVariables.robot

Library  SeleniumLibrary

*** Test Cases ***
Kullanıcı MEBIS Sayfasini Acabilir
    Given Browser acilir    edge
    When Web sayfasi acilir  ${mebis_homePage}
    Then Login ekrani gorulur

Uyarı mesajı acilista gorulur ve sonra kaybolur
    Given Login ekrani gorulur
    Then Uyarı mesajı gorulur
    And Uyarı mesajı kaybolur

Ingilizce dili secilirse sayfa ingilizce gorunur
    Given Login ekrani gorulur
    When Dil secenegi secilir  ${englishLanguage}
    Then Sayfa beklenen metni icerir    Account Login
    And Sayfa beklenen metni icerir     Sign In to your account
    Then Uyarı mesajı gorulur
    And Uyarı mesajı kaybolur

Turkce dili secilirse sayfa turkce gorunur
    When Dil secenegi secilir  ${turkishLanguage}
    Then Sayfa beklenen metni icerir    Kullanıcı Girişi
    And Sayfa beklenen metni icerir     Hesabınızla giriş yapınız
    Then Uyarı mesajı gorulur
    And Uyarı mesajı kaybolur

Hatalı Bilgiler ile giris yapilamaz
    Given Login ekrani gorulur
    When Kullanici adi girilir      hataliKullanici
    And Kullanici parolasi girilir  hataliParola
    And Buton tiklanir  ${loginButton}
    Then Hata mesaji gorulur    Kullanıcı bilgilerinizi kontrol ediniz !

Eger kullanici bilgileri dogru ise login olunabilir
    Given Login ekrani gorulur
    When Kullanici adi girilir      ${username}
    And Kullanici parolasi girilir  ${password}
    And Buton tiklanir  ${loginButton}
    Then Kullanici girisi yapilabilir

Kullanici cikis yapabilir
    When Buton tiklanir  ${solMenuDropDown}
    Then Cikis yapilir
    Then Login ekrani gorulur