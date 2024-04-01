extends Control

var js : JavaScriptObject
onready var _my_button_call = JavaScript.create_callback(self, "_on_button_call")
onready var _my_godot_call = JavaScript.create_callback(self, "_on_godot_call")
onready var window = JavaScript.get_interface("window")

func _ready():
	window.setupButtonClickEvent(_my_button_call)

func _on_MessageSend_pressed():
	var message = $m/v/MessageEdit.text
	print("Sending message '"+message+"'")
	JavaScript.eval("console.log('"+message+" (this is in JS)');")
	var window = JavaScript.get_interface("window")
	window.myFunc(message)
	window.setupCallInterval(_my_godot_call)

func _on_button_call(args):
	prints("button_call", args)
	$m/v/ResponseLabel.text += "\nClicked Button!"

func _on_godot_call(args):
	prints("godot_call", args)
