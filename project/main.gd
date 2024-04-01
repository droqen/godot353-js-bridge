extends Control

var js : JavaScriptObject

func _on_MessageSend_pressed():
	var message = $m/v/MessageEdit.text
	print("Sending message '"+message+"'")
	JavaScript.eval("console.log('"+message+" (this is in JS)');")
	var window = JavaScript.get_interface("window")
	window.myFunc(message)
	
