extends CanvasLayer

@onready var label = %Label
@onready var heart = $Node2D/Heart
@onready var heart_2 = $Node2D/Heart2
@onready var heart_3 = $Node2D/Heart3

const player_manager = preload("res://resources/player_manager.tres")

func _ready():
	heart.visible = true
	heart_2.visible = true
	heart_3.visible = true
	
	update_lives(player_manager.get_lives())
	
func update_score(newScore):
	label.text = 'Coins: ' + str(newScore)

func update_lives(lives_left):
	if lives_left <= 2:
		heart_3.hide()
	if lives_left <= 1:
		heart_2.hide()
	if lives_left == 0:
		heart.hide()
