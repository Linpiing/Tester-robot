*** Setting ***
Library    SeleniumLibrary

*** Variables ***
${username}    user1
${password} =    pass


*** Test Cases ***
Login Susscess With User1
    Open Browser And Click Login Link
    Login Suscess With User1    user1    
    Click Button     Logout
    Click Element    xpath://*[@id="NavbarHeaderLink"]
    


    Sleep    6s
*** Keywords ***
Open Browser And Click Login Link
    Open Browser                 https://acetoys.uk/our-story    Chrome
    Click Element                id=LoginLink    
    Element Should Be Visible    xpath:/html/body/div/div/div[2]/form/button

Login Suscess With User1
    [Arguments]    ${user}    ${pass}=pass
    Input Text        css=#username    ${username}    
    Input Password    css=#password    ${password}    
    Click Button      xpath:/html/body/div/div/div[2]/form/button