extends Node

var levelOneComplete = false
var levelTwoComplete = false
var levelThreeComplete = false
var levelFourComplete = false
var levelFiveComplete = false
var currentLevel = 0

func changeCurrentLevelToOne():
	currentLevel = 1
	
func changeCurrentLevelToTwo():
	currentLevel = 2
	
func changeCurrentLevelToThree():
	currentLevel = 3
	
func changeCurrentLevelToFour():
	currentLevel = 4
	
func changeCurrentLevelToFive():
	currentLevel = 5
	

func finishLevelOne():
	levelOneComplete = true
	
func finishLevelTwo():
	levelTwoComplete = true
	
func finishLevelThree():
	levelThreeComplete = true
	
func finishLevelFour():
	levelFourComplete = true
	
func finishLevelFive():
	levelFiveComplete = true
	




func _ready() -> void:
	pass # Replace with function body.


func _process(delta: float) -> void:
	pass
