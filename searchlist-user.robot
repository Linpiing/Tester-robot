*** Setting ***
Library    SeleniumLibrary
# Library    WebDriverManager


*** Variables ***
${username}    user
${password}    P@ssw0rd
${TEXT_ENTER}   pdf


*** Keywords ***
Open Browser And Click Login Link
    Open Browser                 https://edm.frappet.synology.me    Chrome

Login User Page 
    [Arguments]    ${user}    ${pass}=pass
    Sleep    1s
    Input Text        css=#username    ${username}    
    Input Password    css=#password    ${password}
    Click Button                    id=kc-login

Search List
    sleep   1s
    Click Element   xpath=(//i[text()='arrow_drop_down'])[2] 
    Input Text      css=input[placeholder='เอกสาร']  ${TEXT_ENTER}
    Click Button    id=submitSearch

# Search List Advanced
#     sleep   1s
#     Input Text      css=input[placeholder='เอกสาร']  ${TEXT_ENTER}
#     Click Element   xpath=(//button[contains(@class,'q-btn q-btn-item')])[2]


*** Test Cases ***
Open Browser
    Open Browser And Click Login Link

Login Susscess 
    Login User Page    user1

Search Data
    Search List 

# Search Data Advanced
#     Search List Advanced
    


    Sleep    6s

