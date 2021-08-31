*** Settings ***
Library				SeleniumLibrary

*** Keywords ***
Say Hello
	Log To Console	This is say hello

*** Variables ***	
${dietdiary2}			https://dietdiary2-6ace2.web.app/add-food
${google}				http://www.google.com
${other}				file:///E:/robot_framwork/ep01/ep01/ep01_small_excercise.html

*** Test cases ***
Test Case1 Open Browser
	Open Browser	${other}		browser=chrome	
	Element Text Should Be			xpath=//h1			Basic Assignment For EP01 - Basic Robot Framework		

Test Case2 Input Username
	Element Text Should Be		xpath=//div				Username:
	Input Text					id=username-box			chinchai		

Test Case2 Input Password
	Element Text Should Be		xpath=//div[@v="password"]				Password:
	Input Text					xpath=//div[@v="password"]/input		chinchai1997	

Test Case3 Input Nickname
	Element Text Should Be		xpath=//div[3]								Nickname:
	Input Text					xpath=//div/input[@doppio="nickname"]		chinjung

Test Case4 Select
	Element Text Should Be		xpath=//option[1]		pi-off-doo 
	Element Text Should Be		xpath=//option[2]		off-pi-do
	Element Text Should Be		xpath=//option[3]		Do-pi-off
	Element Text Should Be		xpath=//option[4]		Doppio
	Select From List By Label	name=com				Doppio
	

Test Case5 Click Check Box 
	Click Element	id=op1

Test Case6 Click Button 
	Click Element	id=use-me
