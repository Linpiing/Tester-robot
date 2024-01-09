*** Setting ***
Library    SeleniumLibrary
Library    WebDriverManager

*** Variables ***
${username} =   user
${password} =    P@ssw0rd



*** Test Cases ***
Login Susscess With User1
    Open Browser And Click Login Link
    Login Suscess With User1    user1    
    Logout User 




    Sleep    6s

*** Keywords ***
Open Browser And Click Login Link
    Open Browser                 https://edm.frappet.synology.me/    Chrome


Login Suscess With User1
     [Arguments]    ${user}    ${pass}=pass
    Sleep    1s
    Input Text        css=#username    ${username}    
    Input Password    css=#password    ${password}     
    Click Button                    id=kc-login

Logout User 
    Click Element            xpath=(//i[text()='arrow_drop_down'])[1]