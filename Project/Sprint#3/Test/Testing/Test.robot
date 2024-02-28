*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Testcase 01
    Open Browser    http://localhost:8080/th/    chrome
    Maximize Browser Window
    Sleep           1s  
    Click Element    xpath=//a[@title="English (English)"]
    Sleep           1s   
    Click Element    xpath=//a[@title="Bahasa Indonesia (Indonesian)"]
    
*** Test Cases ***
Testcase 02
    Open Browser    http://localhost:8080/th/    chrome
    Maximize Browser Window
    Sleep           1s   
    Click Element    xpath=//a[@title="English (English)"]
    Sleep           1s   
    Element Text Should Be    class:products-section-title    POPULAR PRODUCTS 
    Close Browser

 
*** Test Cases ***
Testcase 03
    Open Browser    http://localhost:8080/th/    chrome
    Maximize Browser Window
    Sleep           1s   
    Click Element    xpath=//a[@title="Bahasa Indonesia (Indonesian)"]
    Element Text Should Be    class:products-section-title    POPULER
    Close Browser


*** Test Cases ***
Testcase 04
    Open Browser    http://localhost:8080/th/    chrome
    Maximize Browser Window
    Sleep           1s   
    Click Element    xpath=//a[@title="English (English)"]
    Sleep           1s   
    Click Element    xpath=//a[@title="ภาษาไทย (Thai)"]
    Element Text Should Be    class:products-section-title    สินค้ายอดนิยม
    Close Browser

*** Test Cases ***
Testcase 05
    Open Browser    http://localhost:8080/th/    chrome
    Maximize Browser Window
    Sleep           1s
    Click Element    xpath=//img[@alt='กระเป๋า KKU']
    Sleep           1s
    Click Element    xpath=//a[@title="English (English)"]
    Element Text Should Be    class:h1   KKU BAG
    Element Text Should Be    class:add     ADD TO CART

*** Test Cases ***
Testcase 06
    Open Browser    http://localhost:8080/th/    chrome
    Maximize Browser Window
    Sleep           1s
    Click Element    xpath=//img[@alt='กระเป๋า KKU']
    Sleep           1s
    Click Element    xpath=//a[@title="Bahasa Indonesia (Indonesian)"]
    Element Text Should Be    class:h1  KKU TAS
    Element Text Should Be    class:add     BELI
*** Test Cases ***
Testcase 07
    Open Browser    http://localhost:8080/th/    chrome
    Maximize Browser Window
    Sleep           1s
    Click Element    xpath=//img[@alt='กระเป๋า KKU']
    Sleep           1s
    Click Element    xpath=//a[@title="English (English)"]
    Element Text Should Be    class:h1   KKU BAG
    Element Text Should Be    class:add     ADD TO CART
    Click Element    xpath=//a[@title="ภาษาไทย (Thai)"]
    Element Text Should Be    class:h1   กระเป๋า KKU
    Element Text Should Be    class:add     หยิบใส่ตะกร้า
    Click Element    xpath=//a[@title="Bahasa Indonesia (Indonesian)"]
    Element Text Should Be    class:h1  KKU TAS
    Element Text Should Be    class:add     BELI
