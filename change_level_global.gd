extends Node

var levelOneComplete = true
var levelTwoComplete = true
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
	pass


func _process(delta: float) -> void:
	pass
