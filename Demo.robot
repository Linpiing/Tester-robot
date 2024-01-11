*** Setting ***
Library    SeleniumLibrary
# Library    WebDriverManager


*** Variables ***
${username}    admin
${password}    P@ssw0rd
${TEXT_FIELD_XPATH}    xpath=/html/body/div/div/div/div/main/section[2]/div[2]/div/div/div[2]/div[2]/aside/div/form/section[1]/label/div
${TEXT_TO_ENTER}   Test Data 
${TEXT_ENTER_PATH}  Test Data 2
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
    

# Search List Data   
#     # sleep   2s
#     # Input Text  ${TEXT_FIELD_XPATH} ${TEXT_TO_ENTER}  ${clear}
#     sleep   2s
#     Click Button                    id=submitSearch

# Dropdown Selection
#     select from list by label   searchField     ชื่อเรื่อง
#     sleep   4s
#     select from list by index   searchField     2

Create Doucument
    sleep   2s
    Click Element   id=triggerFolderCreateFileItem
    sleep   2s
    Input Text      css=input[placeholder='กรอกชื่อ']   ${TEXT_TO_ENTER} 
    Click Element   id=FoldeSubmit
    sleep   2s
    

Create File on Doucument
    Click Element   xpath=(//div[@class='box'])[1]
    sleep   2s
    Click Element   id=triggerFolderCreateFileItem
    sleep   2s
    Input Text      css=input[placeholder='กรอกชื่อ']   ${TEXT_TO_ENTER}
    Click Element   id=FoldeSubmit
    sleep   2s


*** Test Cases ***
Open Browser
    Open Browser And Click Login Link
Login Susscess 
    Login User Page    user1
# Search Data    
#     # Wait Until Element Is Visible    ${ELEMENT_XPATH}    timeout=10s
#     Search List Data

# Dropdown Select
#     Dropdown Selection

Create Doucument File 
    Create Doucument

Create On Doucument
    Create File on Doucument






    Sleep    6s

