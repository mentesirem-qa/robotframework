*** Variables ***

${mebis_homePage}   https://mebis.medipol.edu.tr/
#Below credentials should be updated for test user!!!
${username}         ****
${password}         ****

${loginPage_message}    Kullanıcı Girişi
${username_input}       id:KullaniciAdi
${password_input}       id:parola
${loginButton}          id:formSubmit

${uyariMesaji}          //*[@class="alert alert-warning"]

${turkishLanguage}      //*[contains(@class,"flag-icon-tr")]
${englishLanguage}      //*[contains(@class,"flag-icon-gb")]

${kullaniciMenusu}      id:dropdown-user
${solProfilMenusu}      id:mainnav-profile

${solMenuDropDown}      //*[@class="pull-right dropdown-toggle"]
${solMenu_cikis}        //*[@href="/Login/Logout" and @class="list-group-item"]