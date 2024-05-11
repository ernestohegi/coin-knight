extends CanvasLayer

@onready var label = %Label

# Called when the node enters the scene tree for the first time.
func update_score(newScore):
	label.text = 'Coins: ' + str(newScore)
