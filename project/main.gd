extends Control

onready var window = JavaScript.get_interface("window")
onready var _henry_jso = JavaScript.create_callback(self,"_henry")
onready var _george_jso = JavaScript.create_callback(self,"_george")

func _on_MessageSend_pressed():
	pass

func _ready():
	print("gd. _ready()")
	window.button_cb = _george_jso
	print(window,_henry_jso,window.button_cb)
	window.gd_to_js(_henry_jso)

# DO NOT FORGET ARGS HERE - SILENT FAILURE OTHERWISE
func _henry(args):
	print("gd. henry",args)
	#var message = $m/v/MessageEdit.text
	#print("gd. Sending message '"+message+"'")
	#window.do_alert(message)

func _george(args):
	print("gd. george",args)
	
