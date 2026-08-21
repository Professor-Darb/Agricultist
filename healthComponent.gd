extends Node2D
class_name healthComponent

#sets up signals for changing health or dying
signal healthDepleated
signal healthChanged(currentHealth:int)

#sets up Variables
@export var maxHealth: =100
@onready var currentHealth: int = maxHealth

#allows you to change health and checks if entity is dead
func setHealth (ammount:int):
	currentHealth+=ammount
	healthChanged.emit(currentHealth)
	if currentHealth <=0:
		healthDepleated.emit()

#gets the value for the current health and returns it
func getHealth():
	return currentHealth
