*** Setting ***
Library    SeleniumLibrary
# Library    WebDriverManager


*** Variables ***
${username}    admin
${password}    P@ssw0rd
${TEXT_TO_ENTER}   Process Test(AutomationTest)
${TEXT_ENTER_PATH}  Test Data
${clear}   false


*** Keywords ***
Open Browser And Click Login Link
    Open Browser                 https://edm.frappet.synology.me/admin    Chrome

Login User Page 
    [Arguments]    ${user}    ${pass}=pass
    Sleep    1s
    Input Text        css=#username    ${username}    
    Input Password    css=#password    ${password}    
    Click Button                    id=kc-login
    
# Logout User  #Logout Process
#     sleep   2s
#     Click Button    css=button[aria-label='ขยาย']
#     Click Element    xpath=/html/body/div[2]/div

*** Test Cases ***
Open Browser
    Open Browser And Click Login Link

Login Susscess 
    Login User Page    user1

    
# Logout User Process  #Logout Process
#     Logout User






    Sleep    6s

