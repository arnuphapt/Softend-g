*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Test change all lang
    Open Browser    http://localhost:8080/gb/    chrome
    Maximize Browser Window
    Sleep           1s  
    Go To    http://localhost:8080/th/
    Sleep           1s   
    Go To    http://localhost:8080/id/

Test Category lang
    Open Browser    http://localhost:8080/gb/    chrome
    Maximize Browser Window
    Sleep           1s   
    Go To    http://localhost:8080/gb/3-clothes
    Sleep           1s   
    Go To    http://localhost:8080/th/3-clothes
        Sleep           1s  
    Go To    http://localhost:8080/id/3-clothes


Test Product lang
    Open Browser    http://localhost:8080/gb/    chrome
    Maximize Browser Window
    Sleep           1s   
    Go To    http://localhost:8080/gb/clothes/1-1-hummingbird-printed-t-shirt.html#/1-size-s/8-color-white
    Sleep           1s   
    Go To    http://localhost:8080/th/clothes/1-1-hummingbird-printed-t-shirt.html#/1-size-s/8-color-white
        Sleep           1s   
    Go To    http://localhost:8080/id/clothes/1-1-hummingbird-printed-t-shirt.html#/1-size-s/8-color-white

Test login lang
    Open Browser    http://localhost:8080/gb/    chrome
    Maximize Browser Window
    Click Element    class:user-info
    Go To    http://localhost:8080/gb/login?back=http%3A%2F%2Flocalhost%3A8080%2Fgb%2F
    Sleep    1s
    Go To    http://localhost:8080/th/%E0%B9%80%E0%B8%82%E0%B9%89%E0%B8%B2%E0%B8%AA%E0%B8%B9%E0%B9%88%E0%B8%A3%E0%B8%B0%E0%B8%9A%E0%B8%9A?back=http%3A%2F%2Flocalhost%3A8080%2Fgb%2F
    Sleep    1s
    Go To    http://localhost:8080/id/login?back=http%3A%2F%2Flocalhost%3A8080%2Fgb%2F    