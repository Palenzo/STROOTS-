extends Node2D

var gameManagerPacked 
var gameManagerUnpacked

func _ready():
	gameManagerPacked = preload("res://scenes/GameManager.tscn")
	gameManagerUnpacked = gameManagerPacked.instance()

func _on_StartButton_pressed():
	get_node("StartButton").visible = false
	get_node("QuitButton").visible = false
	get_node("GameName").visible = false
	get_node("Pepsi").visible =  false
	get_node("TataYumside").visible =  false
	get_node("Lavazza-Logosvg").visible =  false
	add_child(gameManagerUnpacked)

func _on_QuitButton_button_down():
	get_tree().quit()
