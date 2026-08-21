extends Control
#sets the health component of entity and the max hp 
@export var healthComp: healthComponent
var maxHp:int

#sets the max Hp of the health bar
func _ready() -> void:
	maxHp= healthComp.currentHealth
	%ProgressBar.max_value=maxHp

# When the health change signal on entity is used it will be sent to this healthbar
func _on_health_component_health_changed(currentHealth):
	%ProgressBar.value=float(currentHealth)
