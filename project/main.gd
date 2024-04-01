extends Control

var window: JavaScriptObject
onready var _henry_jso = JavaScript.create_callback(self,"_henry")

func _on_MessageSend_pressed():
	pass

func _ready():
	print("gd. _ready()")
	window = JavaScript.get_interface("window")
	print(window,_henry_jso)
	window.gd_to_js(_henry_jso)

func _henry():
	var message = $m/v/MessageEdit.text
	print("gd. Sending message '"+message+"'")
	#window.do_alert(message)

