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
	Open Browser	${google}		browser=chrome	