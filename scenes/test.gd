extends Node

var skillList:Array
var test = {
	1: "a",
	2: "2",
	3: "three",
}

func _ready():
	skillList.pick_random()
	print(test[3])  # Replace 2 with the key you want to access

	
