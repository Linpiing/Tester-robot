*** Setting ***
Library    SeleniumLibrary
# Library    WebDriverManager


*** Variables ***
${username}    admin
${password}    P@ssw0rd
${TEXT_TO_ENTER}   Process Test(AutomationTest)
${TEXT_ENTER_PATH}  Test Data
${TEXT_EDIT}    AutomationTest(Retest_Name)
${clear}   true



*** Keywords ***
Open Browser And Click Login Link
    Open Browser                 https://edm.frappet.synology.me/admin    Chrome

Login User Page 
    [Arguments]    ${user}    ${pass}=pass
    Sleep    1s
    Input Text        css=#username    ${username}    
    Input Password    css=#password    ${password}    
    Click Button                    id=kc-login
    

# Create Doucument
#     sleep   2s
#     Click Element   id=triggerFolderCreateFileItem
#     sleep   2s
#     Input Text      css=input[placeholder='กรอกชื่อ']   ${TEXT_TO_ENTER} 
#     Click Element   id=FoldeSubmit
#     sleep   2s
    

# Create File on Doucument
#     Click Element   xpath=(//div[@class='box'])[1]
#     sleep   2s
#     Click Element   id=triggerFolderCreateFileItem
#     sleep   2s
#     Input Text      css=input[placeholder='กรอกชื่อ']   ${TEXT_ENTER_PATH}
#     Click Element   id=FoldeSubmit
#     sleep   2s

Edit Doucument
    
    sleep   2s
    Click Button    css=button[data-testid='actionProcess Test(AutomationTest)/']
    sleep   2s
    Click Element   xpath=//*[@id="FileltemActionEdit"]
    sleep   1s
    Press keys      css=input[placeholder='กรอกชื่อ']   COMMAND+a
    Press keys      css=input[placeholder='กรอกชื่อ']   BACKSPACE
    # sleep   1s
    # Input Text      css=input[placeholder='กรอกชื่อ']    ${TEXT_EDIT}  
    
    


# Delete Doucument
#     sleep   2s
#     Click Button    css=button[data-testid='actionProcess Test(AutomationTest)/']
#     Click Button    css=#FileltemActiondelete



*** Test Cases ***
Open Browser
    Open Browser And Click Login Link
Login Susscess 
    Login User Page    user1

# Create Doucument File 
#     Create Doucument

# Create On Doucument
#     Create File on Doucument

# Delete Doucument Process
#     Delete Doucument

Edit Doucument Process
    Edit Doucument





    Sleep    6s

