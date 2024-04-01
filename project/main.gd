extends Control

var js : JavaScriptObject

func _on_MessageSend_pressed():
	var message = $m/v/MessageEdit.text
	JavaScript.eval("console.log('"+message+"');")
	print("Sending message '"+message+"'")
